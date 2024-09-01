
if [ "$1" == "" ] || [ $1 == "--help" ] || [ $1 == "-help" ] || [ $1 == "--h" ] || [ $1 == "-h" ]; then
    echo ""
    echo "usage: bash files_import.sh [ --all | --list-files-only | ... ]"
    echo ""
    echo "One must use one of the options above."
    echo ""
    exit
fi

if [ "$1" != "" ] && [ "$1" != "--all" ] && [ "$1" != "--list-files-only" ]; then
    echo ""
    echo "Do not understand option \""$1"\". Try --help instead."
    echo ""
    exit
fi

# Ok, we are now ready to begin:
#

if [ $1 == "--list-files-only" ] || [ $1 == "--all" ]; then

    echo ""
    echo "Files found but not in database:"
    echo ""

    echo "select full_name from chargemasters_files;" | mysql --skip-column-names ca_hhs > /tmp/files_1_$$.txt
    ls -l /tmp/files_1_$$.txt

    find 2* -type f > /tmp/files_2_$$.txt
    ls -l /tmp/files_2_$$.txt

    awk '{print $0"\tdb"}' /tmp/files_1_$$.txt > /tmp/files_3_$$.txt
    awk '{print $0"\tdisk"}' /tmp/files_2_$$.txt >> /tmp/files_3_$$.txt

    cat /tmp/files_3_$$.txt | sort | awk 'BEGIN{FS="\t";last=""}{if ($1 != last) print ""; print $0; last = $1}' > /tmp/files_4_$$.txt
    ls -l /tmp/files_4_$$.txt

    # Adding new files to chargemasters_files
    #
 

    if [ $1 != "--all" ]; then
        exit
    fi
fi

exit

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

    echo "adding oshpd_id values..."
    echo "select full_name from chargemasters_files;" | \
        mysql --skip-column-names ca_hhs | \
        sed 's/'\''/'\'\''/g' | \
        awk 'BEGIN{FS="/"}{print $NF}' | \
        awk 'BEGIN{FS="_"}{print $1}' | \
        awk '{print $1}' | \
        sort | uniq | \
        awk '{if (($0 ~ /^[0-9]*$/) && (length($0) > 8)) {
                  print "update chargemasters_files set oshpd_id = '\''"$0"'\''";
                  print "where full_name like '\''%"$0"%'\'';"}}' | \
        mysql ca_hhs

    echo "done"

    echo "fixing oshpd_id values..."
    echo "select full_name from chargemasters_files where oshpd_id is NULL;" | \
        mysql --skip-column-names ca_hhs | \
        awk 'BEGIN{FS="/"}{print $(NF)}' | \
        sort | uniq | \
        sed 's/'\''/'\'\''/g' | \
        awk '{print "select '\''"$0"'\'';";
              print "select distinct(oshpd_id) from chargemasters_files";
              print "   where full_name like '\''%/"$0"/%'\'' and oshpd_id is not NULL;";
              print "select '\'\'';"}' | \
        mysql --skip-column-names ca_hhs | \
        sed 's/'\''/'\'\''/g' | \
        awk 'BEGIN{FS="\n";RS=""}
             {if (NF == 2) {
                  print "update chargemasters_files set oshpd_id = '\''"$2"'\''";
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

# the join table is gone.
#
#    echo "joining directories and oshpd id values..."
#    echo "select dir_pk, oshpd_id from chargemasters_files where oshpd_id is not NULL;" | \
#        mysql --skip-column-names ca_hhs | \
#        sort | uniq | \
#        awk '{print "insert into chargemasters_dir_oshpd_id_joins (dir_pk, oshpd_id)";
#              print "    values ("$1", '\''"$2"'\'');"}' | \
#        mysql ca_hhs 
#
#    ( echo "select distinct(oshpd_id), dir_pk from chargemasters_files ";
#      echo "where oshpd_id is not NULL and dir_pk in (select dir_pk ";
#      echo "from chargemasters_dir_oshpd_id_joins group by dir_pk having count(0) = 1);") | \
#        mysql --skip-column-names ca_hhs | \
#        awk '{print "update chargemasters_files set oshpd_id = '\''"$1"'\'' ";
#              print "where dir_pk = "$2" and oshpd_id is NULL;"}' | \
#        mysql ca_hhs

    echo "done"

    echo "select count(0) as dirs from chargemasters_dirs;" | mysql --table ca_hhs
fi

if [ "$1" == "--types" ] || [ "$1" == "--all" ]; then

    cat /tmp/types_$$.sql | mysql ca_hhs

fi

echo "really done!"

