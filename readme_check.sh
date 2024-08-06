
ls */deets.sh | \
    sed 's/\/deets.sh//' | \
    awk '{print "echo \""$0"\"";
          print "grep '\''<summary>"$0"'\'' README.md";
          print "echo \"-----------------\"";
          print "echo \"\""}' | \
    bash

