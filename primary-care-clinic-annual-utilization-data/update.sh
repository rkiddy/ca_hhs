
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

uuid1="445db6df-3987-4145-af34-0d7cc3c0e5eb"
uuid2="/c8fa0d4d-4be7-4cac-aaad-b16c53f63bf6"
id="primary-care-clinic-annual-utilization-data"
hash="rpcpx5"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv -f *.csv *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip $id-$hash.zip
else
    mv sources/* .
fi

echo "into data..."

# SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python process.py

# /bin/rm -f sources/*

# mv -f *.csv *.json *.zip sources/ 2>/dev/null

