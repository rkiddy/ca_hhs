
if [ "$1" = "--updates-only" ]; then
    updates_only=1
    shift
else
    updates_only=
fi

if [ "$1" = "" ]; then
    echo ""
    echo "usage: bash digest.sh [ --updates-only ] YYYY-MM-DD [ <table_name> ]"
    echo ""
    exit
fi

if [ "$2" = "" ]; then
    table="healthcare_facilities"
else
    table=$2
fi

if [ $updates_only ]; then
    echo "already have facid values, not adding..."
else
    echo "adding facid values..."
    
    echo "select facid from $table;" | \
        mysql --skip-column-names ca_hhs | \
        awk '{print "insert into healthcare_facilities_digests (facid, update_date)";
              print "    values ('\''"$0"'\'', '\'$1\'');"}' | \
        mysql ca_hhs
fi

echo "adding digests..."

(
    echo "select licensed_certified, flag, t18_19, facid, fac_status_type_code, aspen_facid, ccn, terminat_sw, "
    echo "       participation_date, approval_date, npi, can_be_deemed_fac_type, can_be_certified_fac_type, "
    echo "       deemed, ao_cd, dmg_efctv_dt, ao_trmntn_dt, ao_name, hex(facname), fac_type_code, fac_fdr, ltc, "
    echo "       capacity, address, city, zip, zip9, hex(facadmin), contact_email, contact_fax, contact_phone_number, "
    echo "       county_code, county_name, district_number, district_name, isfacmain, parent_facid, "
    echo "       fac_fac_relationship_type_code, start_date, license_number, business_name, "
    echo "       license_status_description, initial_license_date, license_effective_date, license_expiration_date, "
    echo "       entity_type_description, latitude, longitude, location, oshpd_id, cclho_code, cclho_name, "
    echo "       fips_county_code, birthing_facility_flag, trauma_ped_ctr, trauma_ctr, type_of_care, "
    echo "       critical_access_hospital, data_date from $table;"
) | \
    mysql --skip-column-names ca_hhs | \
    awk 'BEGIN{FS="\t"}
         {print "echo \""$0"\"";
          print "echo \""$0"\" | openssl dgst --sha256";
          print "echo \""$4"\"";
          print "echo \"\""}' | bash | \
    awk 'BEGIN{FS="\n";RS=""}
         {print "";
          print "-- "$1;
          print "update healthcare_facilities_digests";
          print "    set dgst_sha256 = '\''"substr($2,19)"'\''";
          print "    where facid = '\''"$3"'\'' and update_date = '\'$1\'';"}' | \
    mysql ca_hhs

echo "done!"

