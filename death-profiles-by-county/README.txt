
The table schema:

mysql> desc death_profiles_by_county;
Current database: ca_hhs

+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| year               | int         | YES  |     | NULL    |       |
| month              | int         | YES  |     | NULL    |       |
| county             | varchar(31) | YES  |     | NULL    |       |
| geography_type     | varchar(31) | YES  |     | NULL    |       |
| strata             | varchar(31) | YES  |     | NULL    |       |
| strata_name        | varchar(63) | YES  |     | NULL    |       |
| cause              | varchar(31) | YES  |     | NULL    |       |
| cause_desc         | varchar(63) | YES  |     | NULL    |       |
| icd_revision       | varchar(31) | YES  |     | NULL    |       |
| count              | int         | YES  |     | NULL    |       |
| annotation_code    | varchar(31) | YES  |     | NULL    |       |
| annotation_desc    | varchar(63) | YES  |     | NULL    |       |
| data_extract_date  | varchar(31) | YES  |     | NULL    |       |
| data_revision_date | varchar(31) | YES  |     | NULL    |       |
| by_factor          | varchar(31) | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+

Causes, complete list:

mysql> select distinct(concat(cause, ' - ', cause_desc)) from death_profiles_by_county;
+-------------------------------------------------------------+
| (concat(cause, ' - ', cause_desc))                          |
+-------------------------------------------------------------+
| ALL - All causes (total)                                    |
| ALZ - Alzheimer's disease                                   |
| CAN - Malignant neoplasms                                   |
| CLD - Chronic lower respiratory diseases                    |
| DIA - Diabetes mellitus                                     |
| HOM - Assault (homicide)                                    |
| HTD - Diseases of heart                                     |
| HYP - Essential hypertension and hypertensive renal disease |
| INJ - Accidents (unintentional injuries)                    |
| LIV - Chronic liver disease and cirrhosis                   |
| NEP - Nephritis, nephrotic syndrome and nephrosis           |
| PAR - Parkinson's disease                                   |
| PNF - Influenza and pneumonia                               |
| STK - Cerebrovascular diseases                              |
| SUI - Intentional self-harm (suicide)                       |
+-------------------------------------------------------------+

There is an invisible "Other" category (OTH) which can be found by taking the ALL count
and subtracting all of the others. This will not be calculable when NULLs are present.


Strata and Strata Name, complete list:

mysql> select distinct(concat(strata, ' - ', strata_name)) from death_profiles_by_county;
+---------------------------------------------------+
| (concat(strata, ' - ', strata_name))              |
+---------------------------------------------------+
| Age - 1-4 years                                   |
| Age - 15-24 years                                 |
| Age - 25-34 years                                 |
| Age - 35-44 years                                 |
| Age - 45-54 years                                 |
| Age - 5-14 years                                  |
| Age - 55-64 years                                 |
| Age - 65-74 years                                 |
| Age - 75-84 years                                 |
| Age - 85 years and over                           |
| Age - Under 1 year                                |
| Gender - Female                                   |
| Gender - Male                                     |
| Gender - Nonbinary/Unknown                        |
| Place Type - Decedent's Home                      |
| Place Type - Emergency Room/Outpatient            |
| Place Type - Hospice Facility                     |
| Place Type - Inpatient                            |
| Place Type - Nursing Home/Long Term Care Facility |
| Place Type - Other/Unknown                        |
| Race-Ethnicity - American Indian/Alaska Native    |
| Race-Ethnicity - American Indian/Alaskan Native   |
| Race-Ethnicity - Asian                            |
| Race-Ethnicity - Black                            |
| Race-Ethnicity - Hawaiian/Pacific Islander        |
| Race-Ethnicity - Hispanic                         |
| Race-Ethnicity - Multi-Race                       |
| Race-Ethnicity - Other/Unknown                    |
| Race-Ethnicity - White                            |
| Total Population - Total Population               |
+---------------------------------------------------+


An example query showing that for the factors:
    year, strata, strata_name, and geography type and county

If you set all except for one, you see counts across all of the last.


mysql> select year, county, cause, count from death_profiles_by_county
       where year = 1970 and month is NULL and strata = 'Total Population' and
           strata_name = 'Total Population' and geography_type = 'Residence';
+------+-----------------+-------+-------+
| year | county          | cause | count |
+------+-----------------+-------+-------+
| 1970 | Alameda         | ALL   |  9363 |
| 1970 | Alpine          | ALL   |  NULL |
| 1970 | Amador          | ALL   |   153 |
| 1970 | Butte           | ALL   |  1153 |
| 1970 | Calaveras       | ALL   |   161 |
| 1970 | Colusa          | ALL   |   136 |
| 1970 | Contra Costa    | ALL   |  3842 |
| 1970 | Del Norte       | ALL   |   148 |
| 1970 | El Dorado       | ALL   |   416 |
| 1970 | Fresno          | ALL   |  3595 |
| 1970 | Glenn           | ALL   |   161 |
| 1970 | Humboldt        | ALL   |   936 |
| 1970 | Imperial        | ALL   |   582 |
| 1970 | Inyo            | ALL   |   192 |
| 1970 | Kern            | ALL   |  2802 |
| 1970 | Kings           | ALL   |   490 |
| 1970 | Lake            | ALL   |   368 |
| 1970 | Lassen          | ALL   |   161 |
| 1970 | Los Angeles     | ALL   | 62192 |
| 1970 | Madera          | ALL   |   437 |
| 1970 | Marin           | ALL   |  1460 |
| 1970 | Mariposa        | ALL   |    77 |
| 1970 | Mendocino       | ALL   |   532 |
| 1970 | Merced          | ALL   |   787 |
| 1970 | Modoc           | ALL   |   102 |
| 1970 | Mono            | ALL   |  NULL |
| 1970 | Monterey        | ALL   |  1759 |
| 1970 | Napa            | ALL   |   879 |
| 1970 | Nevada          | ALL   |   336 |
| 1970 | Orange          | ALL   |  8549 |
| 1970 | Placer          | ALL   |   728 |
| 1970 | Plumas          | ALL   |   109 |
| 1970 | Riverside       | ALL   |  4540 |
| 1970 | Sacramento      | ALL   |  4893 |
| 1970 | San Benito      | ALL   |   174 |
| 1970 | San Bernardino  | ALL   |  5636 |
| 1970 | San Diego       | ALL   | 10006 |
| 1970 | San Francisco   | ALL   |  8979 |
| 1970 | San Joaquin     | ALL   |  2712 |
| 1970 | San Luis Obispo | ALL   |  1030 |
| 1970 | San Mateo       | ALL   |  3946 |
| 1970 | Santa Barbara   | ALL   |  1992 |
| 1970 | Santa Clara     | ALL   |  6162 |
| 1970 | Santa Cruz      | ALL   |  1625 |
| 1970 | Shasta          | ALL   |   716 |
| 1970 | Sierra          | ALL   |    27 |
| 1970 | Siskiyou        | ALL   |   363 |
| 1970 | Solano          | ALL   |  1190 |
| 1970 | Sonoma          | ALL   |  2148 |
| 1970 | Stanislaus      | ALL   |  1728 |
| 1970 | Sutter          | ALL   |   343 |
| 1970 | Tehama          | ALL   |   308 |
| 1970 | Trinity         | ALL   |    78 |
| 1970 | Tulare          | ALL   |  1745 |
| 1970 | Tuolumne        | ALL   |   219 |
| 1970 | Ventura         | ALL   |  2212 |
| 1970 | Yolo            | ALL   |   627 |
| 1970 | Yuba            | ALL   |   347 |
+------+-----------------+-------+-------+
58 rows in set (0.00 sec)


mysql> select year, county, cause, count from death_profiles_by_county
       where year = 1979 and month is NULL and strata = 'Total Population' and
           strata_name = 'Total Population' and geography_type = 'Residence' and cause = 'HOM';
+------+-----------------+-------+-------+
| year | county          | cause | count |
+------+-----------------+-------+-------+
| 1979 | Alameda         | HOM   |   120 |
| 1979 | Alpine          | HOM   |     0 |
| 1979 | Amador          | HOM   |  NULL |
| 1979 | Butte           | HOM   |  NULL |
| 1979 | Calaveras       | HOM   |     0 |
| 1979 | Colusa          | HOM   |  NULL |
| 1979 | Contra Costa    | HOM   |    58 |
| 1979 | Del Norte       | HOM   |  NULL |
| 1979 | El Dorado       | HOM   |  NULL |
| 1979 | Fresno          | HOM   |    79 |
| 1979 | Glenn           | HOM   |  NULL |
| 1979 | Humboldt        | HOM   |  NULL |
| 1979 | Imperial        | HOM   |    18 |
| 1979 | Inyo            | HOM   |  NULL |
| 1979 | Kern            | HOM   |    67 |
| 1979 | Kings           | HOM   |  NULL |
| 1979 | Lake            | HOM   |  NULL |
| 1979 | Lassen          | HOM   |  NULL |
| 1979 | Los Angeles     | HOM   |  1481 |
| 1979 | Madera          | HOM   |    11 |
| 1979 | Marin           | HOM   |    11 |
| 1979 | Mariposa        | HOM   |     0 |
| 1979 | Mendocino       | HOM   |  NULL |
| 1979 | Merced          | HOM   |  NULL |
| 1979 | Modoc           | HOM   |  NULL |
| 1979 | Mono            | HOM   |     0 |
| 1979 | Monterey        | HOM   |    34 |
| 1979 | Napa            | HOM   |  NULL |
| 1979 | Nevada          | HOM   |  NULL |
| 1979 | Orange          | HOM   |    99 |
| 1979 | Placer          | HOM   |  NULL |
| 1979 | Plumas          | HOM   |     0 |
| 1979 | Riverside       | HOM   |    79 |
| 1979 | Sacramento      | HOM   |    86 |
| 1979 | San Benito      | HOM   |  NULL |
| 1979 | San Bernardino  | HOM   |   110 |
| 1979 | San Diego       | HOM   |   146 |
| 1979 | San Francisco   | HOM   |   110 |
| 1979 | San Joaquin     | HOM   |    44 |
| 1979 | San Luis Obispo | HOM   |    13 |
| 1979 | San Mateo       | HOM   |    39 |
| 1979 | Santa Barbara   | HOM   |    23 |
| 1979 | Santa Clara     | HOM   |    74 |
| 1979 | Santa Cruz      | HOM   |    11 |
| 1979 | Shasta          | HOM   |  NULL |
| 1979 | Sierra          | HOM   |     0 |
| 1979 | Siskiyou        | HOM   |  NULL |
| 1979 | Solano          | HOM   |    23 |
| 1979 | Sonoma          | HOM   |    17 |
| 1979 | Stanislaus      | HOM   |    30 |
| 1979 | Sutter          | HOM   |  NULL |
| 1979 | Tehama          | HOM   |     0 |
| 1979 | Trinity         | HOM   |  NULL |
| 1979 | Tulare          | HOM   |    27 |
| 1979 | Tuolumne        | HOM   |  NULL |
| 1979 | Ventura         | HOM   |    53 |
| 1979 | Yolo            | HOM   |  NULL |
| 1979 | Yuba            | HOM   |  NULL |
+------+-----------------+-------+-------+
58 rows in set (0.03 sec)


