
# Not the chargemasters_hcai_ids table, as this is manually-curated and needs to be kept.
#
cat <<EOF > /tmp/all_pre_$$.sql
drop table if exists chargemasters_cdm;
drop table if exists chargemasters_column_heads;
drop table if exists chargemasters_common25;
drop table if exists chargemasters_cpt_codes;
drop table if exists chargemasters_dirs;
drop table if exists chargemasters_files;
drop table if exists chargemasters_sheets
EOF

cat <<EOF > /tmp/files_pre_$$.sql
drop table if exists chargemasters_files;
create table chargemasters_files (
    pk int,
    dir_pk int,
    year int,
    full_name varchar(255),
    hcai_id varchar(15),
    file_type varchar(15),
    file_ext varchar(63),
    common25 int);
alter table chargemasters_files add index (file_ext);
alter table chargemasters_files add index (full_name);
alter table chargemasters_files add index (dir_pk);
alter table chargemasters_files add index (hcai_id);
EOF

cat <<EOF > /tmp/files_post_$$.sql
update chargemasters_files set year = cast(substr(full_name,1,4) as signed);
update chargemasters_files set hcai_id = '106334048' where hcai_id = '106334048191300';
update chargemasters_files cross join (select  @pk:=0) as init set chargemasters_files.pk=@pk:=@pk+1;
alter table chargemasters_files add primary key (pk);
drop table if exists chargemasters_dir_hcai_id_joins;
create table chargemasters_dir_hcai_id_joins (dir_pk int, hcai_id varchar(10));
alter table chargemasters_dir_hcai_id_joins add primary key (dir_pk, hcai_id);
-- delete from chargemasters_common25;
-- delete from chargemasters_column_heads;
-- delete from chargemasters_cdm;
EOF

cat <<EOF > /tmp/dirs_pre_$$.sql
drop table if exists chargemasters_dirs;
create table chargemasters_dirs (
    pk int primary key,
    directory varchar(255),
    year int,
    hcai_id varchar(15));
update chargemasters_files set dir_pk = NULL;
delete from chargemasters_dir_hcai_id_joins;
EOF

cat <<EOF > /tmp/types_$$.sql
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
EOF

if [ "$1" == "" ]; then
    echo ""
    echo "pick one of these options:"
    echo "    --files"
    echo "    --dirs"
    echo "    --types"
    echo ""
fi

if [ "$1" == "--files" ] || [ "$1" == "--all" ]; then

    cat /tmp/files_pre_$$.sql | mysql ca_hhs

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

    echo "delete from chargemasters_files where file_ext = 'db';" | \
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

    # The HCAI id values will not end up here. They will be in the dirs table. But until then...
    #
    echo "fixing hcai_id values..."
    echo "select full_name from chargemasters_files where hcai_id is NULL;" | \
        mysql --skip-column-names ca_hhs | \
        awk 'BEGIN{FS="/"}{print $(NF)}' | \
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

    cat /tmp/files_post_$$.sql | mysql ca_hhs

    echo "done"

    echo "select count(0) as files from chargemasters_files;" | mysql --table ca_hhs
fi

if [ "$1" == "--dirs" ] || [ "$1" == "--all" ]; then

    cat /tmp/dirs_pre_$$.sql | mysql ca_hhs

    echo "adding directory names..."
    echo "select full_name from chargemasters_files;" | \
        mysql --skip-column-names ca_hhs | \
        awk 'BEGIN{FS="/"}{print substr($0,1,length($0)-length($NF)-1)}' | \
        sort | uniq | \
        sed 's/'\''/'\'\''/g' | \
        awk '{print "insert into chargemasters_dirs values ("NR", '\''"$0"'\'', "substr($0,1,4)", NULL);"}' | \
        mysql ca_hhs

    echo "linking directory names to files..."
    echo "select pk, directory from chargemasters_dirs;" | \
        mysql --skip-column-names ca_hhs | \
        sed 's/'\''/'\'\''/g' | \
        awk 'BEGIN{FS="\t"}{print "update chargemasters_files set dir_pk = "$1;
                            print " where full_name like '\''"$2"/%'\'';"}' | \
        mysql ca_hhs

    echo "joining directories and hcai id values..."
    echo "select dir_pk, hcai_id from chargemasters_files where hcai_id is not NULL;" | \
        mysql --skip-column-names ca_hhs | \
        sort | uniq | \
        awk '{print "insert into chargemasters_dir_hcai_id_joins (dir_pk, hcai_id)";
              print "    values ("$1", '\''"$2"'\'');"}' | \
        mysql ca_hhs 

    ( echo "select distinct(hcai_id), dir_pk from chargemasters_files ";
      echo "where hcai_id is not NULL and dir_pk in (select dir_pk ";
      echo "from chargemasters_dir_hcai_id_joins group by dir_pk having count(0) = 1);") | \
        mysql --skip-column-names ca_hhs | \
        awk '{print "update chargemasters_files set hcai_id = '\''"$1"'\'' ";
              print "where dir_pk = "$2" and hcai_id is NULL;"}' | \
        mysql ca_hhs

    echo "done"

    echo "select count(0) as dirs from chargemasters_dirs;" | mysql --table ca_hhs
fi

if [ "$1" == "--types" ] || [ "$1" == "--all" ]; then

    cat /tmp/types_$$.sql | mysql ca_hhs

fi

echo "really done!"

