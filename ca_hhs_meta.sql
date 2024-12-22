-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs_meta
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1


--
-- Table structure for table `csv_sources`
--

DROP TABLE IF EXISTS `csv_sources`;
CREATE TABLE `csv_sources` (
  `ds_pk` int DEFAULT NULL,
  `auto_run` tinyint DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `datasets`
--

DROP TABLE IF EXISTS `datasets`;
CREATE TABLE `datasets` (
  `pk` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`),
  UNIQUE KEY `name_2` (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
CREATE TABLE `extensions` (
  `ds_pk` int DEFAULT NULL,
  `is_dict` tinyint DEFAULT NULL,
  `extension` varchar(127) DEFAULT NULL,
  KEY `extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `ds_pk` int DEFAULT NULL,
  `updated` bigint DEFAULT NULL,
  `result` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dump completed on 2024-12-20 23:33:52
