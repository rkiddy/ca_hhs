
update facilitylist set longitude = NULL where cast(longitude as char) = '0';
update facilitylist set longitude = NULL where cast(longitude as char) = 'n/a';
alter table facilitylist change column longitude longitude decimal(12,8);

update facilitylist set latitude = NULL where cast(latitude as char) = '0';
update facilitylist set latitude = NULL where cast(latitude as char) = 'n/a';
alter table facilitylist change column latitude latitude decimal(12,8);

alter table final_deaths_by_year_by_zip_code_1989_1998 change column year year int;

alter table final_deaths_by_year_by_zip_code_1999_2008 change column year year int;

alter table final_deaths_by_year_by_zip_code_2009_2018 change column year year int;

alter table final_deaths_by_year_by_zip_code_2019_2022 change column year year int;
