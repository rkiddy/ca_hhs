
uuid1="fc35be35-be26-4862-853a-4b82050ff3d4"
uuid2="fe07049b-5c95-4bc8-b6bf-a8cde21ff942"

/bin/rm -f *zip *zip.[0-9]*

wget "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/dataset-catalog-tqnrw8em.zip"

/bin/rm -f *csv *json

unzip dataset-catalog-tqnrw8em.zip

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./.venv/bin/python catalog.py

