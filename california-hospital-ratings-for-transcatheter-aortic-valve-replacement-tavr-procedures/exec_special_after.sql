
update hospital_ratings_for_aortic_valve_replacement_procedures set longitude = NULL where cast(longitude as char) = '0';
update hospital_ratings_for_aortic_valve_replacement_procedures set longitude = NULL where cast(longitude as char) = 'n/a';
alter table hospital_ratings_for_aortic_valve_replacement_procedures change column longitude longitude decimal(12,8);

update hospital_ratings_for_aortic_valve_replacement_procedures set latitude = NULL where cast(latitude as char) = '0';
update hospital_ratings_for_aortic_valve_replacement_procedures set latitude = NULL where cast(latitude as char) = 'n/a';
alter table hospital_ratings_for_aortic_valve_replacement_procedures change column latitude latitude decimal(12,8);
