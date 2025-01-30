
update california_hospital_inpatient_mortality_rates_2010_2015 set longitude = NULL where cast(longitude as char) = '0';
update california_hospital_inpatient_mortality_rates_2010_2015 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table california_hospital_inpatient_mortality_rates_2010_2015 change column longitude longitude decimal(12,8);

update california_hospital_inpatient_mortality_rates_2010_2015 set latitude = NULL where cast(latitude as char) = '0';
update california_hospital_inpatient_mortality_rates_2010_2015 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table california_hospital_inpatient_mortality_rates_2010_2015 change column latitude latitude decimal(12,8);

update california_hospital_inpatient_mortality_rates_2016_2022 set longitude = NULL where cast(longitude as char) = '0';
update california_hospital_inpatient_mortality_rates_2016_2022 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table california_hospital_inpatient_mortality_rates_2016_2022 change column longitude longitude decimal(12,8);

update california_hospital_inpatient_mortality_rates_2016_2022 set latitude = NULL where cast(latitude as char) = '0';
update california_hospital_inpatient_mortality_rates_2016_2022 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table california_hospital_inpatient_mortality_rates_2016_2022 change column latitude latitude decimal(12,8);
