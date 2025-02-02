
update facilitylist set longitude = NULL where cast(longitude as char) = '0';
update facilitylist set longitude = NULL where cast(longitude as char) = 'n/a';
alter table facilitylist change column longitude longitude decimal(12,8);

update facilitylist set latitude = NULL where cast(latitude as char) = '0';
update facilitylist set latitude = NULL where cast(latitude as char) = 'n/a';
alter table facilitylist change column latitude latitude decimal(12,8);
