
curl --silent 'https://www.cdph.ca.gov/Programs/CFH/DMCAH/surveillance/Pages/adolescent-births.aspx' | \
    grep csv | \
    awk 'BEGIN{FS="\""}{print $2}' | \
    awk '{print "curl '\''https://www.cdph.ca.gov"$0"'\'' > Data-Adolescent-Births.csv"}' | bash

if [ -s Data-Adolescent-Births.csv ]; then
    echo "Ok!"
else
    echo ""
    echo "COULD NOT DOWNLOAD file requested. CHECK THIS."
    echo ""
    exit 1
fi
