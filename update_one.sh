
HOME="/home/ray/Projects/ca_hhs"

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

if [ `pwd` = $HOME'/chargemasters' ]; then
    echo ""
    echo "Aborting update to chargemasters as it cannot be automatically updated."
    echo ""
    exit 0
fi

id=`pwd | awk 'BEGIN{FS="/"}{print $NF}'`

( cd .. ; ./.venv/bin/python update_deets.py --id $id )

source ./deets.sh

if [ "$1" != "--no-fetch" ] && [ "$uuid1" != "none" ]; then

    echo "fetching..."

    if [ ! -d sources ]; then
        mkdir sources
    fi

    mv -f *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
          *.web-link *.chart *.kml *.geojson *.json *-api *.zip \
          sources/ 2>/dev/null

    if [ -f "fetch_special.sh" ]; then

        bash fetch_special.sh

    elif [ -f "fetch_special.txt" ]; then

        cat fetch_special.txt | awk 'BEGIN{FS="/"}
            {print "if [ ! -f \""$NF"\" ]; then wget '\''"$0"'\''; fi"}'

    else
        if [ "$hash" != "" ]; then
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"
        else
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id.zip"
        fi

        if [ $? -ne 0 ]; then
            echo ""
            echo "There was some error on downloading. Aborting script."
            echo ""
            exit 1
        fi
    fi

    unzip -o *.zip

    if [ -f fetch_extra.sh ]; then
        bash fetch_extra.sh
    fi
fi

if [ "$1" != "--only-fetch" ] && [ -f $script.py ]; then

    echo "into data..."

    if [ -f ./.venv/bin/python ]; then
        SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python $script.py
        r=$?
    else
        SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python $script.py
        r=$?
    fi

    # get rid of any older copies of the data sources.
    #
    /bin/rm -f sources/*

    # move the current data sources to the sources directory
    #
    mv -f *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
          *.web-link *.chart *.kml *.geojson *.json *-api *.zip \
          sources/ 2>/dev/null
fi

SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python ../update_time.py

