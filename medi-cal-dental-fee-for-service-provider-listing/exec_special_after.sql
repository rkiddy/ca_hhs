
update medi_cal_dental_fee_for_service_provider_listing_csv set longitude = NULL where cast(longitude as char) = '0';
update medi_cal_dental_fee_for_service_provider_listing_csv set longitude = NULL where cast(longitude as char) = 'n/a';
alter table medi_cal_dental_fee_for_service_provider_listing_csv change column longitude longitude decimal(12,8);

update medi_cal_dental_fee_for_service_provider_listing_csv set latitude = NULL where cast(latitude as char) = '0';
update medi_cal_dental_fee_for_service_provider_listing_csv set latitude = NULL where cast(latitude as char) = 'n/a';
alter table medi_cal_dental_fee_for_service_provider_listing_csv change column latitude latitude decimal(12,8);

update medi_cal_dental_fee_for_service_provider_listing_exc set longitude = NULL where cast(longitude as char) = '0';
update medi_cal_dental_fee_for_service_provider_listing_exc set longitude = NULL where cast(longitude as char) = 'n/a';
alter table medi_cal_dental_fee_for_service_provider_listing_exc change column longitude longitude decimal(12,8);

update medi_cal_dental_fee_for_service_provider_listing_exc set latitude = NULL where cast(latitude as char) = '0';
update medi_cal_dental_fee_for_service_provider_listing_exc set latitude = NULL where cast(latitude as char) = 'n/a';
alter table medi_cal_dental_fee_for_service_provider_listing_exc change column latitude latitude decimal(12,8);
