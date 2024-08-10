
for id in $*:
do
    echo " - "$id
    cd $id
    bash ../update_one.sh
    cd ..
done

