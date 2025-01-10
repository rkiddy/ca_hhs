-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.20.04.1


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
-- Table structure for table `chargemasters_columns`
--

DROP TABLE IF EXISTS `chargemasters_columns`;
CREATE TABLE `chargemasters_columns` (
  `file_pk` int DEFAULT NULL,
  `sheet_name` varchar(127) DEFAULT NULL,
  `key_str` varchar(5) DEFAULT NULL,
  `val_str` varchar(1023) DEFAULT NULL,
  KEY `file_pk` (`file_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_common25`
--

DROP TABLE IF EXISTS `chargemasters_common25`;
CREATE TABLE `chargemasters_common25` (
  `file_pk` int DEFAULT NULL,
  `procedure_desc` varchar(1027) DEFAULT NULL,
  `cpt_code` varchar(31) DEFAULT NULL,
  `cpt_code_fixed` varchar(11) DEFAULT NULL,
  `charge_str` varchar(700) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  KEY `charge_str` (`charge_str`),
  KEY `charge` (`charge`),
  KEY `file_pk` (`file_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_dirs`
--

DROP TABLE IF EXISTS `chargemasters_dirs`;
CREATE TABLE `chargemasters_dirs` (
  `pk` int NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `oshpd_id` char(9) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`pk`),
  KEY `hcai_id` (`oshpd_id`)
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
  `oshpd_id` char(9) DEFAULT NULL,
  `file_type` varchar(15) DEFAULT NULL,
  `file_ext` varchar(63) DEFAULT NULL,
  `common25` int DEFAULT NULL,
  PRIMARY KEY (`pk`),
  UNIQUE KEY `full_name_2` (`full_name`),
  KEY `file_ext` (`file_ext`),
  KEY `full_name` (`full_name`),
  KEY `dir_pk` (`dir_pk`),
  KEY `hcai_id` (`oshpd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chargemasters_sheets`
--

DROP TABLE IF EXISTS `chargemasters_sheets`;
CREATE TABLE `chargemasters_sheets` (
  `file_pk` int DEFAULT NULL,
  `name` varchar(127) DEFAULT NULL,
  `sheet_type` varchar(15) DEFAULT NULL,
  `elements_read` int DEFAULT '0',
  `errors_found` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_buildings`
--

DROP TABLE IF EXISTS `hospital_buildings`;
CREATE TABLE `hospital_buildings` (
  `county_code` varchar(20) DEFAULT NULL,
  `perm_id` varchar(5) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `building_nbr` varchar(9) DEFAULT NULL,
  `building_name` varchar(87) DEFAULT NULL,
  `building_status` varchar(40) DEFAULT NULL,
  `spc_rating` varchar(3) DEFAULT NULL,
  `building_url` varchar(144) DEFAULT NULL,
  `height_ft` varchar(6) DEFAULT NULL,
  `stories` varchar(2) DEFAULT NULL,
  `building_code` varchar(35) DEFAULT NULL,
  `building_code_year` varchar(4) DEFAULT NULL,
  `year_completed` varchar(4) DEFAULT NULL,
  `ab_1882_notice` varchar(118) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `count` varchar(1) DEFAULT NULL
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


-- Dump completed on 2025-01-08 12:18:16

