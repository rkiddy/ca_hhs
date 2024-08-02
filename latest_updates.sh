
echo "select dataset_id, from_unixtime(max(updated)) as updated from updates group by dataset_id order by updated;" | \
    mysql --table ca_hhs

