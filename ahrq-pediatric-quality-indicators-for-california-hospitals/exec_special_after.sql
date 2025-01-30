
update pediatric_quality_indicators set longitude = NULL where cast(longitude as char) = '0';
update pediatric_quality_indicators set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pediatric_quality_indicators change column longitude longitude decimal(12,8);

update pediatric_quality_indicators set latitude = NULL where cast(latitude as char) = '0';
update pediatric_quality_indicators set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pediatric_quality_indicators change column latitude latitude decimal(12,8);
