
update medi_cal_fpact_provider_listing set longitude = NULL where cast(longitude as char) = '0';
update medi_cal_fpact_provider_listing set longitude = NULL where cast(longitude as char) = 'n/a';
alter table medi_cal_fpact_provider_listing change column longitude longitude decimal(12,8);

update medi_cal_fpact_provider_listing set latitude = NULL where cast(latitude as char) = '0';
update medi_cal_fpact_provider_listing set latitude = NULL where cast(latitude as char) = 'n/a';
alter table medi_cal_fpact_provider_listing change column latitude latitude decimal(12,8);
