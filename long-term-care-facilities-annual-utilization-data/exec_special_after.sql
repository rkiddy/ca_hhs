
update 2023_long_term_care_facilities_utilization_data_nov_2024 set longitude = NULL where cast(longitude as char) = '0';
update 2023_long_term_care_facilities_utilization_data_nov_2024 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table 2023_long_term_care_facilities_utilization_data_nov_2024 change column longitude longitude decimal(12,8);

update 2023_long_term_care_facilities_utilization_data_nov_2024 set latitude = NULL where cast(latitude as char) = '0';
update 2023_long_term_care_facilities_utilization_data_nov_2024 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table 2023_long_term_care_facilities_utilization_data_nov_2024 change column latitude latitude decimal(12,8);

update 2023_long_term_care_facilities_utilization_data_nov_2024_non set longitude = NULL where cast(longitude as char) = '0';
update 2023_long_term_care_facilities_utilization_data_nov_2024_non set longitude = NULL where cast(longitude as char) = 'n/a';
alter table 2023_long_term_care_facilities_utilization_data_nov_2024_non change column longitude longitude decimal(12,8);

update 2023_long_term_care_facilities_utilization_data_nov_2024_non set latitude = NULL where cast(latitude as char) = '0';
update 2023_long_term_care_facilities_utilization_data_nov_2024_non set latitude = NULL where cast(latitude as char) = 'n/a';
alter table 2023_long_term_care_facilities_utilization_data_nov_2024_non change column latitude latitude decimal(12,8);

update long_term_care_facilities_utilization_data_2012 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_facilities_utilization_data_2012 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_facilities_utilization_data_2012 change column longitude longitude decimal(12,8);

update long_term_care_facilities_utilization_data_2012 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_facilities_utilization_data_2012 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_facilities_utilization_data_2012 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_2013 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_2013 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2013 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_2013 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_2013 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2013 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_2013_nr_1_4 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_2013_nr_1_4 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2013_nr_1_4 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_2013_nr_1_4 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_2013_nr_1_4 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2013_nr_1_4 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_2014 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_2014 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2014 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_2014 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_2014 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2014 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_2015 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_2015 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2015 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_2015 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_2015 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2015 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_2015_nr_1_4 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_2015_nr_1_4 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2015_nr_1_4 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_2015_nr_1_4 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_2015_nr_1_4 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_2015_nr_1_4 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2019_for_2018 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2019_for_2018 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2019_for_2018 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2019_for_2018 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2019_for_2018 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2019_for_2018 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2019_for_2018_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2019_for_2018_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2019_for_2018_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2019_for_2018_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2019_for_2018_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2019_for_2018_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2020_for_2019 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2020_for_2019 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2020_for_2019 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2020_for_2019 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2020_for_2019 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2020_for_2019 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2020_for_2019_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2020_for_2019_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2020_for_2019_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2020_for_2019_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2020_for_2019_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2020_for_2019_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2024_for_2023 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2024_for_2023 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2024_for_2023 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2024_for_2023 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2024_for_2023 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2024_for_2023 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2024_for_2023_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_nov_2024_for_2023_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2024_for_2023_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_nov_2024_for_2023_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_nov_2024_for_2023_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_nov_2024_for_2023_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2018_for_2017 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2018_for_2017 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2018_for_2017 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2018_for_2017 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2018_for_2017 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2018_for_2017 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2018_for_2017_nr_1_4 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2021_for_2020 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2021_for_2020 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2021_for_2020 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2021_for_2020 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2021_for_2020 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2021_for_2020 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2021_for_2020_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2021_for_2020_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2021_for_2020_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2021_for_2020_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2021_for_2020_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2021_for_2020_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2022_for_2019 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2022_for_2019 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2022_for_2019 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2022_for_2019 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2022_for_2019 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2022_for_2019 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2022_for_2021_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2022_for_2021_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2022_for_2021_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2022_for_2021_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2022_for_2021_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2022_for_2021_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2023_for_2022 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2023_for_2022 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2023_for_2022 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2023_for_2022 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2023_for_2022 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2023_for_2022 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2023_for_2022_nr set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_oct_2023_for_2022_nr set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2023_for_2022_nr change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_oct_2023_for_2022_nr set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_oct_2023_for_2022_nr set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_oct_2023_for_2022_nr change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_updated_2016 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_updated_2016 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_updated_2016 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_updated_2016 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_updated_2016 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_updated_2016 change column latitude latitude decimal(12,8);

update long_term_care_faclts_util_data_updated_2016_nr_1_4 set longitude = NULL where cast(longitude as char) = '0';
update long_term_care_faclts_util_data_updated_2016_nr_1_4 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_updated_2016_nr_1_4 change column longitude longitude decimal(12,8);

update long_term_care_faclts_util_data_updated_2016_nr_1_4 set latitude = NULL where cast(latitude as char) = '0';
update long_term_care_faclts_util_data_updated_2016_nr_1_4 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table long_term_care_faclts_util_data_updated_2016_nr_1_4 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2016 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2016 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2016 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2016 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2016 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2016 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2017 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2017 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2017 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2017 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2017 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2017 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2018 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2018 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2018 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2018 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2018 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2018 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2019 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2019 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2019 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2019 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2019 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2019 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2020 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2020 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2020 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2020 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2020 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2020 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2021 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2021 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2021 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2021 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2021 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2021 change column latitude latitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2022 set longitude = NULL where cast(longitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2022 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2022 change column longitude longitude decimal(12,8);

update pivot_table_long_term_care_faclts_util_data_2022 set latitude = NULL where cast(latitude as char) = '0';
update pivot_table_long_term_care_faclts_util_data_2022 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table pivot_table_long_term_care_faclts_util_data_2022 change column latitude latitude decimal(12,8);
