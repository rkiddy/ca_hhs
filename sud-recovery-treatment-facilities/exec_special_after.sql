
update sud_recovery_treatment_facilities set longitude = NULL where cast(longitude as char) = '0';
update sud_recovery_treatment_facilities set longitude = NULL where cast(longitude as char) = 'n/a';
alter table sud_recovery_treatment_facilities change column longitude longitude decimal(12,8);

update sud_recovery_treatment_facilities set latitude = NULL where cast(latitude as char) = '0';
update sud_recovery_treatment_facilities set latitude = NULL where cast(latitude as char) = 'n/a';
alter table sud_recovery_treatment_facilities change column latitude latitude decimal(12,8);
