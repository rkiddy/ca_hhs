
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

if [ "$1" != "--no-fetch" ]; then

    echo "fetching..."

    # Not actually done via code, but done manually, but this is how it could go.
    #

#    # if they exist
#    mv -f 20* *.json *.zip sources/ 2>/dev/null
#
#    urls = [
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/31a3237e-9894-4c86-a543-483c4ae4e307/download/2011-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/b41fb0c5-d786-4fcc-ab12-35c60e1d649a/download/2012-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/555e7b2f-9730-4ca5-bc0f-b98a9a36fa1f/download/2013-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/3566ebfc-ba65-4020-8288-7dd5e5738d12/download/2014-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/cae2ff70-83d0-4b81-be10-b3f9fe6e721a/download/2015-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/9018b776-1c9a-422b-8bda-82856c28b322/download/2016-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/d02fb8bc-cf8b-4862-8ddb-1d47d30e9ff6/download/2017-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/dbbe2ca4-2e0f-4c9c-9620-9917ace9fce7/download/2018-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/734ccb01-9b8e-4446-bb70-13718fb43a32/download/2019-hospital-chargemasters.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/95e415ee-5c11-40b9-b693-ff9af7985a94/download/chargemaster-cdm-2020r.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/857e49c2-8318-4e7f-810d-6008bc3734ab/download/chargemaster-cdm-2021.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/62675919-d304-43e2-8575-3610664e6554/download/chargemastercdm-2022.zip",
#        "https://data.chhs.ca.gov/dataset/0c315f3b-fc3c-4998-bd79-4659616c834d/resource/c56096d9-cd59-4179-958d-309110a44813/download/2023_hospital_chargemaster.zip"
#    ]
#    for url in urls:
#        wget -q $url
#
#    mv chargemaster-cdm-2020r.zip 202-hospital-chargemasters.zip
#    mv chargemaster-cdm-2021.zip 2021-hospital-chargemasters.zip
#    mv 2023_hospital_chargemaster.zip 2023-hospital-chargemasters.zip
#
#    unzip all

else
    # mv sources/* .
fi

echo "into data..."

bash files.sh

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python common25.py

# mv -f 20* *.json *.zip sources/ 2>/dev/null

