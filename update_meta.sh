
echo "delete from datasets;" | mysql ca_hhs_meta

find * -prune -type d | \
    awk '{print "insert into datasets values ("NR", '\''"$0"'\'');"}' | \
    mysql ca_hhs_meta

echo "delete from extensions;" | mysql ca_hhs_meta

find */* -type f | grep -v 'py$' | \
    grep -v 'zip$' | grep -v '__' | grep -v WORK | grep -v datapackage | grep -v deets | \
    sed 's/\// /' | sed 's/\./ /g' | \
    awk '{if ($0 ~ /dictionary/) d=1; else d=0; print $1,d, tolower($NF)}' | \
    sort | uniq | \
    awk '{print "insert into extensions values";
          print "    ((select pk from datasets where name = '\''"$1"'\''), "$2", '\''"$3"'\'');"}' | \
    mysql ca_hhs_meta

