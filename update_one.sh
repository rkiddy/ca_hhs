
HOME="/home/ray/Projects/ca_hhs"

show_usage="no"

if [ ! -f ./deets.sh ]; then
    echo ""
    echo "Please put down a \"deets.sh\" file with the uuid1, uuid2, id, and hash values for downloading."
    echo ""
    exit 0
fi

if [ "$1" = "--help" ] || [ "$1" = "-help" ] || [ "$1" = "-h" ] || [ "$1" = "--h" ]; then
    show_usage="yes"
fi

if [ "$1" != "" ] && [ "$1" != "--no-fetch" ] && [ "$1" != "--only-fetch" ]; then
    show_usage="yes"
fi

if [ $show_usage = "yes" ]; then
    echo ""
    echo "A deets.sh file must exist and must contain at least \"export id=<val>\"."
    echo ""
    echo "usage: bash update.sh [ --no-fetch | --only-fetch ]"
    echo ""
    echo "These files can also affect the process, if a file exists:"
    echo ""
    echo "    fetch_special_before.sh, fetch_special_after.sh, fetch_special_instead.sh"
    echo "    - these are scripts that will be executed around the data fetching."
    echo ""
    echo "    exec_special_before.sh, exec_special_after.sh, exec_special_instead.sh"
    echo "    - these are also scripts that will be executed around the processing part."
    echo ""
    exit 0
fi

# drive this via some variables.
#
# fetch - yes, I should fetch. If not, I already have data.
# process - yes, I should process. If I am just getting data, then no.

fetch="yes"
process="yes"

if [ "$1" = "--no-fetch" ] || [ "$1" = "--fetch-no" ]; then
    fetch="no"
fi

if [ "$1" = "--only-fetch" ] || [ "$1" = "--fetch-only" ]; then
    process="no"
fi

id=`pwd | awk 'BEGIN{FS="/"}{print $NF}'`

if [ $id = 'chargemasters' ]; then
    echo ""
    echo "Aborting update to chargemasters as it cannot be automatically updated."
    echo ""
    exit 0
fi

if [ $fetch = "yes" ]; then

    if [ -f fetch_special_instead.sh ]; then
        echo "executing fetch_special_instead.sh..."
        bash fetch_special_instead.sh
    else

        if [ -f fetch_special_before.sh ]; then
            echo "executing fetch_special_before.sh..."
            bash fetch_special_before.sh
        fi

        echo "updating deets..."

        source ./deets.sh

        ( cd .. ; ./.venv/bin/python update_deets.py --id $id )

        ( echo "select c1.file_name, c1.table_name from datasets d1, csv_sources c1";
          echo " where d1.pk = c1.ds_pk and auto_run = 1 and d1.name = '$id';" ) | \
            ssh opencal mysql --skip-column-names ca_hhs_meta 2>/dev/null > /tmp/csv_$$.txt

        echo "fetching data..."

        if [ ! -d sources ]; then
            mkdir sources
        fi

        bash ../mv_sources.sh .

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
            exit
        fi

        unzip -o *.zip

        if [ -f fetch_special_after.sh ]; then
            echo "executing fetch_special_after.sh..."
            bash fetch_special_after.sh
        fi
    fi
fi

if [ $process = "no" ]; then
    exit
fi

source ./deets.sh

# Locate any csv source files.
#
( echo "select c1.file_name, c1.table_name from datasets d1, csv_sources c1";
  echo " where d1.pk = c1.ds_pk and auto_run = 1 and d1.name = '$id';" ) | \
    ssh opencal mysql --skip-column-names ca_hhs_meta 2>/dev/null > /tmp/csv_$$.txt

# Identify correct python executable to use.
#
upy="SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python"

# Sometimes we need particular things installed but usually we do not.
#
if [ -f ./.venv/bin/python ]; then
    py="SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python"
else
    py="SQLALCHEMY_SILENCE_UBER_WARNING=1 ../.venv/bin/python"
fi

if [ -f exec_special_instead.sh ]; then
    echo "executing exec_special_instead.sh..."
    bash exec_special_instead.sh
else

    if [ -f exec_special_before.sh ]; then
        echo "executing exec_special_before.sh..."
        bash exec_special_before.sh
    fi

    if [ "$script" != "none" ] && [ -f "$script.py" ]; then

        echo "executing $script.py..."

        eval $py $script.py
        r=$?

        eval $upy ../update_time.py --result $r
    fi

    if [ -s /tmp/csv_$$.txt ]; then

        echo "import csv files..."

        eval $py ../csv_import.py --file /tmp/csv_$$.txt
        r=$?

        eval $upy ../update_time.py --result $r
    fi

    if [ -f exec_special_after.sh ]; then
        echo "executing exec_special_after.sh..."
        bash exec_special_after.sh
    fi

    bash $HOME/mv_sources.sh .

    bash $HOME/update_sources.sh

    bash $HOME/share.sh $id
fi

