
update covid19_emergency_dental_providers set longitude = NULL where cast(longitude as char) = '0';
update covid19_emergency_dental_providers set longitude = NULL where cast(longitude as char) = 'n/a';
alter table covid19_emergency_dental_providers change column longitude longitude decimal(12,8);

update covid19_emergency_dental_providers set latitude = NULL where cast(latitude as char) = '0';
update covid19_emergency_dental_providers set latitude = NULL where cast(latitude as char) = 'n/a';
alter table covid19_emergency_dental_providers change column latitude latitude decimal(12,8);
