
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "Move the data files scattered around in the datasets directories to the sources directories."
    echo ""
    exit 0
fi

for d in $*; do

    if [ -d $d ] && [ $d != "ca_hhs_www" ] && [ $d != "__pycache__" ]; then
        pushd . 2>/dev/null
        cd $d

        if [ $? -eq 0 ]; then
            echo $d
            mv -f *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
            *.web-link *.chart *.kml *.geojson *.json *-api *.zip \
            sources/ 2>/dev/null
        fi
        popd
    fi
done
