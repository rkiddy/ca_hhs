
usage="usage: bash add_source.sh <dataset name> <table name> <file name> [ <sheet name> ]"

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo $usage
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

( echo "insert into sources (ds_pk, auto_run, share, file_name, sheet_name, table_name)"
  echo "values"
  echo "((select pk from datasets where name = '"$ds"'), 1, 0, '"$fn"', "$sn", '"$tn"');" ) | \
    ssh opencal mysql ca_hhs_meta

