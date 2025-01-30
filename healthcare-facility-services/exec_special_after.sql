
update licensed_and_certified_healthcare_facility_services set longitude = NULL where cast(longitude as char) = '0';
update licensed_and_certified_healthcare_facility_services set longitude = NULL where cast(longitude as char) = 'n/a';
alter table licensed_and_certified_healthcare_facility_services change column longitude longitude decimal(12,8);

update licensed_and_certified_healthcare_facility_services set latitude = NULL where cast(latitude as char) = '0';
update licensed_and_certified_healthcare_facility_services set latitude = NULL where cast(latitude as char) = 'n/a';
alter table licensed_and_certified_healthcare_facility_services change column latitude latitude decimal(12,8);
