
find 2* -type f | sort > files.txt

echo "updated files.txt"
 
echo ""
echo "Bad Files:"
echo ""

# Why the F is this not working to locate the correct size part of the filename?
#
# awk 'BEGIN{FS="/"}
#       {print $0; print substr($NF,1,10);
#         if (substr($NF,1,10) ~ /^[0-9]{9}\_/) print "GOOD\n"; else print "BAD\n"}' x1
