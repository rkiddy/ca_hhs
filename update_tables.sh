
echo "dumping local ca_hhs..."
mysqldump --no-data ca_hhs | grep -v '^/' > ca_hhs_local.sql

echo "dumping remote ca_hhs..."
ssh opencal mysqldump --no-data ca_hhs | grep -v '^/' > ca_hhs_remote.sql

echo "dumping remote ca_hhs_meta..."
ssh opencal mysqldump --skip-extended-insert ca_hhs_meta | grep -v '^/' > ca_hhs_meta.sql

# NOT NOW? ./.venv/bin/python3 check_tables.py

echo "updating info from main tables and columns tables in meta..."

echo "delete from tables; delete from columns;" | ssh opencal mysql ca_hhs_meta
awk '{if ($1 == "CREATE") print "'\''"$3"'\''";
      if ($0 ~ /^  `/) print "'\''"$1"'\'', '\''"$2"'\''";
      if (($1 != "CREATE") && ($0 !~ /^  `/)) print ""}' ca_hhs_local.sql | \
sed 's/`//g' | \
awk 'BEGIN{FS="\n";RS=""}{
    print "insert into tables values ("NR", "$1", NULL);";
    for (i=2;i<=NF;i++) { print "insert into columns values ("NR", "$i");"}}' | \
ssh opencal mysql ca_hhs_meta

echo "adding row counts..."
echo "show tables;" | \
    mysql --skip-column-names ca_hhs | \
    awk '{print "select '\''"$0"'\'', count(0) from "$0";"}' | \
    mysql --skip-column-names ca_hhs | \
    awk 'BEGIN{FS="\t"}{print "update tables set rows_num = "$2" where name = '\''"$1"'\'';"}' | \
    ssh opencal mysql ca_hhs_meta

echo "syncing remote ca_hhs_meta to local..."
ssh opencal mysqldump ca_hhs_meta | mysql ca_hhs_meta

echo "generating tables-columns page..."
curl --silent 'https://opencalaccess.org/hcai/table_columns/' > /tmp/table_columns.html

echo "generating columns-tables page..."
curl --silent 'https://opencalaccess.org/hcai/column_tables/' > /tmp/column_tables.html

scp -q /tmp/column_tables.html /tmp/table_columns.html opencal:/var/www/opencalaccess_com/hcai/

