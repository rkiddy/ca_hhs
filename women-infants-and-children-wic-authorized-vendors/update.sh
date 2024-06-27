
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

if [ ! -d sources ]; then
    mkdir sources
fi

uuid1="7bba51ec-bb02-4b3f-be32-ffd9a207ba70"
uuid2="5a9a7dc5-eb80-4c37-b979-5c979f08a71b"
id="women-infants-and-children-wic-authorized-vendors"
hash="74rsjeul"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv -f *.csv *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip $id-$hash.zip
else
    mv sources/* .
fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python process.py

/bin/rm -f sources/*

mv -f *.csv *.json *.zip sources/ 2>/dev/null

