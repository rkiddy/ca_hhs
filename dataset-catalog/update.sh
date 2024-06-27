
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

uuid1="fc35be35-be26-4862-853a-4b82050ff3d4"
uuid2="fe07049b-5c95-4bc8-b6bf-a8cde21ff942"
id="dataset-catalog"
hash="tqnrw8em"

if [ "$1" != "--no-fetch" ]; then

    mv -f *csv *json *zip sources/ 2>/dev/null

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip $id-$hash.zip
else
    mv sources/* .
fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python catalog.py

/bin/rm -f sources/*

mv -f *csv *json *zip sources/ 2>/dev/null

