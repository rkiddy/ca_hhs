
# Given a dataset name, update the list of file extensions for it in the meta database.

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo "usage: bash update_sources.sh [ <dataset name> ]"
    echo ""
    echo "If the parameter is not given and this is executed from within"
    echo "a dataset directory, that dataset's information is updated."
    echo ""
    exit
fi

if [ "$1" != "" ]; then
    ds=$1
    cd $ds
    if [ $? -ne 0 ]; then
        echo ""
        echo "Could not cd into directory: $ds"
        echo ""
        exit 1
    fi
else
    ds=`pwd | awk 'BEGIN{FS="/"}{print $NF}'`
fi

# echo "ds: $ds"

ds_pk=`echo "select pk from datasets where name = '$ds';" | ssh opencal mysql --skip-column-names ca_hhs_meta`

if [ "$ds_pk" = "" ]; then
    echo "No ds pk found for ds: $ds"
    exit
else
    # echo "ds_pk: $ds_pk"
    cd .
fi

find sources/ -type f | \
    tr '[A-Z]' '[a-z]' | \
    grep -v dictionary | \
    awk 'BEGIN{FS="."}{if ((NF > 1) && (length($NF) < 10)) print $NF}' | \
    sort | uniq -c | \
    sed 's/^ *//' | \
    awk 'BEGIN{print "delete from extensions where ds_pk = '$ds_pk';"}
         {print "insert into extensions (ds_pk, extension, num) values ";
          print "    ('$ds_pk', '\''"$2"'\'', "$1");"}' > /tmp/extensions.sql
    ssh opencal mysql ca_hhs_meta < /tmp/extensions.sql


