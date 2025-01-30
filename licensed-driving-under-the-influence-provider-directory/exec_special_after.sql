
update licensed_driving_under_the_influence_provider_directory set longitude = NULL where cast(longitude as char) = '0';
update licensed_driving_under_the_influence_provider_directory set longitude = NULL where cast(longitude as char) = 'n/a';
alter table licensed_driving_under_the_influence_provider_directory change column longitude longitude decimal(12,8);

update licensed_driving_under_the_influence_provider_directory set latitude = NULL where cast(latitude as char) = '0';
update licensed_driving_under_the_influence_provider_directory set latitude = NULL where cast(latitude as char) = 'n/a';
alter table licensed_driving_under_the_influence_provider_directory change column latitude latitude decimal(12,8);
