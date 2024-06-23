
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "--no-fetch" ]; then

    uuid1="e89100fd-1f1d-4a37-8205-d588aa42e5a1"
    uuid2="63499f73-feba-43f2-a364-7188d5cf7728"

    /bin/rm -f *.zip *.zip.[0-9]*

    echo "fetching..."

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/licensed-facility-crosswalk-nox9em.zip"

    /bin/rm -f *.json *.xls *.xlsx

    unzip licensed-facility-crosswalk-nox9em.zip
fi

# do nothing?

