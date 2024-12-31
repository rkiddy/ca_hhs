
ls *data.txt | \
    awk '{base=substr($0,1,length($0)-4); print "mv "base".txt "base".csv"}' | bash

