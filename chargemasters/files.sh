
# NOTE: This file causes an error. FIX:
# 2023/2023 Completed Reviews/Victor Valley Gloabl Medical Center/.~lock.106361370_Common25.xlsx#

cat <<EOF | mysql ca_hhs
drop table if exists chargemasters_files;
create table chargemasters_files (
    full_name varchar(255),
    hcai_id varchar(15),
    file_type varchar(15),
    file_ext varchar(4),
    common25 int);
EOF

echo "delete from chargemasters_files;" | mysql ca_hhs

echo "adding file names..."

find 20?? -type f | \
    sed 's/'\''/'\'\''/g' | \
    awk '{print "insert into chargemasters_files (full_name) values ('\''"$0"'\'');"}' | \
    mysql ca_hhs
echo "done"

echo "adding file extensions..."
echo "select full_name from chargemasters_files;" | \
    mysql --skip-column-names ca_hhs | \
    sed 's/'\''/'\'\''/g' | \
    awk 'BEGIN{FS="."}
         {print "update chargemasters_files set file_ext = '\''"$NF"'\'' where full_name = '\''"$0"'\'';"}' | \
    mysql ca_hhs
echo "done"

echo "adding hcai_id values..."
echo "select full_name from chargemasters_files;" | \
    mysql --skip-column-names ca_hhs | \
    sed 's/'\''/'\'\''/g' | \
    awk 'BEGIN{FS="/"}{print $NF}' | \
    awk 'BEGIN{FS="_"}{print $1}' | \
    awk '{print $1}' | \
    sort | uniq | \
    awk '{if (($0 ~ /^[0-9]*$/) && (length($0) > 8)) {
              print "update chargemasters_files set hcai_id = '\''"$0"'\''";
              print "where full_name like '\''%"$0"%'\'';"}}' | \
    mysql ca_hhs
echo "done"

echo "fixing hcai_id values..."
echo "select full_name from chargemasters_files where hcai_id is NULL;" | \
    mysql --skip-column-names ca_hhs | \
    awk 'BEGIN{FS="/"}{print $(NF-1)}' | \
    sort | uniq | \
    sed 's/'\''/'\'\''/g' | \
    awk '{print "select '\''"$0"'\'';";
          print "select distinct(hcai_id) from chargemasters_files";
          print "   where full_name like '\''%/"$0"/%'\'' and hcai_id is not NULL;";
          print "select '\'\'';"}' | \
    mysql --skip-column-names ca_hhs | \
    sed 's/'\''/'\'\''/g' | \
    awk 'BEGIN{FS="\n";RS=""}
         {if (NF == 2) {
              print "update chargemasters_files set hcai_id = '\''"$2"'\''";
              print "    where full_name like '\''%/"$1"/%'\'';"
         }}' | \
    mysql ca_hhs
echo "done"

cat <<EOF | mysql ca_hhs
-- clear values
update chargemasters_files set file_type = NULL;

-- Common25
update chargemasters_files set file_type = 'Common25'
    where full_name like '%_Common25_%' or full_name like '%_common25_%'
        or full_name like '%Common 25%';

-- Comments
update chargemasters_files set file_type = 'Comments'
    where full_name like '%_Comments_%' or full_name like '%_comments_%';
update chargemasters_files set file_type = 'Comments'
    where full_name like '%Comment%' or full_name like '%Commnets%';

-- CDM, or CMD?
update chargemasters_files set file_type = 'CDM All'
    where full_name like '%_CDM_All_%' or full_name like '%_CDM_ALL_%';
update chargemasters_files set file_type = 'CDM'
    where file_type is NULL and (full_name like '%_CDM_%' or full_name like '% CDM %');
update chargemasters_files set file_type = 'CMD' where full_name like '%CMD%';

-- PCT CHG
update chargemasters_files set file_type = 'PCT CHG'
    where full_name like '%_PCT_CHG_%';

-- Cover letters
update chargemasters_files set file_type = 'Coverletter'
    where full_name like '%Cover letter%' or full_name like '%Coverletter%';

-- pk and year columns
alter table chargemasters_files add column pk int first;
update chargemasters_files cross join (select @pk:=0) as init set chargemasters_files.pk=@pk:=@pk+1;
alter table chargemasters_files add primary key (pk);
alter table chargemasters_files add column year int after pk;
update chargemasters_files set year = cast(substr(full_name,1,4) as unsigned);
EOF

