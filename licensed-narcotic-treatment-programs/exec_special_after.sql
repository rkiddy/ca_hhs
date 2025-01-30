
update licensed_narcotic_treatment_programs set longitude = NULL where cast(longitude as char) = '0';
update licensed_narcotic_treatment_programs set longitude = NULL where cast(longitude as char) = 'n/a';
alter table licensed_narcotic_treatment_programs change column longitude longitude decimal(12,8);

update licensed_narcotic_treatment_programs set latitude = NULL where cast(latitude as char) = '0';
update licensed_narcotic_treatment_programs set latitude = NULL where cast(latitude as char) = 'n/a';
alter table licensed_narcotic_treatment_programs change column latitude latitude decimal(12,8);
