import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'wastewater_surveillance_log': 'wastewater-change-surveillance-log.csv',
              'wastewater_surveillance': 'wastewater-surveillance-california.csv'}

# Date of change,Details,Type

    types = {'wastewater_surveillance_log': {
                 'date_of_change': 'date',
                 'details': 'text',
                 'type': 'text'}}

    # elevation,epaid,wwtp_name,reporting_jurisdiction,county_names,zipcode,capacity_mgd,population_served,industrial_input,stormwater_input,influent_equilibrated,sewage_travel_time,institution_type,wwtp_jurisdiction,solids_separation,pasteurized,time_zone,sample_id,lab_id,sample_collect_date,sample_collect_time,flow_rate,collection_water_temp,sample_type,composite_freq,sample_matrix,sample_location,sample_location_specify,collection_storage_time,collection_storage_temp,pretreatment,pretreatment_specify,concentration_method,extraction_method,pre_conc_storage_time,pre_conc_storage_temp,pre_ext_storage_time,pre_ext_storage_temp,tot_conc_vol,ext_blank,rec_eff_target_name,rec_eff_spike_matrix,rec_eff_spike_conc,inhibition_detect,pcr_type,lod_ref,hum_frac_target_mic,hum_frac_target_mic_ref,hum_frac_target_chem,hum_frac_target_chem_ref,other_norm_name,other_norm_ref,quant_stan_type,stan_ref,inhibition_method,num_no_target_control,test_result_date,ph,conductivity,tss,equiv_sewage_amt,lod_sewage,ntc_amplify,rec_eff_percent,inhibition_adjust,hum_frac_mic_conc,hum_frac_mic_unit,hum_frac_chem_conc,hum_frac_chem_unit,other_norm_conc,other_norm_unit,quality_flag,qc_ignore,dashboard_ignore,analysis_ignore,major_lab_method,major_lab_method_desc,facility_name,pcr_target,pcr_gene_target,pcr_gene_target_ref,pcr_target_units,pcr_target_avg_conc,pcr_target_std_error,pcr_target_cl_95_lo,pcr_target_cl_95_up,pcr_target_below_lod,data_source,validated_methods,site_id,epa_registry_id,created_at,county_treatmentplant,label_name

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
