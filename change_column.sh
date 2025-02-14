
tn=$1
cn=$2
ty=$3

#echo ""
#echo "table name: $tn"
#echo "column name: $cn"
#echo "type: $ty"
#echo ""

ft=`echo "desc $tn" | mysql ca_hhs | awk 'BEGIN{FS="\t"}{if ($1 == "'$cn'") print $2}'`
#echo "ft: $ft"

if [ "$ft" = "$ty" ]; then
    exit
fi

# start of the real doing...
#

touch /tmp/exec_$$.sql

if [ "$cn" = "longitude" ] && [ "$ft" != "$ty" ]; then

cat <<EOF >>/tmp/exec_$$.sql
update $tn set longitude = substr(longitude,1,12);
EOF
fi

if [ "$cn" = "latitude" ] && [ "$ft" != "$ty" ]; then

cat <<EOF >>/tmp/exec_$$.sql
update $tn set latitude = substr(latitude,1,11);
EOF
fi

if [ "$ft" != "$ty" ]; then

cat <<EOF >>/tmp/exec_$$.sql
update $tn set $cn = NULL where $cn = '0';
update $tn set $cn = NULL where $cn = 'n/a';
alter table $tn change column $cn $cn decimal(12,8);
EOF
fi

# ls -l /tmp/exec_$$.sql

cat /tmp/exec_$$.sql | mysql -vvv ca_hhs
