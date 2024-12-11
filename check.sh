
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo ""
    echo "Run with no params, lists out datasets that have processing scripts and the \"WORKS\" marker status."
    echo ""
    exit 0
fi

if [ "$1" = "--all" ]; then
    find * -prune -type d > /tmp/check_$$_1.txt
fi

# -rw-rw-r-- 1 ray ray 0 Nov 29 13:07 respiratory-virus-weekly-report/WORKS

ls -l */*WORK* | awk '{print $NF"\t"$6,$7,$8}' | \
    sort | \
    awk '{one=$1; two=substr($0,length($1)+2);
          one=one" "; while (length(one) < 110) one=one".";
          print one,two}' > /tmp/check_$$_2.txt

if [ ! -f /tmp/check_$$_1.txt ]; then
    cat /tmp/check_$$_2.txt
else
    cat /tmp/check_$$_2.txt /tmp/check_$$_1.txt | \
    sort | \
    awk 'BEGIN{FS="/";last=""}{if (last != $1) print ""; print $0; last=$1}' | \
    awk 'BEGIN{FS="\n";RS=""}{if (NF == 2) print $2; if (NF == 1) print $1}'
fi

#    awk 'BEGIN{FS="/";last=""}{if (last != $1) print ""; print $0; last=$1}'

