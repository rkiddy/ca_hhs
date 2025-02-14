
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

if [ "$1" != "" ] && [ "$1" != "--no-fetch" ] &&
                     [ "$1" != "--only-fetch" ] && [ "$1" != "--skip-fetch-special-instead" ]; then
    show_usage="yes"
fi

if [ "$1" = "--skip-fetch-special-instead" ]; then
    skip_special="yes"
else
    skip_special="no"
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

ds=`pwd | awk 'BEGIN{FS="/"}{print $NF}'`

echo ""
echo "Dataset: $ds"

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

if [ $fetch = "yes" ]; then

    if [ -f fetch_special_instead.sh ] && [ $skip_special != "yes" ]; then
        echo "executing fetch_special_instead.sh..."
        HOME=/home/ray bash fetch_special_instead.sh

        if [ $? -ne 0 ]; then
            echo "ERROR from fetch_special_instead.sh"
            exit 1
        fi
    else

        if [ -f fetch_special_before.sh ]; then
            echo "executing fetch_special_before.sh..."
            HOME=/home/ray bash fetch_special_before.sh

            if [ $? -ne 0 ]; then
                echo "ERROR from fetch_special_before.sh"
                exit 1
            fi
        fi

        echo "updating deets..."

        source ./deets.sh

        ( cd .. ; ./.venv/bin/python update_deets.py --id $id )

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
            exit 1
        fi

        # /bin/rm -f sources/*

        unzip -o *.zip

        if [ -f fetch_special_after.sh ]; then
            echo "executing fetch_special_after.sh..."
            HOME=/home/ray bash fetch_special_after.sh

            if [ $? -ne 0 ]; then
                echo "ERROR from fetch_special_after.sh"
                exit 1
            fi
        fi
    fi
fi

if [ $process = "no" ]; then
    exit
fi

source ./deets.sh

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
    HOME=/home/ray bash exec_special_instead.sh

    eval $upy ../update_time.py --result $?

else

    if [ -f exec_special_before.sh ]; then
        echo "executing exec_special_before.sh..."
        HOME=/home/ray bash exec_special_before.sh

        if [ $? -ne 0 ]; then
            echo "ERROR from exec_special_before.sh"
            exit 1
        fi
    fi

    if [ "$script" != "none" ] && [ -f "$script.py" ]; then

        echo "executing $script.py..."

        eval $py $script.py
        r0=$?
    else
        r0=0
    fi

    # Locate any processable source files.
    #
    ( echo "select s1.file_name, s1.table_name from datasets d1, sources s1";
      echo " where d1.pk = s1.ds_pk and auto_run = 1 and d1.name = '$id' and s1.file_name like '%%.csv';" ) | \
        ssh opencal mysql --skip-column-names ca_hhs_meta 2>/dev/null > /tmp/csv_$$.txt

    if [ -s /tmp/csv_$$.txt ]; then

        echo "import csv files..."

        eval $py ../csv_import.py --file /tmp/csv_$$.txt
        r1=$?
    else
        r1=0
    fi

    # Locate any processable source files.
    #
    ( echo "select s1.file_name, s1.sheet_name, s1.table_name from datasets d1, sources s1";
      echo " where d1.pk = s1.ds_pk and auto_run = 1 and d1.name = '$id' and s1.file_name like '%%.xlsx';" ) | \
        ssh opencal mysql --skip-column-names ca_hhs_meta 2>/dev/null > /tmp/xlsx_$$.txt

    # TODO I am adding update twice if both csv and xlsx. I need to combine the result values. Just add them?
    #
    if [ -s /tmp/xlsx_$$.txt ]; then

        echo "import xlsx files..."

        eval $py ../excel_import.py --file /tmp/xlsx_$$.txt
        r2=$?
    else
        r2=0
    fi

    # report overall success.
    eval $upy ../update_time.py --result $(($r0+$r1+$r2))

    if [ $(($r0+$r1+$r2)) -ne 0 ]; then
        exit 1
    fi

    HOME=/home/ray bash ../mv_sources.sh .

    eval $upy ../update_sources.py

    if [ -f exec_special_after.sh ]; then
        echo "executing exec_special_after.sh..."
        HOME=/home/ray bash exec_special_after.sh
    fi
fi

HOME=/home/ray bash ../share.sh $id

# TODO I really should be reporting the result of all of these here, not previously.

# something here can do a 'is everything really ok?' check.
#
#bash $HOME/ok.sh
#rz=$?

