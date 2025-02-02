
update aces_aware_clinician_listing set longitude = NULL where cast(longitude as char) = '0';
update aces_aware_clinician_listing set longitude = NULL where cast(longitude as char) = 'n/a';
alter table aces_aware_clinician_listing change column longitude longitude decimal(12,8);

update aces_aware_clinician_listing set latitude = NULL where cast(latitude as char) = '0';
update aces_aware_clinician_listing set latitude = NULL where cast(latitude as char) = 'n/a';
alter table aces_aware_clinician_listing change column latitude latitude decimal(12,8);
