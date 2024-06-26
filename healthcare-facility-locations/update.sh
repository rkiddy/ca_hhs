
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]]"
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

uuid1="3b5b80e8-6b8d-4715-b3c0-2699af6e72e5"
uuid2="11747e61-6d10-45d3-b3c4-f78dcaf26241"
id="healthcare-facility-locations"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv -f *.tableau *.xlsx *.csv *.pdf *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-mecao_1o.zip"

    unzip $id-mecao_1o.zip
else

    mv sources/* .

fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python facilities.py

/bin/rm -f sources/*

mv -f *.tableau *.xlsx *.csv *.pdf *.json *.zip sources/ 2>/dev/null

