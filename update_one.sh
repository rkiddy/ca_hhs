
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

( echo "select c1.file_name, c1.table_name from datasets d1, csv_sources c1";
  echo " where d1.pk = c1.ds_pk and auto_run = 1 and d1.name = '$id';" ) | \
    mysql --user=ray --password=alexna11 --skip-column-names ca_hhs_meta 2>/dev/null > /tmp/csv_$$.txt

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
        err="no"

        if [ "$hash" != "" ]; then
            echo "fetching: https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"
            if [ $? -ne 0 ]; then
                err="yes"
            fi
        else
            echo "fetching: https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id.zip"
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id.zip"

            if [ $? -ne 0 ]; then
                echo "fetching: https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-.zip"
                wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-.zip"
                if [ $? -ne 0 ]; then
                    err="yes"
                fi
            fi
        fi

        if [ $err = "yes" ]; then
            echo ""
            echo "There was some error on downloading."
            echo ""
        fi
    fi

    unzip -o *.zip

    if [ -f fetch_extra.sh ]; then
        bash fetch_extra.sh
    fi
fi

if [ -f exec_special.sh ]; then

    echo "executing special..."
    bash exec_special.sh
    if [ $? -ne 0 ]; then
        echo "exec_special led to an ERROR."
        echo ""
        exit
    fi
    echo ""
fi

if [ ! -f $script.py ] && [ -s /tmp/csv_$$.txt ]; then
    echo "yes. there are csv sources"

    SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python3 ../csv_import.py --file /tmp/csv_$$.txt
    r=$?

    /bin/rm -f sources/*

    mv -f *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
          *.web-link *.chart *.kml *.geojson *.json *-api *.zip \
          sources/ 2>/dev/null

    SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python ../update_time.py --result $r
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

    /bin/rm -f sources/*

    mv -f *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
          *.web-link *.chart *.kml *.geojson *.json *-api *.zip \
          sources/ 2>/dev/null

    SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python ../update_time.py --result $r
fi

