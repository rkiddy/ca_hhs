
update seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 set longitude = NULL where cast(longitude as char) = '0';
update seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 change column longitude longitude decimal(12,8);

update seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 set latitude = NULL where cast(latitude as char) = '0';
update seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table seismic_ratings_and_collapse_probabilities_of_californi_ae55f270 change column latitude latitude decimal(12,8);
