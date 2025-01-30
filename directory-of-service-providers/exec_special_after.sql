
update directory_of_service_providers set longitude = NULL where cast(longitude as char) = '0';
update directory_of_service_providers set longitude = NULL where cast(longitude as char) = 'n/a';
alter table directory_of_service_providers change column longitude longitude decimal(12,8);

update directory_of_service_providers set latitude = NULL where cast(latitude as char) = '0';
update directory_of_service_providers set latitude = NULL where cast(latitude as char) = 'n/a';
alter table directory_of_service_providers change column latitude latitude decimal(12,8);
