
update hospital_building_data set longitude = NULL where cast(longitude as char) = '0';
update hospital_building_data set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_building_data change column longitude longitude decimal(12,8);

update hospital_building_data set latitude = NULL where cast(latitude as char) = '0';
update hospital_building_data set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_building_data change column latitude latitude decimal(12,8);

update hospital_buildings set longitude = NULL where cast(longitude as char) = '0';
update hospital_buildings set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_buildings change column longitude longitude decimal(12,8);

update hospital_buildings set latitude = NULL where cast(latitude as char) = '0';
update hospital_buildings set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_buildings change column latitude latitude decimal(12,8);
