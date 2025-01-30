
update hospital_performance_ratings_01 set longitude = NULL where cast(longitude as char) = '0';
update hospital_performance_ratings_01 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_performance_ratings_01 change column longitude longitude decimal(12,8);

update hospital_performance_ratings_01 set latitude = NULL where cast(latitude as char) = '0';
update hospital_performance_ratings_01 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_performance_ratings_01 change column latitude latitude decimal(12,8);

update hospital_performance_ratings_02 set longitude = NULL where cast(longitude as char) = '0';
update hospital_performance_ratings_02 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_performance_ratings_02 change column longitude longitude decimal(12,8);

update hospital_performance_ratings_02 set latitude = NULL where cast(latitude as char) = '0';
update hospital_performance_ratings_02 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_performance_ratings_02 change column latitude latitude decimal(12,8);
