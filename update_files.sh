
echo ""
echo "updating file.txt..."
echo ""

find *-* | \
    grep -v '.venv' | grep -v __pycache__ | \
    sed 's/\/sources\//\//g' | \
    grep -v 'sources$' | \
    awk 'BEGIN{FS="/";last=""}
         {if ($1 != last) print ""; print $0; last=$1}' > files.txt

wc -l files.txt

echo ""
