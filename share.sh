
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo "Exports all tables needed by OCA apps to the OCA server."
    echo ""
    echo "--dry-run will show you what tables will move, but not move them."
    echo ""
    exit
fi

echo "select table_name from csv_sources where share = 1;" | \
    ssh opencal mysql --skip-column-names ca_hhs_meta | \
    sed 's/ *//g' | \
    awk '{print "mysqldump ca_hhs "$0" | ssh opencal mysql ca_hhs"}' > /tmp/share.sql

if [ "$1" = "--dry-run" ]; then
    echo ""
    cat /tmp/share.sql
    echo ""
    exit
else
    cat /tmp/share.sql | bash -vx
fi

