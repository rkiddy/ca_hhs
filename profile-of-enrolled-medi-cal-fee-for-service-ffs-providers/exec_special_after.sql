
update enrolled_medi_cal_fee_for_service_ffs_providers set longitude = NULL where cast(longitude as char) = '0';
update enrolled_medi_cal_fee_for_service_ffs_providers set longitude = NULL where cast(longitude as char) = 'n/a';
alter table enrolled_medi_cal_fee_for_service_ffs_providers change column longitude longitude decimal(12,8);

update enrolled_medi_cal_fee_for_service_ffs_providers set latitude = NULL where cast(latitude as char) = '0';
update enrolled_medi_cal_fee_for_service_ffs_providers set latitude = NULL where cast(latitude as char) = 'n/a';
alter table enrolled_medi_cal_fee_for_service_ffs_providers change column latitude latitude decimal(12,8);
