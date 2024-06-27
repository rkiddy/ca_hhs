
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

uuid1="e89100fd-1f1d-4a37-8205-d588aa42e5a1"
uuid2="63499f73-feba-43f2-a364-7188d5cf7728"
id="licensed-facility-crosswalk"
hash="nox9em"

if [ "$1" != "--no-fetch" ]; then

    mv -f *.xls *.xlsx *.json sources/ 2>/dev/null

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    /bin/rm -f *.json *.xls *.xlsx

    unzip $id-$hash.zip
fi

# do nothing?

/bin/rm sources/*

mv -f *.xls *.xlsx *.json sources/ 2>/dev/null

