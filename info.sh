
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "Given the id of a dataset, will dump out the datasets table row and the csv_sources data."
    echo ""
    exit 0
fi

if [ "$1" = "" ]; then
    ds=`pwd | awk 'BEGIN{FS="/"}{print $NF}'`
else
    ds = $1
fi

echo "select * from datasets where name = '"$ds"';" | ssh opencal mysql --table ca_hhs_meta

ds=`echo "select pk from datasets where name = '"$ds"';" | ssh opencal mysql --skip-column-names ca_hhs_meta`

name=`echo "select name from datasets where name = '"$ds"';" | ssh opencal mysql --skip-column-names ca_hhs_meta`

echo ""

echo "select * from csv_sources where ds_pk = $ds;" | ssh opencal mysql --table ca_hhs_meta

echo ""

if [ -d sources ]; then
    ls -1 sources
fi

if [ -d $ds ]; then
    ls -1 $ds/sources/
fi

if [ -d ../$ds ]; then
    ls -1 ../$ds/sources/
fi

echo ""
