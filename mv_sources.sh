
for d in $*; do

    if [ -d $d ]; then
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
