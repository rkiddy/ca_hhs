
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo "Exports all tables needed by OCA apps to the OCA server."
    echo ""
    echo "--dry-run will show you what tables will move, but not move them."
    echo ""
    exit
fi

if [ "$1" = "--dry-run" ]; then
    dry_run="yes"
    shift
else
    dry_run="no"
fi

if [ "$1" != "" ]; then

    ( echo "select s1.table_name from datasets d1, sources s1 "
      echo "where d1.pk = s1.ds_pk and d1.name = '"$1"' and share = 1;" ) | \
        ssh opencal mysql --skip-column-names ca_hhs_meta > /tmp/sharable_$$.txt
    if [ ! -s /tmp/sharable_$$.txt ]; then
       exit
    else
       echo "sharing:"
       cat /tmp/sharable_$$.txt | awk '{print "    "$0}'
    fi

else

    echo "select table_name from sources where share = 1;" | \
        ssh opencal mysql --skip-column-names ca_hhs_meta > /tmp/sharable_$$.txt
fi

cat /tmp/sharable_$$.txt | \
    sed 's/ *//g' | \
    awk '{print "mysqldump ca_hhs "$0" | ssh opencal mysql ca_hhs"}' > /tmp/share_$$.sh

if [ $dry_run = "yes" ]; then
    echo ""
    cat /tmp/share_$$.sh
    echo ""
    exit
else
    HOME=/home/ray bash /tmp/share_$$.sh
fi

/bin/rm -f /tmp/sharable_$$.txt /tmp/share_$$.sh

