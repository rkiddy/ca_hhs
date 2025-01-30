
update wic_authorized_vendors set longitude = NULL where cast(longitude as char) = '0';
update wic_authorized_vendors set longitude = NULL where cast(longitude as char) = 'n/a';
alter table wic_authorized_vendors change column longitude longitude decimal(12,8);

update wic_authorized_vendors set latitude = NULL where cast(latitude as char) = '0';
update wic_authorized_vendors set latitude = NULL where cast(latitude as char) = 'n/a';
alter table wic_authorized_vendors change column latitude latitude decimal(12,8);
