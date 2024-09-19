
cat *.web-link | \
    awk '{if ($0 ~ /href/) href=$0;
          if ($0 ~ /Download all/) print href}' | \
    awk 'BEGIN{FS="\""}{print "wget '\''"$4"'\''"}' | bash

ls *zip | \
    awk '{print "( mkdir foo_"NR"; cd foo_"NR"; unzip ../"$0"; mv *csv ..)"}' | bash

/bin/rm -rf foo_*

