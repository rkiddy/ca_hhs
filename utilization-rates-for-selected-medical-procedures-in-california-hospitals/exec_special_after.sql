
update utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c set longitude = NULL where cast(longitude as char) = '0';
update utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c set longitude = NULL where cast(longitude as char) = 'n/a';
alter table utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c change column longitude longitude decimal(12,8);

update utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c set latitude = NULL where cast(latitude as char) = '0';
update utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c set latitude = NULL where cast(latitude as char) = 'n/a';
alter table utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c change column latitude latitude decimal(12,8);
