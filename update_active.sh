
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo "By default, data scripts save tables locally. This script finds the local data"
    echo "tables that are meant to be shared, perhaps because they have apps on-line for"
    echo "them, and copy the data up to the server."
    echo ""
    exit 0
fi

if [ "$1" = "" ]; then
    ls /home/ray/Projects/ca_hhs/ca_hhs_www/templates/tops/ | \
        sed 's/\-top\.html//' | \
        tr '\n' ' ' | \
        sed 's/  */ /g' | \
        awk '{print "bash /home/ray/Projects/ca_hhs/update_active.sh "$0}' | bash
fi

for ds in $*; do
    #echo "ds: $ds"
    pk=`echo "select pk from datasets where name = '"$ds"';" | mysql --skip-column-names ca_hhs_meta`
    #echo "ds_pk: $pk"
    if [ "$pk" != "" ]; then
        echo "select table_name from csv_sources where ds_pk = $pk;" | \
            mysql --skip-column-names --skip-column-names ca_hhs_meta | \
            awk '{print "mysqldump ca_hhs", $0, "| ssh opencal mysql ca_hhs"}' | bash
    fi
    #echo ""
done


