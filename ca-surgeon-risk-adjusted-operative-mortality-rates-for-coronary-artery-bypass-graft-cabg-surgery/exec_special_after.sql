
update surgeon_perf_ratings_2017_2018 set longitude = NULL where cast(longitude as char) = '0';
update surgeon_perf_ratings_2017_2018 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table surgeon_perf_ratings_2017_2018 change column longitude longitude decimal(12,8);

update surgeon_perf_ratings_2017_2018 set latitude = NULL where cast(latitude as char) = '0';
update surgeon_perf_ratings_2017_2018 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table surgeon_perf_ratings_2017_2018 change column latitude latitude decimal(12,8);

update surgeon_perf_ratings_for_cabg_to_2016 set longitude = NULL where cast(longitude as char) = '0';
update surgeon_perf_ratings_for_cabg_to_2016 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table surgeon_perf_ratings_for_cabg_to_2016 change column longitude longitude decimal(12,8);

update surgeon_perf_ratings_for_cabg_to_2016 set latitude = NULL where cast(latitude as char) = '0';
update surgeon_perf_ratings_for_cabg_to_2016 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table surgeon_perf_ratings_for_cabg_to_2016 change column latitude latitude decimal(12,8);
