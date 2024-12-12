
# list out the tables in the database, skipping the updates table, because that is administrative.
#
echo "show tables;" | \
    mysql --skip-column-names ca_hhs | \
    awk '{print "table",$0}' > /tmp/tables_$$.txt

# read out the dataset names from finding sources directories.
#
find * -name deets.sh -print | \
    grep -v NO_DATA | \
    sed 's/\/deets\.sh//' | \
    awk '{print "dataset",$0}' > /tmp/datasets_$$.txt

# combine the tables list and datasets list
#
cat /tmp/tables_$$.txt /tmp/datasets_$$.txt tables.txt | \
    grep -v '^$' | \
    sort | uniq -c > /tmp/results_$$.txt

# display the list that we care about
#
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

# make sure there is a top file for every dataset, even if it is empty.
#
d="ca_hhs_www/templates/tops"
cat tables.txt | grep dataset | \
    awk '{print "if [ ! -f '$d'/"$2"-top.html ]; then touch '$d'/"$2"-top.html ; fi"}' | \
    bash

echo "Regenerating the ca_hhs_www/templates/main.html file"
echo ""

cat tables.txt | \
    awk '{if ($1 == "dataset") print ""; print $2}' | \
    awk 'BEGIN{FS="\n";RS=""}{print $1"\n"(NF-1)"\n"}' > /tmp/ca_hhs_work_$$.txt

# this is complex but I am pulling together output from the tables.txt file and the database. Simpler in python.
#
cat /tmp/ca_hhs_work_$$.txt | \
    awk 'BEGIN{FS="\n";RS=""}
         {print "echo \""$1"\"";
          print "echo \""$2"\"";
          print "( echo \"select from_unixtime(max(u1.updated)) as upd\";"
          print "echo \"    from updates u1, datasets d1 \""
          print "echo \"    where u1.ds_pk = d1.pk and d1.name = '\''"$1"'\'' order by upd desc limit 1\" ) | \\";
          print "    mysql --skip-column-names ca_hhs_meta | awk '\''{print $1}'\''";
          print "echo \"\""}' | \
    bash > /tmp/ca_hhs_work2_$$.txt

cat /tmp/ca_hhs_work2_$$.txt | \
    awk 'BEGIN{FS="\n";RS=""}
              {print "<tr><td>"$1"</td><td>"$2"</td><td>"$3"</td></tr>{% include \"tops/"$1"-top.html\" %}"}' >> /tmp/ca_hhs_work3_$$.html


cat <<EOF > /tmp/ca_hhs_$$_2.html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<html>
<head>
    <title>HCAI</title>
    {% include "styles.html" %}
</head>
<body>
<div style="padding: 25px 25px 25px 25px;">
<h2>Datasets:</h2>
<table class="table table-striped">
<tr><th>Dataset</th><th># Tables</th><th>Updated</th></tr>
EOF

sort < /tmp/ca_hhs_work3_$$.html >> /tmp/ca_hhs_$$_2.html

cat <<EOF >> /tmp/ca_hhs_$$_2.html
</table>
<p>or see <a href="/hcai/table_columns/">table columns</a>.
</div>
</body></html>
EOF

mv /tmp/ca_hhs_$$_2.html ca_hhs_www/templates/main.html

