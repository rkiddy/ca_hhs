
echo "delete from monthly_update_prescription_drugs_introduced where oshpd_id is NULL or oshpd_id = 'OSHPD ID';" | \
    mysql ca_hhs

