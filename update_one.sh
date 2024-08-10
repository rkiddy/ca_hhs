
if [ ! -f ./deets.sh ]; then
    echo ""
    echo "Please put down a \"deets.sh\" file with the uuid1, uuid2, id, and hash values for downloading."
    echo ""
    exit 0
fi

if [ "$1" = "--help" ] || [ "$1" = "-help" ] || [ "$1" = "-h" ] || [ "$1" = "--h" ]; then
    echo ""
    echo "usage: bash update.sh [ --no-fetch | --only-fetch ]"
    echo ""
    exit 
fi

if [ "$1" != "" ] && [ "$1" != "--no-fetch" ] && [ "$1" != "--only-fetch" ]; then
    echo ""
    echo "Received bad parameter: \"$1\""
    echo ""
    echo "usage: bash update.sh [ --no-fetch | --only-fetch ]"
    echo ""
    exit
fi

source ./deets.sh

if [ "$1" != "--no-fetch" ] && [ "$uuid1" != "none" ]; then

    echo "fetching..."

    if [ ! -d sources ]; then
        mkdir sources
    fi

    mv -f *.csv *.xls* *.docx *.html *.kml *.geojson *.json *-api *.zip sources/ 2>/dev/null

    if [ "$hash" != "" ]; then
        wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"
    else
        wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id.zip"
    fi

    unzip -o $id-$hash.zip
fi

if [ "$1" != "--only-fetch" ] && [ -f $script.py ]; then

    echo "into data..."

    SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python $script.py

    # get rid of any older copies of the data sources.
    #
    /bin/rm -f sources/*

    # move the current data sources to the sources directory
    #
    mv -f *.csv *.xls* *.docx *.html *.kml *.geojson *.json *-api *.zip sources/ 2>/dev/null
fi

if [ -f ./.venv/bin/python ]; then
    SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python ../update_time.py
else
    echo "No note taken of update time. No python present."
fi

