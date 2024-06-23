
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "--no-fetch" ]; then

    uuid1="3b5b80e8-6b8d-4715-b3c0-2699af6e72e5"
    uuid2="11747e61-6d10-45d3-b3c4-f78dcaf26241"
    id="healthcare-facility-locations"

    /bin/rm -f *.zip *.zip.[0-9]*

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-mecao_1o.zip"

    /bin/rm *.tableau *.xlsx *.csv *.pdf *.json

    unzip $1-mecao_1o.zip
fi

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python facilities.py

