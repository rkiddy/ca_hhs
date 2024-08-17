
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

echo "Regenerating the ca_hhs_www/templates/main.html file"
echo ""

cat <<EOF > /tmp/ca_hhs_$$.html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<html>
<head>
    <title>HCAI</title>
    {% include "styles.html" %}
</head>
<body>
<div style="padding: 25px 25px 25px 25px;">
EOF


cat tables.txt | grep dataset | \
    awk '{print "<p>"$2": {% include \"tops/"$2"-top.html\" %}</p>"}' >> /tmp/ca_hhs_$$.html

d="ca_hhs_www/templates/tops"

cat tables.txt | grep dataset | \
    awk '{print "if [ ! -f '$d'/"$2"-top.html ]; then touch '$d'/"$2"-top.html ; fi"}' | \
    bash >> /tmp/ca_hhs_$$.html

cat <<EOF >> /tmp/ca_hhs_$$.html
</div>
</body></html>
EOF

mv /tmp/ca_hhs_$$.html ca_hhs_www/templates/main.html

