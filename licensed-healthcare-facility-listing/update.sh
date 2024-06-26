
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

uuid1="59d9abe7-2664-407a-a5aa-f89a866f3381"
uuid2="a31bba27-44bc-46b0-b516-0bcc98000636"
id="licensed-healthcare-facility-listing"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv *.xls *.xlsx *json sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-listing-qgbca3.zip"

    /bin/rm *json *csv

    unzip $id-qgbca3.zip
fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python facilities.py

/bin/rm sources/*

mv *.xls *.xlsx *json sources/ 2>/dev/null

