
update emergency_department_volume_and_capacity_2021 set longitude = NULL where cast(longitude as char) = '0';
update emergency_department_volume_and_capacity_2021 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table emergency_department_volume_and_capacity_2021 change column longitude longitude decimal(12,8);

update emergency_department_volume_and_capacity_2021 set latitude = NULL where cast(latitude as char) = '0';
update emergency_department_volume_and_capacity_2021 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table emergency_department_volume_and_capacity_2021 change column latitude latitude decimal(12,8);
