-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1


--
-- Table structure for table `authorized_wic_vendors`
--

DROP TABLE IF EXISTS `authorized_wic_vendors`;
CREATE TABLE `authorized_wic_vendors` (
  `vendor` varchar(127) DEFAULT NULL,
  `address1` varchar(127) DEFAULT NULL,
  `address2` varchar(127) DEFAULT NULL,
  `city` varchar(31) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `latitude` varchar(13) DEFAULT NULL,
  `longitude` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `_id` int DEFAULT NULL,
  `title` varchar(153) DEFAULT NULL,
  `description` text,
  `department` varchar(49) DEFAULT NULL,
  `program` varchar(379) DEFAULT NULL,
  `contact_email` varchar(43) DEFAULT NULL,
  `homepage_url` varchar(203) DEFAULT NULL,
  `temporal_coverage` varchar(889) DEFAULT NULL,
  `spatial_geographic_coverage` varchar(549) DEFAULT NULL,
  `geographic_granularity` varchar(26) DEFAULT NULL,
  `language` varchar(17) DEFAULT NULL,
  `frequency` varchar(13) DEFAULT NULL,
  `de_identification_method` varchar(845) DEFAULT NULL,
  `source_link` varchar(203) DEFAULT NULL,
  `data_collection_tool` text,
  `license` varchar(12) DEFAULT NULL,
  `limitations` varchar(11) DEFAULT NULL,
  `additional_limitations` text,
  `additional_information` text,
  `related_resources` varchar(480) DEFAULT NULL,
  `secondary_sources` varchar(859) DEFAULT NULL,
  `citation` varchar(624) DEFAULT NULL,
  `created` varchar(26) DEFAULT NULL,
  `last_updated` varchar(26) DEFAULT NULL,
  `topic` varchar(58) DEFAULT NULL,
  `tags` text,
  `dataset_url` varchar(155) DEFAULT NULL,
  `dataset_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_cdm`
--

DROP TABLE IF EXISTS `chargemasters_cdm`;
CREATE TABLE `chargemasters_cdm` (
  `file_pk` int DEFAULT NULL,
  `code` varchar(31) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `charge_str` varchar(63) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_column_heads`
--

DROP TABLE IF EXISTS `chargemasters_column_heads`;
CREATE TABLE `chargemasters_column_heads` (
  `file_pk` int DEFAULT NULL,
  `sheet` varchar(127) DEFAULT NULL,
  `code_head` varchar(5) DEFAULT NULL,
  `desc_head` varchar(5) DEFAULT NULL,
  `cost_head` varchar(5) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_common25`
--

DROP TABLE IF EXISTS `chargemasters_common25`;
CREATE TABLE `chargemasters_common25` (
  `file_pk` int DEFAULT NULL,
  `procedure_desc` varchar(1027) DEFAULT NULL,
  `cpt_code` varchar(31) DEFAULT NULL,
  `charge_str` varchar(31) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  KEY `charge_str` (`charge_str`),
  KEY `charge` (`charge`),
  KEY `file_pk` (`file_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_cpt_codes`
--

DROP TABLE IF EXISTS `chargemasters_cpt_codes`;
CREATE TABLE `chargemasters_cpt_codes` (
  `cpt_code` varchar(11) DEFAULT NULL,
  `cpt_desc` varchar(1027) DEFAULT NULL,
  `file_pk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_dirs`
--

DROP TABLE IF EXISTS `chargemasters_dirs`;
CREATE TABLE `chargemasters_dirs` (
  `pk` int NOT NULL,
  `directory` varchar(1027) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `hcai_id` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_files`
--

DROP TABLE IF EXISTS `chargemasters_files`;
CREATE TABLE `chargemasters_files` (
  `pk` int NOT NULL,
  `dir_pk` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `hcai_id` varchar(15) DEFAULT NULL,
  `file_type` varchar(15) DEFAULT NULL,
  `file_ext` varchar(4) DEFAULT NULL,
  `common25` int DEFAULT NULL,
  PRIMARY KEY (`pk`),
  KEY `hcai_id` (`hcai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_hcai_ids`
--

DROP TABLE IF EXISTS `chargemasters_hcai_ids`;
CREATE TABLE `chargemasters_hcai_ids` (
  `directory` varchar(255) DEFAULT NULL,
  `hcai_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_tabs`
--

DROP TABLE IF EXISTS `chargemasters_tabs`;
CREATE TABLE `chargemasters_tabs` (
  `file_pk` int DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths`
--

DROP TABLE IF EXISTS `deaths`;
CREATE TABLE `deaths` (
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `geography_type` varchar(31) DEFAULT NULL,
  `strata` varchar(31) DEFAULT NULL,
  `strata_name` varchar(63) DEFAULT NULL,
  `cause` varchar(31) DEFAULT NULL,
  `cause_desc` varchar(63) DEFAULT NULL,
  `icd_revision` varchar(31) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `annotation_code` varchar(31) DEFAULT NULL,
  `annotation_desc` varchar(63) DEFAULT NULL,
  `data_extract_date` varchar(31) DEFAULT NULL,
  `data_revision_date` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `facility_admins`
--

DROP TABLE IF EXISTS `facility_admins`;
CREATE TABLE `facility_admins` (
  `fac_id` varchar(15) DEFAULT NULL,
  `name` varchar(127) DEFAULT NULL,
  `email` varchar(127) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `facility_hospitals`
--

DROP TABLE IF EXISTS `facility_hospitals`;
CREATE TABLE `facility_hospitals` (
  `fac_id` varchar(15) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthcare_facilities`
--

DROP TABLE IF EXISTS `healthcare_facilities`;
CREATE TABLE `healthcare_facilities` (
  `licensed_certified` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `t18_19` varchar(31) DEFAULT NULL,
  `facid` char(9) DEFAULT NULL,
  `fac_status_type_code` varchar(31) DEFAULT NULL,
  `aspen_facid` varchar(255) DEFAULT NULL,
  `ccn` varchar(31) DEFAULT NULL,
  `terminat_sw` char(1) DEFAULT NULL,
  `participation_date` varchar(255) DEFAULT NULL,
  `approval_date` varchar(255) DEFAULT NULL,
  `npi` varchar(11) DEFAULT NULL,
  `can_be_deemed_fac_type` char(1) DEFAULT NULL,
  `can_be_certified_fac_type` char(1) DEFAULT NULL,
  `deemed` varchar(255) DEFAULT NULL,
  `ao_cd` varchar(255) DEFAULT NULL,
  `dmg_efctv_dt` varchar(255) DEFAULT NULL,
  `ao_trmntn_dt` varchar(255) DEFAULT NULL,
  `ao_name` varchar(255) DEFAULT NULL,
  `facname` varchar(255) DEFAULT NULL,
  `fac_type_code` varchar(255) DEFAULT NULL,
  `fac_fdr` varchar(255) DEFAULT NULL,
  `ltc` varchar(255) DEFAULT NULL,
  `capacity` bigint DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(9) DEFAULT NULL,
  `zip9` varchar(9) DEFAULT NULL,
  `facadmin` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_fax` varchar(15) DEFAULT NULL,
  `contact_phone_number` varchar(15) DEFAULT NULL,
  `county_code` varchar(255) DEFAULT NULL,
  `county_name` varchar(255) DEFAULT NULL,
  `district_number` bigint DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `isfacmain` char(1) DEFAULT NULL,
  `parent_facid` varchar(9) DEFAULT NULL,
  `fac_fac_relationship_type_code` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `license_status_description` varchar(255) DEFAULT NULL,
  `initial_license_date` varchar(255) DEFAULT NULL,
  `license_effective_date` varchar(255) DEFAULT NULL,
  `license_expiration_date` varchar(255) DEFAULT NULL,
  `entity_type_description` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `hcai_id` varchar(9) DEFAULT NULL,
  `cclho_code` varchar(255) DEFAULT NULL,
  `cclho_name` varchar(255) DEFAULT NULL,
  `fips_county_code` varchar(255) DEFAULT NULL,
  `birthing_facility_flag` varchar(255) DEFAULT NULL,
  `trauma_ped_ctr` varchar(255) DEFAULT NULL,
  `trauma_ctr` varchar(255) DEFAULT NULL,
  `type_of_care` varchar(255) DEFAULT NULL,
  `critical_access_hospital` varchar(255) DEFAULT NULL,
  `data_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthcare_facilities_across_time`
--

DROP TABLE IF EXISTS `healthcare_facilities_across_time`;
CREATE TABLE `healthcare_facilities_across_time` (
  `state_fiscal_year` char(10) DEFAULT NULL,
  `county_name` varchar(63) DEFAULT NULL,
  `provider_type` varchar(127) DEFAULT NULL,
  `fac_fdr` varchar(127) DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthcare_facilities_digests`
--

DROP TABLE IF EXISTS `healthcare_facilities_digests`;
CREATE TABLE `healthcare_facilities_digests` (
  `facid` char(9) DEFAULT NULL,
  `update_date` char(10) DEFAULT NULL,
  `dgst_sha256` char(64) DEFAULT NULL,
  KEY `facid` (`facid`),
  KEY `facid_2` (`facid`,`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hhs_program_annual_counts`
--

DROP TABLE IF EXISTS `hhs_program_annual_counts`;
CREATE TABLE `hhs_program_annual_counts` (
  `fileyear` varchar(63) DEFAULT NULL,
  `program` varchar(63) DEFAULT NULL,
  `level` varchar(63) DEFAULT NULL,
  `level_num` varchar(63) DEFAULT NULL,
  `person` int DEFAULT NULL,
  `cases` int DEFAULT NULL,
  `medical` int DEFAULT NULL,
  `aca` int DEFAULT NULL,
  `fpact` int DEFAULT NULL,
  `calfresh` int DEFAULT NULL,
  `calworks` int DEFAULT NULL,
  `ihhs` int DEFAULT NULL,
  `child_welfare` int DEFAULT NULL,
  `foster_care` int DEFAULT NULL,
  `dds` int DEFAULT NULL,
  `wic` int DEFAULT NULL,
  `black` int DEFAULT NULL,
  `white` int DEFAULT NULL,
  `hispanic` int DEFAULT NULL,
  `asian_pi` int DEFAULT NULL,
  `native_american` int DEFAULT NULL,
  `other_missing` int DEFAULT NULL,
  `female` int DEFAULT NULL,
  `male` int DEFAULT NULL,
  `unknown_gender` int DEFAULT NULL,
  `age1_missing` int DEFAULT NULL,
  `age_17_and_under` int DEFAULT NULL,
  `age_18_and_over` int DEFAULT NULL,
  `age_18_to_64` int DEFAULT NULL,
  `age_65_and_over` int DEFAULT NULL,
  `age_18_to_59` int DEFAULT NULL,
  `age_60_and_over` int DEFAULT NULL,
  `1_program` int DEFAULT NULL,
  `2_program` int DEFAULT NULL,
  `3_program` int DEFAULT NULL,
  `4_program` int DEFAULT NULL,
  `5_plus_program` int DEFAULT NULL,
  `1_dept` int DEFAULT NULL,
  `2_dept` int DEFAULT NULL,
  `3_dept` int DEFAULT NULL,
  `4_dept` int DEFAULT NULL,
  `fc_age_missing` int DEFAULT NULL,
  `age_0` int DEFAULT NULL,
  `age_1_to_2` int DEFAULT NULL,
  `age_3_to_5` int DEFAULT NULL,
  `age_6_to_10` int DEFAULT NULL,
  `age_11_to_15` int DEFAULT NULL,
  `age_16_to_17` int DEFAULT NULL,
  `age_18_to_20` int DEFAULT NULL,
  `wic_age_adult_missing` int DEFAULT NULL,
  `age_less_than_19` int DEFAULT NULL,
  `age_20_to_24` int DEFAULT NULL,
  `age_25_to_29` int DEFAULT NULL,
  `age_30_to_34` int DEFAULT NULL,
  `age_35_and_over` int DEFAULT NULL,
  `wic_age_child_missing` int DEFAULT NULL,
  `wic_age_0` int DEFAULT NULL,
  `wic_age_1` int DEFAULT NULL,
  `wic_age_2` int DEFAULT NULL,
  `wic_age_3` int DEFAULT NULL,
  `wic_age_4` int DEFAULT NULL,
  `wic_age_5_to_19` int DEFAULT NULL,
  `wic_20_and_over` int DEFAULT NULL,
  KEY `fileyear` (`fileyear`,`program`,`level`,`level_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hhs_program_annual_masks`
--

DROP TABLE IF EXISTS `hhs_program_annual_masks`;
CREATE TABLE `hhs_program_annual_masks` (
  `fileyear` varchar(63) DEFAULT NULL,
  `program` varchar(63) DEFAULT NULL,
  `level` varchar(63) DEFAULT NULL,
  `level_num` varchar(63) DEFAULT NULL,
  `person` varchar(63) DEFAULT NULL,
  `cases` varchar(63) DEFAULT NULL,
  `medical` varchar(63) DEFAULT NULL,
  `aca` varchar(63) DEFAULT NULL,
  `fpact` varchar(63) DEFAULT NULL,
  `calfresh` varchar(63) DEFAULT NULL,
  `calworks` varchar(63) DEFAULT NULL,
  `ihhs` varchar(63) DEFAULT NULL,
  `child_welfare` varchar(63) DEFAULT NULL,
  `foster_care` varchar(63) DEFAULT NULL,
  `dds` varchar(63) DEFAULT NULL,
  `wic` varchar(63) DEFAULT NULL,
  `black` varchar(63) DEFAULT NULL,
  `white` varchar(63) DEFAULT NULL,
  `hispanic` varchar(63) DEFAULT NULL,
  `asian_pi` varchar(63) DEFAULT NULL,
  `native_american` varchar(63) DEFAULT NULL,
  `other_missing` varchar(63) DEFAULT NULL,
  `female` varchar(63) DEFAULT NULL,
  `male` varchar(63) DEFAULT NULL,
  `unknown_gender` varchar(63) DEFAULT NULL,
  `age1_missing` varchar(63) DEFAULT NULL,
  `age_17_and_under` varchar(63) DEFAULT NULL,
  `age_18_and_over` varchar(63) DEFAULT NULL,
  `age_18_to_64` varchar(63) DEFAULT NULL,
  `age_65_and_over` varchar(63) DEFAULT NULL,
  `age_18_to_59` varchar(63) DEFAULT NULL,
  `age_60_and_over` varchar(63) DEFAULT NULL,
  `1_program` varchar(63) DEFAULT NULL,
  `2_program` varchar(63) DEFAULT NULL,
  `3_program` varchar(63) DEFAULT NULL,
  `4_program` varchar(63) DEFAULT NULL,
  `5_plus_program` varchar(63) DEFAULT NULL,
  `1_dept` varchar(63) DEFAULT NULL,
  `2_dept` varchar(63) DEFAULT NULL,
  `3_dept` varchar(63) DEFAULT NULL,
  `4_dept` varchar(63) DEFAULT NULL,
  `fc_age_missing` varchar(63) DEFAULT NULL,
  `age_0` varchar(63) DEFAULT NULL,
  `age_1_to_2` varchar(63) DEFAULT NULL,
  `age_3_to_5` varchar(63) DEFAULT NULL,
  `age_6_to_10` varchar(63) DEFAULT NULL,
  `age_11_to_15` varchar(63) DEFAULT NULL,
  `age_16_to_17` varchar(63) DEFAULT NULL,
  `age_18_to_20` varchar(63) DEFAULT NULL,
  `wic_age_adult_missing` varchar(63) DEFAULT NULL,
  `age_less_than_19` varchar(63) DEFAULT NULL,
  `age_20_to_24` varchar(63) DEFAULT NULL,
  `age_25_to_29` varchar(63) DEFAULT NULL,
  `age_30_to_34` varchar(63) DEFAULT NULL,
  `age_35_and_over` varchar(63) DEFAULT NULL,
  `wic_age_child_missing` varchar(63) DEFAULT NULL,
  `wic_age_0` varchar(63) DEFAULT NULL,
  `wic_age_1` varchar(63) DEFAULT NULL,
  `wic_age_2` varchar(63) DEFAULT NULL,
  `wic_age_3` varchar(63) DEFAULT NULL,
  `wic_age_4` varchar(63) DEFAULT NULL,
  `wic_age_5_to_19` varchar(63) DEFAULT NULL,
  `wic_20_and_over` varchar(63) DEFAULT NULL,
  KEY `fileyear` (`fileyear`,`program`,`level`,`level_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hhs_program_july_counts`
--

DROP TABLE IF EXISTS `hhs_program_july_counts`;
CREATE TABLE `hhs_program_july_counts` (
  `fileyear` varchar(63) DEFAULT NULL,
  `program` varchar(63) DEFAULT NULL,
  `level` varchar(63) DEFAULT NULL,
  `level_num` varchar(63) DEFAULT NULL,
  `person` int DEFAULT NULL,
  `cases` int DEFAULT NULL,
  `medical` int DEFAULT NULL,
  `aca` int DEFAULT NULL,
  `fpact` int DEFAULT NULL,
  `calfresh` int DEFAULT NULL,
  `calworks` int DEFAULT NULL,
  `ihhs` int DEFAULT NULL,
  `child_welfare` int DEFAULT NULL,
  `foster_care` int DEFAULT NULL,
  `dds` int DEFAULT NULL,
  `wic` int DEFAULT NULL,
  `black` int DEFAULT NULL,
  `white` int DEFAULT NULL,
  `hispanic` int DEFAULT NULL,
  `asian_pi` int DEFAULT NULL,
  `native_american` int DEFAULT NULL,
  `other_missing` int DEFAULT NULL,
  `female` int DEFAULT NULL,
  `male` int DEFAULT NULL,
  `unknown_gender` int DEFAULT NULL,
  `age1_missing` int DEFAULT NULL,
  `age_17_and_under` int DEFAULT NULL,
  `age_18_and_over` int DEFAULT NULL,
  `age_18_to_64` int DEFAULT NULL,
  `age_65_and_over` int DEFAULT NULL,
  `age_18_to_59` int DEFAULT NULL,
  `age_60_and_over` int DEFAULT NULL,
  `1_program` int DEFAULT NULL,
  `2_program` int DEFAULT NULL,
  `3_program` int DEFAULT NULL,
  `4_program` int DEFAULT NULL,
  `5_plus_program` int DEFAULT NULL,
  `1_dept` int DEFAULT NULL,
  `2_dept` int DEFAULT NULL,
  `3_dept` int DEFAULT NULL,
  `4_dept` int DEFAULT NULL,
  `fc_age_missing` int DEFAULT NULL,
  `age_0` int DEFAULT NULL,
  `age_1_to_2` int DEFAULT NULL,
  `age_3_to_5` int DEFAULT NULL,
  `age_6_to_10` int DEFAULT NULL,
  `age_11_to_15` int DEFAULT NULL,
  `age_16_to_17` int DEFAULT NULL,
  `age_18_to_20` int DEFAULT NULL,
  `wic_age_adult_missing` int DEFAULT NULL,
  `age_less_than_19` int DEFAULT NULL,
  `age_20_to_24` int DEFAULT NULL,
  `age_25_to_29` int DEFAULT NULL,
  `age_30_to_34` int DEFAULT NULL,
  `age_35_and_over` int DEFAULT NULL,
  `wic_age_child_missing` int DEFAULT NULL,
  `wic_age_0` int DEFAULT NULL,
  `wic_age_1` int DEFAULT NULL,
  `wic_age_2` int DEFAULT NULL,
  `wic_age_3` int DEFAULT NULL,
  `wic_age_4` int DEFAULT NULL,
  `wic_age_5_to_19` int DEFAULT NULL,
  `wic_20_and_over` int DEFAULT NULL,
  KEY `fileyear` (`fileyear`,`program`,`level`,`level_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hhs_program_july_masks`
--

DROP TABLE IF EXISTS `hhs_program_july_masks`;
CREATE TABLE `hhs_program_july_masks` (
  `fileyear` varchar(63) DEFAULT NULL,
  `program` varchar(63) DEFAULT NULL,
  `level` varchar(63) DEFAULT NULL,
  `level_num` varchar(63) DEFAULT NULL,
  `person` varchar(63) DEFAULT NULL,
  `cases` varchar(63) DEFAULT NULL,
  `medical` varchar(63) DEFAULT NULL,
  `aca` varchar(63) DEFAULT NULL,
  `fpact` varchar(63) DEFAULT NULL,
  `calfresh` varchar(63) DEFAULT NULL,
  `calworks` varchar(63) DEFAULT NULL,
  `ihhs` varchar(63) DEFAULT NULL,
  `child_welfare` varchar(63) DEFAULT NULL,
  `foster_care` varchar(63) DEFAULT NULL,
  `dds` varchar(63) DEFAULT NULL,
  `wic` varchar(63) DEFAULT NULL,
  `black` varchar(63) DEFAULT NULL,
  `white` varchar(63) DEFAULT NULL,
  `hispanic` varchar(63) DEFAULT NULL,
  `asian_pi` varchar(63) DEFAULT NULL,
  `native_american` varchar(63) DEFAULT NULL,
  `other_missing` varchar(63) DEFAULT NULL,
  `female` varchar(63) DEFAULT NULL,
  `male` varchar(63) DEFAULT NULL,
  `unknown_gender` varchar(63) DEFAULT NULL,
  `age1_missing` varchar(63) DEFAULT NULL,
  `age_17_and_under` varchar(63) DEFAULT NULL,
  `age_18_and_over` varchar(63) DEFAULT NULL,
  `age_18_to_64` varchar(63) DEFAULT NULL,
  `age_65_and_over` varchar(63) DEFAULT NULL,
  `age_18_to_59` varchar(63) DEFAULT NULL,
  `age_60_and_over` varchar(63) DEFAULT NULL,
  `1_program` varchar(63) DEFAULT NULL,
  `2_program` varchar(63) DEFAULT NULL,
  `3_program` varchar(63) DEFAULT NULL,
  `4_program` varchar(63) DEFAULT NULL,
  `5_plus_program` varchar(63) DEFAULT NULL,
  `1_dept` varchar(63) DEFAULT NULL,
  `2_dept` varchar(63) DEFAULT NULL,
  `3_dept` varchar(63) DEFAULT NULL,
  `4_dept` varchar(63) DEFAULT NULL,
  `fc_age_missing` varchar(63) DEFAULT NULL,
  `age_0` varchar(63) DEFAULT NULL,
  `age_1_to_2` varchar(63) DEFAULT NULL,
  `age_3_to_5` varchar(63) DEFAULT NULL,
  `age_6_to_10` varchar(63) DEFAULT NULL,
  `age_11_to_15` varchar(63) DEFAULT NULL,
  `age_16_to_17` varchar(63) DEFAULT NULL,
  `age_18_to_20` varchar(63) DEFAULT NULL,
  `wic_age_adult_missing` varchar(63) DEFAULT NULL,
  `age_less_than_19` varchar(63) DEFAULT NULL,
  `age_20_to_24` varchar(63) DEFAULT NULL,
  `age_25_to_29` varchar(63) DEFAULT NULL,
  `age_30_to_34` varchar(63) DEFAULT NULL,
  `age_35_and_over` varchar(63) DEFAULT NULL,
  `wic_age_child_missing` varchar(63) DEFAULT NULL,
  `wic_age_0` varchar(63) DEFAULT NULL,
  `wic_age_1` varchar(63) DEFAULT NULL,
  `wic_age_2` varchar(63) DEFAULT NULL,
  `wic_age_3` varchar(63) DEFAULT NULL,
  `wic_age_4` varchar(63) DEFAULT NULL,
  `wic_age_5_to_19` varchar(63) DEFAULT NULL,
  `wic_20_and_over` varchar(63) DEFAULT NULL,
  KEY `fileyear` (`fileyear`,`program`,`level`,`level_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_buildings`
--

DROP TABLE IF EXISTS `hospital_buildings`;
CREATE TABLE `hospital_buildings` (
  `county_code` varchar(31) DEFAULT NULL,
  `perm_id` varchar(11) DEFAULT NULL,
  `facility_name` varchar(127) DEFAULT NULL,
  `city` varchar(31) DEFAULT NULL,
  `building_nbr` varchar(63) DEFAULT NULL,
  `building_name` varchar(127) DEFAULT NULL,
  `building_status` varchar(31) DEFAULT NULL,
  `spc_rating` varchar(3) DEFAULT NULL,
  `building_url` varchar(255) DEFAULT NULL,
  `height_ft` int DEFAULT NULL,
  `stories` int DEFAULT NULL,
  `building_code` varchar(63) DEFAULT NULL,
  `building_code_year` int DEFAULT NULL,
  `year_completed` int DEFAULT NULL,
  `ab_1882_notice` varchar(255) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inpatient_death_causes`
--

DROP TABLE IF EXISTS `inpatient_death_causes`;
CREATE TABLE `inpatient_death_causes` (
  `icdcm_code` varchar(31) NOT NULL,
  `diagnosis_description` varchar(1027) DEFAULT NULL,
  PRIMARY KEY (`icdcm_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inpatient_deaths`
--

DROP TABLE IF EXISTS `inpatient_deaths`;
CREATE TABLE `inpatient_deaths` (
  `icdcm_code` varchar(31) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inpatient_diagnoses`
--

DROP TABLE IF EXISTS `inpatient_diagnoses`;
CREATE TABLE `inpatient_diagnoses` (
  `icdcm_code` varchar(31) DEFAULT NULL,
  `diagnosis_description` varchar(1027) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inpatient_diagnosis`
--

DROP TABLE IF EXISTS `inpatient_diagnosis`;
CREATE TABLE `inpatient_diagnosis` (
  `icdcm_code` varchar(31) DEFAULT NULL,
  `diagnosis_description` varchar(1027) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inpatient_procedures`
--

DROP TABLE IF EXISTS `inpatient_procedures`;
CREATE TABLE `inpatient_procedures` (
  `icdpcs_code` varchar(31) DEFAULT NULL,
  `procedure_description` varchar(1027) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_facilities`
--

DROP TABLE IF EXISTS `licensed_facilities`;
CREATE TABLE `licensed_facilities` (
  `period` char(8) DEFAULT NULL,
  `oshpd_id` varchar(63) DEFAULT NULL,
  `facility_name` varchar(127) DEFAULT NULL,
  `license_num` varchar(63) DEFAULT NULL,
  `facility_level_desc` varchar(63) DEFAULT NULL,
  `dba_address1` varchar(63) DEFAULT NULL,
  `dba_city` varchar(63) DEFAULT NULL,
  `dba_zip_code` varchar(10) DEFAULT NULL,
  `county_code` varchar(2) DEFAULT NULL,
  `county_name` varchar(63) DEFAULT NULL,
  `er_service_level_desc` varchar(63) DEFAULT NULL,
  `total_number_beds` int DEFAULT NULL,
  `facility_status_desc` varchar(63) DEFAULT NULL,
  `facility_status_date` varchar(63) DEFAULT NULL,
  `license_type_desc` varchar(63) DEFAULT NULL,
  `license_category_desc` varchar(63) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `payments_snapshot_enrollment`
--

DROP TABLE IF EXISTS `payments_snapshot_enrollment`;
CREATE TABLE `payments_snapshot_enrollment` (
  `product_type` varchar(63) DEFAULT NULL,
  `reporting_year` int DEFAULT NULL,
  `claim_type` varchar(63) DEFAULT NULL,
  `payer_type` varchar(63) DEFAULT NULL,
  `record_type` varchar(63) DEFAULT NULL,
  `metric_id` int DEFAULT NULL,
  `metric_name` varchar(63) DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `payments_snapshot_medical`
--

DROP TABLE IF EXISTS `payments_snapshot_medical`;
CREATE TABLE `payments_snapshot_medical` (
  `procedure_code` char(5) DEFAULT NULL,
  `procedure_code_type` varchar(31) DEFAULT NULL,
  `procedure_category` varchar(127) DEFAULT NULL,
  `reporting_year` int DEFAULT NULL,
  `type_of_setting` varchar(63) DEFAULT NULL,
  `payer_type` varchar(63) DEFAULT NULL,
  `record_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `payments_snapshot_pharmaceutical`
--

DROP TABLE IF EXISTS `payments_snapshot_pharmaceutical`;
CREATE TABLE `payments_snapshot_pharmaceutical` (
  `national_drug_code` char(11) DEFAULT NULL,
  `drug_name` varchar(63) DEFAULT NULL,
  `reporting_year` int DEFAULT NULL,
  `drug_class` varchar(63) DEFAULT NULL,
  `brand_generic` varchar(63) DEFAULT NULL,
  `payer_type` varchar(63) DEFAULT NULL,
  `prescription_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pccu_facilities`
--

DROP TABLE IF EXISTS `pccu_facilities`;
CREATE TABLE `pccu_facilities` (
  `pk` int NOT NULL,
  `sheetname` varchar(63) DEFAULT NULL,
  `file_pk` int DEFAULT NULL,
  `fac_acquire_equip_over_500k` char(1) DEFAULT NULL,
  `fac_address_one` varchar(127) DEFAULT NULL,
  `fac_address_two` varchar(63) DEFAULT NULL,
  `fac_admin_name` varchar(127) DEFAULT NULL,
  `fac_city` varchar(63) DEFAULT NULL,
  `fac_name` varchar(127) DEFAULT NULL,
  `fac_no` int DEFAULT NULL,
  `fac_operated_this_yr` char(1) DEFAULT NULL,
  `fac_oper_curryr` varchar(11) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(19) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(19) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(127) DEFAULT NULL,
  `fac_par_corp_city` varchar(63) DEFAULT NULL,
  `fac_par_corp_name` varchar(127) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(15) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_str_addr` varchar(127) DEFAULT NULL,
  `fac_zip` varchar(15) DEFAULT NULL,
  `fac_zipcode` varchar(15) DEFAULT NULL,
  `pcc_health_serv_medical` char(1) DEFAULT NULL,
  `pcc_health_serv_dental` char(1) DEFAULT NULL,
  `pcc_health_serv_vision` char(1) DEFAULT NULL,
  `pcc_health_serv_mental_health` char(1) DEFAULT NULL,
  `pcc_health_serv_substance_abuse` char(1) DEFAULT NULL,
  `pcc_health_serv_domestic_violence` char(1) DEFAULT NULL,
  `pcc_health_serv_basic_lab` char(1) DEFAULT NULL,
  `pcc_health_serv_radiological_services` char(1) DEFAULT NULL,
  `pcc_health_serv_urgent_care` char(1) DEFAULT NULL,
  `pcc_health_serv_pharmacy` char(1) DEFAULT NULL,
  `pcc_health_serv_womens_health` char(1) DEFAULT NULL,
  `parent_address_one` varchar(127) DEFAULT NULL,
  `parent_address_two` varchar(63) DEFAULT NULL,
  `parent_city` varchar(127) DEFAULT NULL,
  `parent_name` varchar(127) DEFAULT NULL,
  `parent_state` varchar(15) DEFAULT NULL,
  `parent_zipcode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pk`),
  UNIQUE KEY `file_pk` (`file_pk`,`fac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pccu_files`
--

DROP TABLE IF EXISTS `pccu_files`;
CREATE TABLE `pccu_files` (
  `pk` int NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `tag` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `providers_suspended_ineligible`
--

DROP TABLE IF EXISTS `providers_suspended_ineligible`;
CREATE TABLE `providers_suspended_ineligible` (
  `last_name` varchar(127) DEFAULT NULL,
  `first_name` varchar(63) DEFAULT NULL,
  `middle_name` varchar(63) DEFAULT NULL,
  `doing_business_as` varchar(511) DEFAULT NULL,
  `address` varchar(511) DEFAULT NULL,
  `provider_type` varchar(255) DEFAULT NULL,
  `license_number` varchar(63) DEFAULT NULL,
  `provider_number` varchar(1027) DEFAULT NULL,
  `date_of_suspension` varchar(10) DEFAULT NULL,
  `active_period` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `dataset_id` varchar(127) DEFAULT NULL,
  `updated` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `watershed_cases`
--

DROP TABLE IF EXISTS `watershed_cases`;
CREATE TABLE `watershed_cases` (
  `episode_date` char(10) DEFAULT NULL,
  `site_pk` int DEFAULT NULL,
  `masked` char(1) DEFAULT NULL,
  `cases` int DEFAULT NULL,
  `cum_cases` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `watershed_sites`
--

DROP TABLE IF EXISTS `watershed_sites`;
CREATE TABLE `watershed_sites` (
  `pk` int NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `area_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wic_products`
--

DROP TABLE IF EXISTS `wic_products`;
CREATE TABLE `wic_products` (
  `upc` varchar(15) DEFAULT NULL,
  `category` char(2) DEFAULT NULL,
  `cat_desc` varchar(127) DEFAULT NULL,
  `sub_category` char(3) DEFAULT NULL,
  `sub_cat_desc` varchar(127) DEFAULT NULL,
  `prod_desc_and_size` varchar(127) DEFAULT NULL,
  `uom` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dump completed on 2024-08-02 13:49:52
