
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

uuid1="7a456555-87b9-4830-817c-72d72e628745"
uuid2="9964e86b-8796-4f59-8880-c5f736763e7b"
id="statewide-death-profiles"
hash="8eleum"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    mv -f *.csv *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip statewide-death-profiles-$hash.zip
else
    mv sources/* .
fi

echo "into data..."

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python deaths.py

/bin/rm -f sources/*

mv -f *.csv *.json *.zip sources/ 2>/dev/null

