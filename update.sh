
find *-* -name update.sh | \
    sed 's/\/update.sh//' | \
    awk '{print "( cd "$0"; bash ./update.sh '$*' )"}' | \
    /bin/bash
