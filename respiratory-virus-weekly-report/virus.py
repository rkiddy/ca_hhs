import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

#==> age-distribution-of-covid-19-flu-and.csv <==
#season,agegrp,respiratory_virus,count
#2024/2025,>64 years,COVID-19,1479
#
#==> aggregated-sars-cov-2-rna-wastewater-concentrations.csv <==
#season,weekending,sars_conc
#2024/2025,2024-11-09,1.14443632918769
#
#==> percentage-of-deaths-attributed-to-covid-19-in.csv <==
#season,weekending,PerCOVCodedDeaths
#2022/2023,2022-07-09,5.73419078242229
#
#==> percentage-of-deaths-attributed-to-influenza.csv <==
#season,weekending,PerFluCodedDeaths
#2020/2021,2020-07-04,0.0
#
#==> percentage-of-deaths-attributed-to-rsv-in.csv <==
#season,weekending,PerRSVCodedDeaths
#2020/2021,2020-07-04,0.0
#
#==> percentage-of-influenza-detections-at-clinical.csv <==
#season,weekending,perFlu
#2020/2021,2020-07-04,0.0
#
#==> percentage-of-other-respiratory-pathogen.csv <==
#virus,weekending,percent
#perParaFlu,2024-07-06,6.22568093385214
#
#==> percentage-of-rsv-admissions-at-kaiser.csv <==
#season,weekending,RSVper_tot
#2020/2021,2020-07-04,0.0
#
#==> percentage-of-rsv-detections-at-clinical.csv <==
#season,weekending,perRSV
#2020/2021,2020-07-04,0.201207243460765
#
#==> percentage-of-sars-cov-2-detections-from-test.csv <==
#season,weekending,perCoVSARS
#2022/2023,2022-07-02,15.8459251313453


    tables = {'covid_19_age_distribution': 'age-distribution-of-covid-19-flu-and.csv',
              'sars_wastewater_aggregated': 'aggregated-sars-cov-2-rna-wastewater-concentrations.csv',
              'percentage_of_covid_19_deaths': 'percentage-of-deaths-attributed-to-covid-19-in.csv',
              'percentage_of_infouenza_deaths': 'percentage-of-deaths-attributed-to-influenza.csv',
              'percentage_of_rsv_deaths': 'percentage-of-deaths-attributed-to-rsv-in.csv',
              'percentage_of_influenza_detect_at_clinical': 'percentage-of-influenza-detections-at-clinical.csv',
              'percentage_of_other_respitory': 'percentage-of-other-respiratory-pathogen.csv',
              'percentage_rsv_admissions_kaiser': 'percentage-of-rsv-admissions-at-kaiser.csv',
              'percentage_rsv_detect_clinical': 'percentage-of-rsv-detections-at-clinical.csv',
              'percentage_of_sars_detect_from_test': 'percentage-of-sars-cov-2-detections-from-test.csv'}

    types = {}

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
