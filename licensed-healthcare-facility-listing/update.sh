
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "--no-fetch" ]; then

    uuid1="59d9abe7-2664-407a-a5aa-f89a866f3381"
    uuid2="a31bba27-44bc-46b0-b516-0bcc98000636"

    /bin/rm -f *.zip *.zip.[0-9]*

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/licensed-healthcare-facility-listing-qgbca3.zip"

    /bin/rm *json *csv

    unzip licensed-healthcare-facility-listing-qgbca3.zip
fi

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python facilities.py

