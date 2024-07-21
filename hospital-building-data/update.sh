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

uuid1="dab37323-5b23-492e-9328-3bcc93bd1335"
uuid2="eeea3559-f0a2-4aad-babe-43a070a569ea"
id="hospital-building-data"
hash="a_2hjpn_"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv -f *.csv *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip $id-$hash.zip
else
    mv sources/* .
fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python buildings.py

/bin/rm -f sources/*

mv -f *.csv *.json *.zip sources/ 2>/dev/null

