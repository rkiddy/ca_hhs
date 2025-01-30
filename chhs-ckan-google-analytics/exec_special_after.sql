
update analytics_users_by_locations set longitude = NULL where cast(longitude as char) = '0';
update analytics_users_by_locations set longitude = NULL where cast(longitude as char) = 'n/a';
alter table analytics_users_by_locations change column longitude longitude decimal(12,8);

update analytics_users_by_locations set latitude = NULL where cast(latitude as char) = '0';
update analytics_users_by_locations set latitude = NULL where cast(latitude as char) = 'n/a';
alter table analytics_users_by_locations change column latitude latitude decimal(12,8);
