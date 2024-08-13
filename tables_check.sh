
echo "show tables;" | \
    mysql --skip-column-names ca_hhs | \
    awk '{print "table",$0}' > /tmp/tables_$$.txt

find * -name deets.sh -print | \
    sed 's/\/deets.sh//' | \
    awk '{print "dataset",$0}' > /tmp/datasets_$$.txt

cat /tmp/tables_$$.txt /tmp/datasets_$$.txt tables.txt | \
    grep -v '^$' | \
    sort | uniq -c > /tmp/results_$$.txt

if [ "$1" = "-v" ]; then
    cat /tmp/results_$$.txt
    echo ""
else
    cat /tmp/results_$$.txt | awk '{if ($1 != 2) print $0}'
fi

echo ""
echo "If no lines appear above, or if only 2's appear, then all is good."
echo ""
echo "Regenerating the tables.sql file"
echo ""

mysqldump --no-data ca_hhs | grep -v '\/\*' > tables.sql

