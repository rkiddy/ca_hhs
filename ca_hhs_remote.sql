-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.20.04.1


--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `_id` varchar(4) DEFAULT NULL,
  `title` varchar(152) DEFAULT NULL,
  `description` text,
  `department` varchar(48) DEFAULT NULL,
  `program` text,
  `contact_email` varchar(43) DEFAULT NULL,
  `homepage_url` varchar(193) DEFAULT NULL,
  `temporal_coverage` text,
  `spatial_geographic_coverage` text,
  `geographic_granularity` varchar(26) DEFAULT NULL,
  `language` varchar(17) DEFAULT NULL,
  `frequency` varchar(13) DEFAULT NULL,
  `de_identification_method` text,
  `source_link` varchar(193) DEFAULT NULL,
  `data_collection_tool` text,
  `license` varchar(12) DEFAULT NULL,
  `limitations` varchar(11) DEFAULT NULL,
  `additional_limitations` text,
  `additional_information` text,
  `related_resources` text,
  `secondary_sources` text,
  `citation` text,
  `created` varchar(26) DEFAULT NULL,
  `last_updated` varchar(26) DEFAULT NULL,
  `topic` varchar(60) DEFAULT NULL,
  `tags` text,
  `dataset_url` varchar(133) DEFAULT NULL,
  `dataset_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_by_month_by_county`
--

DROP TABLE IF EXISTS `death_profiles_by_month_by_county`;
CREATE TABLE `death_profiles_by_month_by_county` (
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `geography_type` varchar(255) DEFAULT NULL,
  `strata` varchar(255) DEFAULT NULL,
  `strata_name` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `cause_desc` varchar(255) DEFAULT NULL,
  `icd_revision` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `annotation_code` varchar(255) DEFAULT NULL,
  `annotation_desc` varchar(255) DEFAULT NULL,
  `data_revision_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_by_month_by_occurrence`
--

DROP TABLE IF EXISTS `death_profiles_by_month_by_occurrence`;
CREATE TABLE `death_profiles_by_month_by_occurrence` (
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `geography_type` varchar(255) DEFAULT NULL,
  `strata` varchar(255) DEFAULT NULL,
  `strata_name` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `cause_desc` varchar(255) DEFAULT NULL,
  `icd_revision` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `annotation_code` varchar(255) DEFAULT NULL,
  `annotation_desc` varchar(255) DEFAULT NULL,
  `data_revision_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_by_month_by_residence`
--

DROP TABLE IF EXISTS `death_profiles_by_month_by_residence`;
CREATE TABLE `death_profiles_by_month_by_residence` (
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `geography_type` varchar(255) DEFAULT NULL,
  `strata` varchar(255) DEFAULT NULL,
  `strata_name` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `cause_desc` varchar(255) DEFAULT NULL,
  `icd_revision` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `annotation_code` varchar(255) DEFAULT NULL,
  `annotation_desc` varchar(255) DEFAULT NULL,
  `data_revision_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_by_year`
--

DROP TABLE IF EXISTS `death_profiles_by_year`;
CREATE TABLE `death_profiles_by_year` (
  `year` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `geography_type` varchar(255) DEFAULT NULL,
  `strata` varchar(255) DEFAULT NULL,
  `strata_name` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `cause_desc` varchar(255) DEFAULT NULL,
  `icd_revision` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `annotation_code` varchar(255) DEFAULT NULL,
  `annotation_desc` varchar(255) DEFAULT NULL,
  `data_revision_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_provisional_by_month_by_county`
--

DROP TABLE IF EXISTS `death_profiles_provisional_by_month_by_county`;
CREATE TABLE `death_profiles_provisional_by_month_by_county` (
  `year_str` varchar(4) DEFAULT NULL,
  `month` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `geography_type` varchar(14) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(36) DEFAULT NULL,
  `cause` varchar(5) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(12) DEFAULT NULL,
  `count_num` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(15) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_extract_date` varchar(17) DEFAULT NULL,
  `data_revision_date` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dhcs_county_code_reference_table`
--

DROP TABLE IF EXISTS `dhcs_county_code_reference_table`;
CREATE TABLE `dhcs_county_code_reference_table` (
  `objectid` varchar(11) DEFAULT NULL,
  `dhcs_county_code` varchar(16) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `county_region_code` varchar(18) DEFAULT NULL,
  `county_region_description` varchar(25) DEFAULT NULL,
  `fips_county_code` varchar(16) DEFAULT NULL,
  `fips_state_county_code` varchar(22) DEFAULT NULL,
  `north_south_indicator` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_building_data`
--

DROP TABLE IF EXISTS `hospital_building_data`;
CREATE TABLE `hospital_building_data` (
  `county_code` varchar(20) DEFAULT NULL,
  `perm_id` varchar(7) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `building_nbr` varchar(12) DEFAULT NULL,
  `building_name` varchar(87) DEFAULT NULL,
  `building_status` varchar(40) DEFAULT NULL,
  `spc_rating_` varchar(12) DEFAULT NULL,
  `building_url` varchar(144) DEFAULT NULL,
  `height_ft` varchar(11) DEFAULT NULL,
  `stories` varchar(7) DEFAULT NULL,
  `building_code` varchar(35) DEFAULT NULL,
  `building_code_year` varchar(18) DEFAULT NULL,
  `year_completed` varchar(14) DEFAULT NULL,
  `ab_1882_notice` varchar(118) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `count_num` varchar(5) DEFAULT NULL
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
  `diagnosis_description` varchar(1027) DEFAULT NULL,
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
-- Table structure for table `licensed_healthcare_facility_listing`
--

DROP TABLE IF EXISTS `licensed_healthcare_facility_listing`;
CREATE TABLE `licensed_healthcare_facility_listing` (
  `period` varchar(10) DEFAULT NULL,
  `oshpd_id` char(9) DEFAULT NULL,
  `facility_name` varchar(127) DEFAULT NULL,
  `license_num` varchar(63) DEFAULT NULL,
  `facility_level_desc` varchar(63) DEFAULT NULL,
  `dba_address1` varchar(63) DEFAULT NULL,
  `dba_city` varchar(63) DEFAULT NULL,
  `dba_zip_code` varchar(20) DEFAULT NULL,
  `county_code` varchar(20) DEFAULT NULL,
  `county_name` varchar(63) DEFAULT NULL,
  `er_service_level_desc` varchar(63) DEFAULT NULL,
  `total_number_beds` int DEFAULT NULL,
  `facility_status_desc` varchar(63) DEFAULT NULL,
  `facility_status_date` date DEFAULT NULL,
  `license_type_desc` varchar(63) DEFAULT NULL,
  `license_category_desc` varchar(63) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  KEY `period` (`period`),
  KEY `oshpd_id` (`oshpd_id`),
  KEY `facility_name` (`facility_name`),
  KEY `facility_status_date` (`facility_status_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `modified_retail_food_env`
--

DROP TABLE IF EXISTS `modified_retail_food_env`;
CREATE TABLE `modified_retail_food_env` (
  `ind_id` varchar(63) DEFAULT NULL,
  `ind_definition` varchar(63) DEFAULT NULL,
  `reportyear` varchar(63) DEFAULT NULL,
  `race_eth_code` varchar(63) DEFAULT NULL,
  `race_eth_name` varchar(63) DEFAULT NULL,
  `geotype` varchar(63) DEFAULT NULL,
  `geotypevalue` varchar(63) DEFAULT NULL,
  `geoname` varchar(63) DEFAULT NULL,
  `county_name` varchar(63) DEFAULT NULL,
  `county_fips` varchar(63) DEFAULT NULL,
  `region_name` varchar(63) DEFAULT NULL,
  `region_code` varchar(63) DEFAULT NULL,
  `strata_one_code` varchar(63) DEFAULT NULL,
  `strata_one_name` varchar(63) DEFAULT NULL,
  `strata_two_code` int DEFAULT NULL,
  `strata_two_name` varchar(63) DEFAULT NULL,
  `numerator` int DEFAULT NULL,
  `denominator` int DEFAULT NULL,
  `estimate` float DEFAULT NULL,
  `ll_95ci` float DEFAULT NULL,
  `ul_95ci` float DEFAULT NULL,
  `se` float DEFAULT NULL,
  `rse` float DEFAULT NULL,
  `ca_decile` int DEFAULT NULL,
  `ca_rr` float DEFAULT NULL,
  `version` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `monthly_update_prescription_drugs_introduced`
--

DROP TABLE IF EXISTS `monthly_update_prescription_drugs_introduced`;
CREATE TABLE `monthly_update_prescription_drugs_introduced` (
  `oshpd_id` varchar(9) DEFAULT NULL,
  `manufacturer_name` varchar(138) DEFAULT NULL,
  `date_reported` varchar(13) DEFAULT NULL,
  `ndc_number` varchar(11) DEFAULT NULL,
  `drug_product_description` varchar(246) DEFAULT NULL,
  `wac_effective_date` varchar(18) DEFAULT NULL,
  `wac_increase_amount` varchar(19) DEFAULT NULL,
  `wac_after_increase` varchar(18) DEFAULT NULL,
  `patent_expiration_date` varchar(22) DEFAULT NULL,
  `drug_source_type` varchar(34) DEFAULT NULL,
  `unit_sales_volume_in_us` varchar(23) DEFAULT NULL,
  `unit_sales_volume_non_public_indicator` varchar(38) DEFAULT NULL,
  `gross_sales_us_dollars` varchar(24) DEFAULT NULL,
  `gross_sales_us_dollars_non_public_indicator` varchar(45) DEFAULT NULL,
  `cost_increase_factors` varchar(3707) DEFAULT NULL,
  `cost_increase_factors_non_public_indicator` varchar(42) DEFAULT NULL,
  `change_improvement_description` varchar(779) DEFAULT NULL,
  `change_improvement_non_public_indicator` varchar(39) DEFAULT NULL,
  `acquisition_date` varchar(16) DEFAULT NULL,
  `company_acquired_from` varchar(39) DEFAULT NULL,
  `acquisition_price` varchar(17) DEFAULT NULL,
  `acquisition_price_non_public_indicator` varchar(38) DEFAULT NULL,
  `acquisition_price_comment` varchar(673) DEFAULT NULL,
  `wac_at_acquisition` varchar(18) DEFAULT NULL,
  `wac_year_prior_to_acquisition` varchar(29) DEFAULT NULL,
  `year_drug_introduced_to_market` varchar(30) DEFAULT NULL,
  `wac_at_intro_to_market` varchar(22) DEFAULT NULL,
  `supporting_documents` varchar(76) DEFAULT NULL,
  `general_comments` varchar(1686) DEFAULT NULL
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


-- Dump completed on 2025-01-31 12:33:01
