
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "" ] && [ "$1" != "--no-fetch" ]; then
    echo ""
    echo "Received bad parameter: \"$1\""
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]]"
    echo ""
    exit
fi

uuid1="d1ac90ad-d583-426f-8012-828743cf4ac1"
uuid2="fef8fe44-95a5-42e9-b7e5-cdaa6dbb043c"
id="hospital-inpatient-diagnosis-procedure-and-external-cause-codes"

if [ "$1" != "--no-fetch" ]; then

    mv -f *xlsx *json *zip sources/ 2>/dev/null

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-ub9woi.zip"

    unzip $id-ub9woi.zip
else
    mv sources/* .
fi

echo "into data..."

# SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python procedures.py

/bin/rm -f sources/*

mv -f *xlsx *json *zip sources/ 2>/dev/null

