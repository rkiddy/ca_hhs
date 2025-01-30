
update number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 set longitude = NULL where cast(longitude as char) = '0';
update number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 set longitude = NULL where cast(longitude as char) = 'n/a';
alter table number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 change column longitude longitude decimal(12,8);

update number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 set latitude = NULL where cast(latitude as char) = '0';
update number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 set latitude = NULL where cast(latitude as char) = 'n/a';
alter table number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0 change column latitude latitude decimal(12,8);

update number_of_selected_inpatient_medical_procedures_in_cali_6c6615af set longitude = NULL where cast(longitude as char) = '0';
update number_of_selected_inpatient_medical_procedures_in_cali_6c6615af set longitude = NULL where cast(longitude as char) = 'n/a';
alter table number_of_selected_inpatient_medical_procedures_in_cali_6c6615af change column longitude longitude decimal(12,8);

update number_of_selected_inpatient_medical_procedures_in_cali_6c6615af set latitude = NULL where cast(latitude as char) = '0';
update number_of_selected_inpatient_medical_procedures_in_cali_6c6615af set latitude = NULL where cast(latitude as char) = 'n/a';
alter table number_of_selected_inpatient_medical_procedures_in_cali_6c6615af change column latitude latitude decimal(12,8);
