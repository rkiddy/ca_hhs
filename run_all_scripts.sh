
grep script */deets.sh | \
    grep -v none | \
    awk 'BEGIN{FS="/"}{print "( echo \""$1"\"; cd "$1"; bash ../update_one.sh )"}' | bash

