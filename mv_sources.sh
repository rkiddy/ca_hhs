
if [ "$1" = "" ] || [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "Move the data files scattered around in the datasets directories to the sources directories."
    echo ""
    exit 0
fi

for d in $*; do

    if [ -d $d ] && [ $d != "ca_hhs_www" ] && [ $d != "__pycache__" ]; then
        pushd . 1>/dev/null 2>/dev/null
        cd $d

        if [ $? -eq 0 ] && [ -d sources ]; then
            echo $d
            mv -f *.aspx *.csv *.xls* *.accdb *.docx *.html *.pdf *.pptx *.website \
            *.web-link *.chart *.kml *.geojson *.json *-api *.zip *.doc .csv .geojson .kml \
            sources/ 2>/dev/null
        fi
        popd 1>/dev/null 2>/dev/null
    fi
done
