
if [ "$1" == "--help" ] || [ "$1" == "-help" ] || [ "$1" == "--h" ] || [ "$1" == "-h" ]; then
    echo ""
    echo "usage: bash oshpd_id_check.sh"
    echo ""
    echo "Checking the files table to make sure that dir_pk values are correct."
    echo ""
    echo "Checking that the files in one directory only point to one oshpd_id value."
    echo ""
    exit 0
fi

echo ""
echo "Are the dir_pk values in the files table pointing to the right directory?"
echo ""

echo "select dir_pk, full_name from chargemasters_files;" | \
    mysql --skip-column-names ca_hhs | \
    sort | uniq | \
    awk 'BEGIN{FS="/"}{print substr($0,1,length($0)-length($NF)-1)}' | \
    sort | uniq | \
    awk 'BEGIN{last=""}{if ($1 != last) print ""; print $0; last=$1}' | \
    awk 'BEGIN{FS="\n";RS=""}{if (NF > 1) {for (i=1;i<=NF;i++) print $i; print ""}}'


# Write the oshpd_id to the dirs files where there is only one choice.
# echo "select dir_pk, oshpd_id from chargemasters_files;" | \
#     mysql --skip-column-names ca_hhs | \
#     sort | uniq | \
#     awk 'BEGIN{last=""}{if ($1 != last) print ""; print $0; last=$1}' | \
#     awk 'BEGIN{FS="\n";RS=""}{if (NF == 1) print $1}' | \
#     awk '{print "update chargemasters_dirs set oshpd_id = '\''"$2"'\'' where pk = "$1";"}' | \
#     mysql ca_hhs

echo ""
echo "Are there files that are in the same directory (via the dir_pk) but there is more than one oshpd_id?"
echo ""

echo "select dir_pk, oshpd_id from chargemasters_files;" | \
    mysql --skip-column-names ca_hhs | \
    sort | uniq | \
    awk 'BEGIN{last=""}{if ($1 != last) print ""; print $0; last=$1}' | \
    awk 'BEGIN{FS="\n";RS=""}{if (NF > 1) {for (i=1;i<=NF;i++) print $i; print ""}}' > /tmp/oshpd_id_$$.txt

cat /tmp/oshpd_id_$$.txt

echo ""
echo "There _ARE_ directories in which files appear with more than one oshpd_id value."
echo ""
echo "What to do about this? It is not causing a problem right now."
echo ""

#awk '{if (NF > 0) print $1}' /tmp/oshpd_id_$$.txt | \
#    sort | uniq | \
#    awk '{print "select dir_pk, full_name from chargemasters_files where dir_pk = "$1";"}' | \
#    mysql ca_hhs

cat - <<EOF
For example, if I look at one of these values:

dir_pk	full_name
1021	2013/Los Angeles Community Hospital/106190570_COMMON25_2013.xls
1021	2013/Los Angeles Community Hospital/106190570_CDM_2013.xlsx
1021	2013/Los Angeles Community Hospital/106190570_PCT_CHG_2013.doc
1021	2013/Los Angeles Community Hospital/106190198_COMMON25_2013.xls
1021	2013/Los Angeles Community Hospital/106190198_CDM_2013.xlsx
1021	2013/Los Angeles Community Hospital/106190198_PCT_CHG_2013.doc
1021	2013/Los Angeles Community Hospital/106190198_COMMENTS_2013.docx

But LA Community Hospital is (I think) a parent of Norwalk Community Hospital, which has the
different OSHPD_ID number.

So, the filings are correct, but should I go ahead and create a directory for Norwalk here?

EOF

