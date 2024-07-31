
find *-* -name update.sh | \
    sed 's/\/update.sh//' | \
    awk '{print "( cd "$0"; bash ./update_generic.sh '$*' )"}' | \
    /bin/bash

mysqldump --no-data ca_hhs | grep -v '^/' > tables.sql

