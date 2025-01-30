
update medical_managed_care_provider_listing set longitude = NULL where cast(longitude as char) = '0';
update medical_managed_care_provider_listing set longitude = NULL where cast(longitude as char) = 'n/a';
alter table medical_managed_care_provider_listing change column longitude longitude decimal(12,8);

update medical_managed_care_provider_listing set latitude = NULL where cast(latitude as char) = '0';
update medical_managed_care_provider_listing set latitude = NULL where cast(latitude as char) = 'n/a';
alter table medical_managed_care_provider_listing change column latitude latitude decimal(12,8);
