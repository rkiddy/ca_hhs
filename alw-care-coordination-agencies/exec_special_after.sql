
update alw_care_coordination_agencies set longitude = NULL where cast(longitude as char) = '0';
update alw_care_coordination_agencies set longitude = NULL where cast(longitude as char) = 'n/a';
alter table alw_care_coordination_agencies change column longitude longitude decimal(12,8);

update alw_care_coordination_agencies set latitude = NULL where cast(latitude as char) = '0';
update alw_care_coordination_agencies set latitude = NULL where cast(latitude as char) = 'n/a';
alter table alw_care_coordination_agencies change column latitude latitude decimal(12,8);
