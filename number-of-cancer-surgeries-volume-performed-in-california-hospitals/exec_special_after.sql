
update number_of_cancer_surgeries_volume_performed_in_californ_08432765 set longitude = NULL where cast(longitude as char) = '0';
update number_of_cancer_surgeries_volume_performed_in_californ_08432765 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table number_of_cancer_surgeries_volume_performed_in_californ_08432765 change column longitude longitude decimal(12,8);

update number_of_cancer_surgeries_volume_performed_in_californ_08432765 set latitude = NULL where cast(latitude as char) = '0';
update number_of_cancer_surgeries_volume_performed_in_californ_08432765 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table number_of_cancer_surgeries_volume_performed_in_californ_08432765 change column latitude latitude decimal(12,8);
