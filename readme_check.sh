
if [ "$1" = "-v" ]; then

    ls */deets.sh | \
        sed 's/\/deets.sh//' | \
        awk '{print "echo \""$0"\"";
              print "grep '\''<summary>"$0"'\'' README.md";
              print "echo \"-----------------\"";
              print "echo \"\""}' | \
        bash

else

    ls */deets.sh | \
        sed 's/\/deets.sh//' | \
        awk '{print "echo \""$0"\"";
              print "grep '\''<summary>"$0"'\'' README.md";
              print "echo \"-----------------\"";
              print "echo \"\""}' | \
        bash | \
        awk 'BEGIN{FS="\n";RS=""}{if (NF != 3) print $0}'

fi

