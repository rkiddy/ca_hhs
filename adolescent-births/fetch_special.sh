
curl --silent 'https://www.cdph.ca.gov/Programs/CFH/DMCAH/surveillance/Pages/adolescent-births.aspx' | \
    grep csv | \
    awk 'BEGIN{FS="\""}{print $2}' | \
    awk '{print "curl '\''https://www.cdph.ca.gov"$0"'\''"}' | bash


