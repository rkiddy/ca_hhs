
update alw_public_subsidized_housing set longitude = NULL where cast(longitude as char) = '0';
update alw_public_subsidized_housing set longitude = NULL where cast(longitude as char) = 'n/a';
alter table alw_public_subsidized_housing change column longitude longitude decimal(12,8);

update alw_public_subsidized_housing set latitude = NULL where cast(latitude as char) = '0';
update alw_public_subsidized_housing set latitude = NULL where cast(latitude as char) = 'n/a';
alter table alw_public_subsidized_housing change column latitude latitude decimal(12,8);
