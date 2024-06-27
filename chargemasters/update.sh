
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

uuid1="0c315f3b-fc3c-4998-bd79-4659616c834d"
uuid2="363ba835-2be1-4426-abfa-15c357de1a3e"
id="chargemasters"
hash="j5hprt"

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    # if they exist
    mv -f 20* *.json *.zip sources/ 2>/dev/null

    wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/$id-$hash.zip"

    unzip $id-$hash.zip

    # TODO these three fetches should be removed when the "all" file is fixed.
    #
    if [ ! -f "2019-hospital-chargemasters.zip" ]; then
        uuid1="0c315f3b-fc3c-4998-bd79-4659616c834d"
        uuid2="734ccb01-9b8e-4446-bb70-13718fb43a32"
        wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/2019-hospital-chargemasters.zip"
    fi

    if [ ! -f "chargemastercdm-2022.zip" ]; then
        if [ ! -f "chargemastercdm-2022.zip" ]; then
            uuid1="0c315f3b-fc3c-4998-bd79-4659616c834d"
            uuid2="62675919-d304-43e2-8575-3610664e6554"
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/chargemastercdm-2022.zip"
            mv chargemastercdm-2022.zip 2022-hospital-chargemasters.zip
        fi
        mv chargemastercdm-2022.zip 2022-hospital-chargemasters.zip
    fi

    if [ ! -f "2023-hospital-chargemasters.zip" ]; then
        if [ ! -f "2023_hospital_chargemaster.zip" ]; then
            uuid1="0c315f3b-fc3c-4998-bd79-4659616c834d"
            uuid2="c56096d9-cd59-4179-958d-309110a44813"
            wget -q "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/2023_hospital_chargemaster.zip"
        fi
        mv 2023_hospital_chargemaster.zip 2023-hospital-chargemasters.zip
    fi
else
    mv sources/* .
fi

echo "into data..."

# SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python deaths.py

/bin/rm -rf sources/*

mv -f 20* *.json *.zip sources/ 2>/dev/null

