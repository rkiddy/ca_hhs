
# Check that the files we expect are what we have gotten.

cat <<'EOF' > /tmp/files_in_dir_$$.txt
1970-1978-final-deaths-by-month-by-county.csv
1970-1978-final-deaths-by-year-by-county.csv
1979-1988-final-deaths-by-month-by-county.csv
1979-1998-final-deaths-by-year-by-county.csv
1989-1998-final-deaths-by-month-by-county.csv
1999-2003-final-deaths-by-month-by-occurrence-county.csv
1999-2003-final-deaths-by-month-by-residence-county.csv
1999-2013-final-deaths-by-year-by-county.csv
2004-2008-final-deaths-by-month-by-occurrence-county.csv
2004-2008-final-deaths-by-month-by-residence-county.csv
2009-2013-final-deaths-by-month-by-occurrence-county.csv
2009-2013-final-deaths-by-month-by-residence-county.csv
2014-2018-final-deaths-by-month-by-occurrence-county.csv
2014-2018-final-deaths-by-month-by-residence-county.csv
2014-2023-final-deaths-by-year-by-county.csv
2019-2023-final-deaths-by-month-by-occurrence-county.csv
2019-2023-final-deaths-by-month-by-residence-county.csv
2024-provisional-deaths-by-month-by-county.csv
EOF

( echo "select s1.file_name from datasets d1, sources s1 where d1.pk = s1.ds_pk and"
  echo "d1.name = 'death-profiles-by-county' order by s1.file_name" ) | \
ssh opencal mysql --skip-column-names ca_hhs_meta > /tmp/files_in_db_$$.txt

diff /tmp/files_in_dir_$$.txt /tmp/files_in_db_$$.txt

if [ $? -eq 1 ]; then
    echo ""
    echo "The set of files downloaded has changed!"
    echo ""
    exit 1
fi

cat <<'EOF' | mysql -vvv ca_hhs

drop table if exists death_profiles_by_month_by_county;

create table death_profiles_by_month_by_county (
            year varchar(255),
            month varchar(255),
            county varchar(255),
            geography_type varchar(255),
            strata varchar(255),
            strata_name varchar(255),
            cause varchar(255),
            cause_desc varchar(255),
            count varchar(255),
            annotation_code varchar(255),
            annotation_desc varchar(255));

drop table if exists death_profiles_by_year;

create table death_profiles_by_year (
            year varchar(255),
            county varchar(255),
            geography_type varchar(255),
            strata varchar(255),
            strata_name varchar(255),
            cause varchar(255),
            cause_desc varchar(255),
            count varchar(255),
            annotation_code varchar(255),
            annotation_desc varchar(255));

drop table if exists death_profiles_by_month_by_occurrence;
 
create table death_profiles_by_month_by_occurrence (
            year varchar(255),
            month varchar(255),
            county varchar(255),
            geography_type varchar(255),
            strata varchar(255),
            strata_name varchar(255),
            cause varchar(255),
            cause_desc varchar(255),
            count varchar(255),
            annotation_code varchar(255),
            annotation_desc varchar(255));

drop table if exists death_profiles_by_month_by_residence;

create table death_profiles_by_month_by_residence (
            year varchar(255),
            month varchar(255),
            county varchar(255),
            geography_type varchar(255),
            strata varchar(255),
            strata_name varchar(255),
            cause varchar(255),
            cause_desc varchar(255),
            count varchar(255),
            annotation_code varchar(255),
            annotation_desc varchar(255));

insert into death_profiles_by_month_by_county select * from 1970_1978_final_deaths_by_month_by_county;
insert into death_profiles_by_month_by_county select * from 1979_1988_final_deaths_by_month_by_county;
insert into death_profiles_by_month_by_county select * from 1989_1998_final_deaths_by_month_by_county;
alter table death_profiles_by_month_by_county add column icd_revision varchar(255) after cause_desc;
alter table death_profiles_by_month_by_county add column data_revision_date varchar(255);
insert into death_profiles_by_month_by_county
    (year, county, geography_type, strata, strata_name, cause, cause_desc, icd_revision,
     count, annotation_code, annotation_desc, data_revision_date)
    select * from 2014_2023_final_deaths_by_year_by_county;

insert into death_profiles_by_year select * from 1999_2013_final_deaths_by_year_by_county;
insert into death_profiles_by_year select * from 1970_1978_final_deaths_by_year_by_county;
insert into death_profiles_by_year select * from 1979_1998_final_deaths_by_year_by_county;
alter table death_profiles_by_year add column icd_revision varchar(255) after cause_desc;
alter table death_profiles_by_year add column data_revision_date varchar(255);
insert into death_profiles_by_year select * from 2014_2023_final_deaths_by_year_by_county;

insert into death_profiles_by_month_by_occurrence select * from 1999_2003_final_deaths_by_month_by_occurrence_county;
insert into death_profiles_by_month_by_occurrence select * from 2004_2008_final_deaths_by_month_by_occurrence_county;
insert into death_profiles_by_month_by_occurrence select * from 2009_2013_final_deaths_by_month_by_occurrence_county;
alter table death_profiles_by_month_by_occurrence add column icd_revision varchar(255) after cause_desc;
alter table death_profiles_by_month_by_occurrence add column data_revision_date varchar(255);
insert into death_profiles_by_month_by_occurrence select * from 2014_2018_final_deaths_by_month_by_occurrence_county;
insert into death_profiles_by_month_by_occurrence select * from 2019_2023_final_deaths_by_month_by_occurrence_county;

insert into death_profiles_by_month_by_residence select * from 1999_2003_final_deaths_by_month_by_residence_county;
insert into death_profiles_by_month_by_residence select * from 2004_2008_final_deaths_by_month_by_residence_county;
insert into death_profiles_by_month_by_residence select * from 2009_2013_final_deaths_by_month_by_residence_county;
alter table death_profiles_by_month_by_residence add column icd_revision varchar(255) after cause_desc;
alter table death_profiles_by_month_by_residence add column data_revision_date varchar(255);
insert into death_profiles_by_month_by_residence select * from 2014_2018_final_deaths_by_month_by_residence_county;
insert into death_profiles_by_month_by_residence select * from 2019_2023_final_deaths_by_month_by_residence_county;

drop table if exists death_profiles_provisional_by_month_by_county;
rename table 2024_provisional_deaths_by_month_by_county to death_profiles_provisional_by_month_by_county;

EOF

echo "sharing death_profiles_by_month_by_county..."
mysqldump ca_hhs death_profiles_by_month_by_county | ssh opencal mysql ca_hhs

echo "sharing death_profiles_by_year..."
mysqldump ca_hhs death_profiles_by_year | ssh opencal mysql ca_hhs

echo "sharing death_profiles_by_month_by_occurrence..."
mysqldump ca_hhs death_profiles_by_month_by_occurrence | ssh opencal mysql ca_hhs

echo "sharing death_profiles_by_month_by_residence..."
mysqldump ca_hhs death_profiles_by_month_by_residence | ssh opencal mysql ca_hhs

echo "sharing death_profiles_provisional_by_month_by_county..."
mysqldump ca_hhs death_profiles_provisional_by_month_by_county | ssh opencal mysql ca_hhs

