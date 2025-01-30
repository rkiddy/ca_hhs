
update ehr_incentive_program_payments_providers set longitude = NULL where cast(longitude as char) = '0';
update ehr_incentive_program_payments_providers set longitude = NULL where cast(longitude as char) = 'n/a';
alter table ehr_incentive_program_payments_providers change column longitude longitude decimal(12,8);

update ehr_incentive_program_payments_providers set latitude = NULL where cast(latitude as char) = '0';
update ehr_incentive_program_payments_providers set latitude = NULL where cast(latitude as char) = 'n/a';
alter table ehr_incentive_program_payments_providers change column latitude latitude decimal(12,8);
