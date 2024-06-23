
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "--no-fetch" ]; then

    uuid1="d1ac90ad-d583-426f-8012-828743cf4ac1"
    uuid2="fef8fe44-95a5-42e9-b7e5-cdaa6dbb043c"
    id="hospital-inpatient-diagnosis-procedure-and-external-cause-codes"

    /bin/rm -f *zip *zip.[0-9]*

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-ub9woi.zip"

    /bin/rm -f *.xlsx *.json

    unzip $id-ub9woi.zip
fi

# SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python procedures.py

