
update licensing_and_certification_district_offices_california set longitude = NULL where cast(longitude as char) = '0';
update licensing_and_certification_district_offices_california set longitude = NULL where cast(longitude as char) = 'n/a';
alter table licensing_and_certification_district_offices_california change column longitude longitude decimal(12,8);

update licensing_and_certification_district_offices_california set latitude = NULL where cast(latitude as char) = '0';
update licensing_and_certification_district_offices_california set latitude = NULL where cast(latitude as char) = 'n/a';
alter table licensing_and_certification_district_offices_california change column latitude latitude decimal(12,8);
