
id="$1"

if [ "$id" = "" ]; then
    echo ""
    echo "Please give me an id to check."
    echo ""
    exit 0
fi

echo "ok!"

if [ ! -d $id ]; then
    mkdir $id
fi

echo "export id=\"$id\"" > $id/deets.sh

./.venv/bin/python update_deets.py --id $id
 
cd $id

bash ../update_one.sh

