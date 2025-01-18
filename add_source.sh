
usage="usage: bash add_source.sh <dataset name> ( <table name> | NEW ) <file name> [ <sheet name> ]"

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo $usage
    echo ""
    echo "A helpful utility script. If the table name is NEW, then it will be generated fthrom the file."
    echo ""
    exit
fi

if [ "$1" = "" ] || [ "$2" = "" ] || [ "$3" = "" ]; then
    echo ""
    echo "Missing parameters!"
    echo ""
    echo $usage
    echo ""
    exit 1
fi

ds=$1
tn=$2
fn=$3
sn=$4

# echo "dataset: $ds"
# echo "table name: $tn"
# echo "file name: $fn"
# echo "sheet name: $sn"
# echo ""

if [ "$sn" = "" ]; then
    sn="NULL"
else
    sn="'"$sn"'"
fi

if [ $tn != "NEW" ]; then
    ( echo "insert into sources (ds_pk, auto_run, share, file_name, sheet_name, table_name)"
      echo "values"
      echo "((select pk from datasets where name = '"$ds"'), 1, 0, '"$fn"', "$sn", '"$tn"');" ) | \
        ssh opencal mysql ca_hhs_meta
fi

if [ "$tn" = "NEW" ]; then
    next_tn=`echo $fn | sed 's/-/_/g' | sed 's/.xlsx//'`

    ( echo "insert into sources (ds_pk, auto_run, share, file_name, sheet_name, table_name)"
      echo "values"
      echo "((select pk from datasets where name = '"$ds"'), 1, 0, '"$fn"', "$sn", '"$next_tn"');" ) | \
        ssh opencal mysql ca_hhs_meta
fi
