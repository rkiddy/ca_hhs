
update ahrq_postoperative_sepsis_rates_2019_2022 set longitude = NULL where cast(longitude as char) = '0';
update ahrq_postoperative_sepsis_rates_2019_2022 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table ahrq_postoperative_sepsis_rates_2019_2022 change column longitude longitude decimal(12,8);

update ahrq_postoperative_sepsis_rates_2019_2022 set latitude = NULL where cast(latitude as char) = '0';
update ahrq_postoperative_sepsis_rates_2019_2022 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table ahrq_postoperative_sepsis_rates_2019_2022 change column latitude latitude decimal(12,8);
