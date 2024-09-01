
find * -name sources | \
    awk '{dir=substr($0,1,length($0)-8);
          print "mv "dir"/*zip "dir"/sources/";
          print "mv "dir"/*csv "dir"/sources/";
          print "mv "dir"/*xls* "dir"/sources/";
          print "mv "dir"/*json "dir"/sources/";
          print "mv "dir"/*pdf "dir"/sources/";
          print "mv "dir"/*docx "dir"/sources/";
          print "mv "dir"/*api "dir"/sources/";
          print "mv "dir"/*html "dir"/sources/";
          print "mv "dir"/*htm "dir"/sources/"}' | bash 2>/dev/null

