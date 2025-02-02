
/bin/rm */exec_special_after.sql

( echo "select d1.name, t1.name, c1.name from columns c1, tables t1, sources s1, datasets d1";
  echo "where c1.name = 'longitude' and c1.table_pk = t1.pk and";
  echo "   t1.name = s1.table_name and s1.ds_pk = d1.pk;" ) | \
    ssh opencal mysql --skip-column-names ca_hhs_meta | \
    awk 'BEGIN{FS="\t"}
         {ds=$1; tn=$2
          print "echo \"longitude/latitude for dataset: "ds", table: "tn"...\"";
          print "cat - <<EOF >>"ds"/exec_special_after.sql";
          print "";
          print "update "tn" set longitude = NULL where cast(longitude as char) = '\''0'\'';";
          print "update "tn" set longitude = NULL where cast(longitude as char) = '\''n/a'\'';";
          print "alter table "tn" change column longitude longitude decimal(12,8);";
          print "";
          print "update "tn" set latitude = NULL where cast(latitude as char) = '\''0'\'';";
          print "update "tn" set latitude = NULL where cast(latitude as char) = '\''n/a'\'';";
          print "alter table "tn" change column latitude latitude decimal(12,8);";
          print "EOF";
          print ""}' | \
    bash

ls -l */*sql | awk '{if ($5 == "1") print "/bin/rm",$NF}' | bash

