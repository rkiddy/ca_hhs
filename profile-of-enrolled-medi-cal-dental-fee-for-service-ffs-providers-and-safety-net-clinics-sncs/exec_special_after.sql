
update profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a set longitude = NULL where cast(longitude as char) = '0';
update profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a set longitude = NULL where cast(longitude as char) = 'n/a';
alter table profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a change column longitude longitude decimal(12,8);

update profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a set latitude = NULL where cast(latitude as char) = '0';
update profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a set latitude = NULL where cast(latitude as char) = 'n/a';
alter table profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a change column latitude latitude decimal(12,8);
