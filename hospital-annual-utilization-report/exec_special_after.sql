
update hospital_annual_utilization_data_machine_readable_format set longitude = NULL where cast(longitude as char) = '0';
update hospital_annual_utilization_data_machine_readable_format set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_annual_utilization_data_machine_readable_format change column longitude longitude decimal(12,8);

update hospital_annual_utilization_data_machine_readable_format set latitude = NULL where cast(latitude as char) = '0';
update hospital_annual_utilization_data_machine_readable_format set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_annual_utilization_data_machine_readable_format change column latitude latitude decimal(12,8);
