
update elective_percutaneous_coronary_interventions_pcis_witho_5276f61f set longitude = NULL where cast(longitude as char) = '0';
update elective_percutaneous_coronary_interventions_pcis_witho_5276f61f set longitude = NULL where cast(longitude as char) = 'n/a';
alter table elective_percutaneous_coronary_interventions_pcis_witho_5276f61f change column longitude longitude decimal(12,8);

update elective_percutaneous_coronary_interventions_pcis_witho_5276f61f set latitude = NULL where cast(latitude as char) = '0';
update elective_percutaneous_coronary_interventions_pcis_witho_5276f61f set latitude = NULL where cast(latitude as char) = 'n/a';
alter table elective_percutaneous_coronary_interventions_pcis_witho_5276f61f change column latitude latitude decimal(12,8);
