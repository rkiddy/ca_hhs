
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

# TODO: This is lame. These tables have some problem with turning a year into an int.
# Until this is understood, this is tolerable, so is ok for now.
#
( echo "select d1.name, t1.name, c1.name from columns c1, tables t1, sources s1, datasets d1";
  echo "where c1.name = 'year' and c1.table_pk = t1.pk and";
  echo "   t1.name = s1.table_name and s1.ds_pk = d1.pk;" ) | \
    ssh opencal mysql --skip-column-names ca_hhs_meta | \
    grep -v vre_in_hospitals_january_to_june_2020_updated_annually | \
    grep -v hospital_encounters_for_behavioral_health | \
    grep -v infant_mortality_deaths_per_1000_live_births_lghc_indicator_01_ | \
    grep -v ischemic_stroke_30_day_mortality_and_30_day_readmission_353fe671 | \
    grep -v mrsa_bsi_in_january_through_june_2020_updated_annually | \
    grep -v mrsa_bsi_in_july_through_december_2020_updated_annually | \
    grep -v mortality_following_hip_fracture_repair_in_california_hospitals | \
    grep -v percentage_of_physically_fit_students_lghc_indicator_8 | \
    grep -v proportion_of_high_school_students_who_smoked_cigarette_145d810b | \
    grep -v readmissions_for_coronary_artery_bypass_graft_cabg_complications | \
    grep -v suicide_lghc_indicator_21 | \
    grep -v clabsi_in_hospitals_january_through_june_2020_updated_annually | \
    grep -v clabsi_in_hospitals_july_through_december_2020_updated_annually | \
    grep -v vre_in_hospitals_july_through_december_2020_updated_annually | \
    awk 'BEGIN{FS="\t"}
         {ds=$1; tn=$2
          print "echo \"year for dataset: "ds" table: "tn" ...\"";
          print "cat - <<EOF >>"ds"/exec_special_after.sql";
          print "";
          print "alter table "tn" change column year year int;";
          print "EOF";
          print ""}' | \
    bash

ls -l */*sql | awk '{if ($5 == "1") print "/bin/rm",$NF}' | bash

