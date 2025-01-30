
update hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 set longitude = NULL where cast(longitude as char) = '0';
update hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 change column longitude longitude decimal(12,8);

update hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 set latitude = NULL where cast(latitude as char) = '0';
update hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_perf_ratings_for_artery_bypass_surgery_2011_2018 change column latitude latitude decimal(12,8);

update hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 set longitude = NULL where cast(longitude as char) = '0';
update hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 change column longitude longitude decimal(12,8);

update hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 set latitude = NULL where cast(latitude as char) = '0';
update hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_perf_ratings_for_artery_bypass_surgery_2018_2022 change column latitude latitude decimal(12,8);
