-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1


--
-- Table structure for table `abortion_services_aid_code_groups`
--

DROP TABLE IF EXISTS `abortion_services_aid_code_groups`;
CREATE TABLE `abortion_services_aid_code_groups` (
  `aid_code_group` varchar(63) DEFAULT NULL,
  `corresponding_aid_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_age_group_and_race`
--

DROP TABLE IF EXISTS `abortion_services_by_age_group_and_race`;
CREATE TABLE `abortion_services_by_age_group_and_race` (
  `calendar_year` int DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `race_ethnicity` varchar(29) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_age_group`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_age_group`;
CREATE TABLE `abortion_services_by_delivery_system_and_age_group` (
  `calendar_year` int DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_aid_group`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_aid_group`;
CREATE TABLE `abortion_services_by_delivery_system_and_aid_group` (
  `calendar_year` int DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `aid_group` varchar(37) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_county`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_county`;
CREATE TABLE `abortion_services_by_delivery_system_and_county` (
  `calendar_year` int DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `total_abortion_related_services` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_age_group`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_age_group`;
CREATE TABLE `abortion_services_expenditures_by_age_group` (
  `calendar_year` int DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_age_group_and_race`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_age_group_and_race`;
CREATE TABLE `abortion_services_expenditures_by_age_group_and_race` (
  `calendar_year` int DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `race_ethnicity` varchar(25) DEFAULT NULL,
  `total_expenditures` varchar(13) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_aid_group`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_aid_group`;
CREATE TABLE `abortion_services_expenditures_by_aid_group` (
  `calendar_year` int DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `aid_group` varchar(37) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_county`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_county`;
CREATE TABLE `abortion_services_expenditures_by_county` (
  `calendar_year` int DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_procedure_codes`
--

DROP TABLE IF EXISTS `abortion_services_procedure_codes`;
CREATE TABLE `abortion_services_procedure_codes` (
  `type_of_code` varchar(5) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL,
  `description` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adolescent_births`
--

DROP TABLE IF EXISTS `adolescent_births`;
CREATE TABLE `adolescent_births` (
  `indicator_name` varchar(21) DEFAULT NULL,
  `age_group` varchar(10) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `category` varchar(39) DEFAULT NULL,
  `subcategory` varchar(26) DEFAULT NULL,
  `numerator` varchar(6) DEFAULT NULL,
  `denominator` varchar(7) DEFAULT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `lower_95_pct_confidence_limit` varchar(5) DEFAULT NULL,
  `upper_95_pct_confidence_limit` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adolescent_births_partial_data`
--

DROP TABLE IF EXISTS `adolescent_births_partial_data`;
CREATE TABLE `adolescent_births_partial_data` (
  `year` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `strata` varchar(9) DEFAULT NULL,
  `strata_name` varchar(8) DEFAULT NULL,
  `population` varchar(7) DEFAULT NULL,
  `births` varchar(5) DEFAULT NULL,
  `abr` varchar(4) DEFAULT NULL,
  `lower_` varchar(4) DEFAULT NULL,
  `upper_` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_demo_by_age_group`
--

DROP TABLE IF EXISTS `adult_demo_by_age_group`;
CREATE TABLE `adult_demo_by_age_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(15) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(6) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_demo_by_language`
--

DROP TABLE IF EXISTS `adult_demo_by_language`;
CREATE TABLE `adult_demo_by_language` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(6) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_demo_by_race_group`
--

DROP TABLE IF EXISTS `adult_demo_by_race_group`;
CREATE TABLE `adult_demo_by_race_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(6) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_demo_by_sex`
--

DROP TABLE IF EXISTS `adult_demo_by_sex`;
CREATE TABLE `adult_demo_by_sex` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(6) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_depression_indicator`
--

DROP TABLE IF EXISTS `adult_depression_indicator`;
CREATE TABLE `adult_depression_indicator` (
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(14) DEFAULT NULL,
  `strata_name` varchar(39) DEFAULT NULL,
  `frequency` varchar(4) DEFAULT NULL,
  `weighted_frequency` varchar(7) DEFAULT NULL,
  `percent` varchar(5) DEFAULT NULL,
  `lower_95pct_cl` varchar(5) DEFAULT NULL,
  `upper_95pct_cl` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_mental_health_services_utilization_by_age_group`
--

DROP TABLE IF EXISTS `adult_mental_health_services_utilization_by_age_group`;
CREATE TABLE `adult_mental_health_services_utilization_by_age_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(15) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_mental_health_services_utilization_by_language`
--

DROP TABLE IF EXISTS `adult_mental_health_services_utilization_by_language`;
CREATE TABLE `adult_mental_health_services_utilization_by_language` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_mental_health_services_utilization_by_race_group`
--

DROP TABLE IF EXISTS `adult_mental_health_services_utilization_by_race_group`;
CREATE TABLE `adult_mental_health_services_utilization_by_race_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_mental_health_services_utilization_by_sex`
--

DROP TABLE IF EXISTS `adult_mental_health_services_utilization_by_sex`;
CREATE TABLE `adult_mental_health_services_utilization_by_sex` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_perf_adult_demo`
--

DROP TABLE IF EXISTS `adult_perf_adult_demo`;
CREATE TABLE `adult_perf_adult_demo` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `demo_grp` varchar(36) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `smhs1_ct` varchar(6) DEFAULT NULL,
  `smhs1_ct_annot` varchar(1) DEFAULT NULL,
  `smhs5_ct` varchar(6) DEFAULT NULL,
  `smhs5_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_perf_adult_smhs_utilization`
--

DROP TABLE IF EXISTS `adult_perf_adult_smhs_utilization`;
CREATE TABLE `adult_perf_adult_smhs_utilization` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `svc_desc` varchar(27) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_perf_adult_snapshot`
--

DROP TABLE IF EXISTS `adult_perf_adult_snapshot`;
CREATE TABLE `adult_perf_adult_snapshot` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(5) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(5) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(6) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(5) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_perf_adult_ttsd`
--

DROP TABLE IF EXISTS `adult_perf_adult_ttsd`;
CREATE TABLE `adult_perf_adult_ttsd` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(5) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(4) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(5) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_snapshot_report_by_age_group`
--

DROP TABLE IF EXISTS `adult_snapshot_report_by_age_group`;
CREATE TABLE `adult_snapshot_report_by_age_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(15) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(5) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(5) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(6) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(4) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_snapshot_report_by_language`
--

DROP TABLE IF EXISTS `adult_snapshot_report_by_language`;
CREATE TABLE `adult_snapshot_report_by_language` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `arrivals_ct` varchar(6) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(5) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(5) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(6) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(5) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_snapshot_report_by_race_group`
--

DROP TABLE IF EXISTS `adult_snapshot_report_by_race_group`;
CREATE TABLE `adult_snapshot_report_by_race_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(5) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(5) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(6) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(4) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_snapshot_report_by_sex`
--

DROP TABLE IF EXISTS `adult_snapshot_report_by_sex`;
CREATE TABLE `adult_snapshot_report_by_sex` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(5) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(5) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(6) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(5) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_time_to_step_down_by_age_group`
--

DROP TABLE IF EXISTS `adult_time_to_step_down_by_age_group`;
CREATE TABLE `adult_time_to_step_down_by_age_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(15) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(4) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(5) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_time_to_step_down_by_language`
--

DROP TABLE IF EXISTS `adult_time_to_step_down_by_language`;
CREATE TABLE `adult_time_to_step_down_by_language` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(4) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(5) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_time_to_step_down_by_race_group`
--

DROP TABLE IF EXISTS `adult_time_to_step_down_by_race_group`;
CREATE TABLE `adult_time_to_step_down_by_race_group` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(4) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adult_time_to_step_down_by_sex`
--

DROP TABLE IF EXISTS `adult_time_to_step_down_by_sex`;
CREATE TABLE `adult_time_to_step_down_by_sex` (
  `population_name` varchar(55) DEFAULT NULL,
  `population_type` varchar(55) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(4) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(5) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adults_meeting_phys_activity_indicator`
--

DROP TABLE IF EXISTS `adults_meeting_phys_activity_indicator`;
CREATE TABLE `adults_meeting_phys_activity_indicator` (
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(22) DEFAULT NULL,
  `percent` varchar(7) DEFAULT NULL,
  `lower_95pct_cl` varchar(7) DEFAULT NULL,
  `upper_95pct_cl` varchar(7) DEFAULT NULL,
  `standard_error` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `adults_with_diabetes_per_100`
--

DROP TABLE IF EXISTS `adults_with_diabetes_per_100`;
CREATE TABLE `adults_with_diabetes_per_100` (
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(21) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `lower_95pct_cl` varchar(4) DEFAULT NULL,
  `upper_95pct_cl` varchar(4) DEFAULT NULL,
  `standard_error` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `amb_surj_char_disposition_by_patient_county`
--

DROP TABLE IF EXISTS `amb_surj_char_disposition_by_patient_county`;
CREATE TABLE `amb_surj_char_disposition_by_patient_county` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `disp1` varchar(41) DEFAULT NULL,
  `encounters` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `amb_surj_char_expected_payer_by_county`
--

DROP TABLE IF EXISTS `amb_surj_char_expected_payer_by_county`;
CREATE TABLE `amb_surj_char_expected_payer_by_county` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `payer1` varchar(51) DEFAULT NULL,
  `encounters` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `amb_surj_char_race_by_county`
--

DROP TABLE IF EXISTS `amb_surj_char_race_by_county`;
CREATE TABLE `amb_surj_char_race_by_county` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `race_grp1` varchar(38) DEFAULT NULL,
  `encounters` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `amb_surj_char_sex_by_county`
--

DROP TABLE IF EXISTS `amb_surj_char_sex_by_county`;
CREATE TABLE `amb_surj_char_sex_by_county` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `gender` varchar(21) DEFAULT NULL,
  `encounters` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(0) DEFAULT NULL,
  `annotationdesc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `analytics_date_and_users`
--

DROP TABLE IF EXISTS `analytics_date_and_users`;
CREATE TABLE `analytics_date_and_users` (
  `date` varchar(9) DEFAULT NULL,
  `users` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `analytics_dates_pages_page_views`
--

DROP TABLE IF EXISTS `analytics_dates_pages_page_views`;
CREATE TABLE `analytics_dates_pages_page_views` (
  `event_action` varchar(1) DEFAULT NULL,
  `page_title` varchar(333) DEFAULT NULL,
  `date` varchar(29) DEFAULT NULL,
  `pageviews` varchar(4) DEFAULT NULL,
  `page_path_1` varchar(58) DEFAULT NULL,
  `page_path_2` varchar(115) DEFAULT NULL,
  `page_path_3` varchar(1684) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `analytics_pages_and_events`
--

DROP TABLE IF EXISTS `analytics_pages_and_events`;
CREATE TABLE `analytics_pages_and_events` (
  `event_action` varchar(20) DEFAULT NULL,
  `event_category` varchar(30) DEFAULT NULL,
  `date` varchar(9) DEFAULT NULL,
  `total_events` varchar(3) DEFAULT NULL,
  `page_path_1` varchar(7) DEFAULT NULL,
  `page_path_2` varchar(99) DEFAULT NULL,
  `page_path_3` varchar(8) DEFAULT NULL,
  `page_path_4` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `analytics_users_by_locations`
--

DROP TABLE IF EXISTS `analytics_users_by_locations`;
CREATE TABLE `analytics_users_by_locations` (
  `city` varchar(62) DEFAULT NULL,
  `country` varchar(24) DEFAULT NULL,
  `latitude` varchar(8) DEFAULT NULL,
  `longitude` varchar(9) DEFAULT NULL,
  `users` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `asthma_deaths_by_county`
--

DROP TABLE IF EXISTS `asthma_deaths_by_county`;
CREATE TABLE `asthma_deaths_by_county` (
  `county` varchar(31) DEFAULT NULL,
  `years` varchar(31) DEFAULT NULL,
  `strata` varchar(31) DEFAULT NULL,
  `age_group` varchar(31) DEFAULT NULL,
  `number_of_deaths` int DEFAULT NULL,
  `age_adjusted_mortality_rate` decimal(4,2) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `asthma_visits_by_county`
--

DROP TABLE IF EXISTS `asthma_visits_by_county`;
CREATE TABLE `asthma_visits_by_county` (
  `county` varchar(15) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(11) DEFAULT NULL,
  `age_group` varchar(11) DEFAULT NULL,
  `number_of_ed_visits` int DEFAULT NULL,
  `age_adjusted_ed_visit_rate` decimal(6,1) DEFAULT NULL,
  `comment` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `asthma_visits_by_zip`
--

DROP TABLE IF EXISTS `asthma_visits_by_zip`;
CREATE TABLE `asthma_visits_by_zip` (
  `year` int DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `number_of_asthma_ed_visits` int DEFAULT NULL,
  `age_adjusted_rate_of_asthma_ed_v` decimal(6,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `asthma_visits_by_zip_and_age`
--

DROP TABLE IF EXISTS `asthma_visits_by_zip_and_age`;
CREATE TABLE `asthma_visits_by_zip_and_age` (
  `year` int DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(5) DEFAULT NULL,
  `number_of_asthma_ed_visits` int DEFAULT NULL,
  `age_adjusted_rate_of_asthma_ed_v` decimal(6,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `baby_names`
--

DROP TABLE IF EXISTS `baby_names`;
CREATE TABLE `baby_names` (
  `year` int DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `rank_` varchar(2) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `data_revision_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `beneficiary_appeal_type`
--

DROP TABLE IF EXISTS `beneficiary_appeal_type`;
CREATE TABLE `beneficiary_appeal_type` (
  `report_year` varchar(6) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `notice_of_adverse_benefit_determination_category` varchar(45) DEFAULT NULL,
  `appeal_count` varchar(4) DEFAULT NULL,
  `unresolved_as_of_june_30` varchar(2) DEFAULT NULL,
  `decision_upheld` varchar(4) DEFAULT NULL,
  `decision_overturned` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `beneficiary_expedited_appeal_type`
--

DROP TABLE IF EXISTS `beneficiary_expedited_appeal_type`;
CREATE TABLE `beneficiary_expedited_appeal_type` (
  `report_year` varchar(6) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `notice_of_adverse_benefit_determination_category` varchar(45) DEFAULT NULL,
  `expedited_appeal_count` varchar(2) DEFAULT NULL,
  `unresolved_as_of_june_30` varchar(1) DEFAULT NULL,
  `decision_upheld` varchar(1) DEFAULT NULL,
  `decision_overturned` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `beneficiary_grievance_type`
--

DROP TABLE IF EXISTS `beneficiary_grievance_type`;
CREATE TABLE `beneficiary_grievance_type` (
  `report_year` varchar(6) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `grievance_category` varchar(24) DEFAULT NULL,
  `grievance_type` varchar(32) DEFAULT NULL,
  `grievance_count` varchar(4) DEFAULT NULL,
  `exempt_grievance_count` varchar(3) DEFAULT NULL,
  `unresolved_as_of_june_30` varchar(3) DEFAULT NULL,
  `resolved` varchar(4) DEFAULT NULL,
  `referred` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `beneficiary_notice_of_adverse_benefit_determ_type`
--

DROP TABLE IF EXISTS `beneficiary_notice_of_adverse_benefit_determ_type`;
CREATE TABLE `beneficiary_notice_of_adverse_benefit_determ_type` (
  `report_year` varchar(6) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `notice_of_adverse_benefit_determination_noabd_category` varchar(45) DEFAULT NULL,
  `notice_of_adverse_benefit_determination_noabd_issued` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cal_cat`
--

DROP TABLE IF EXISTS `cal_cat`;
CREATE TABLE `cal_cat` (
  `source` varchar(63) DEFAULT NULL,
  `disease` varchar(63) DEFAULT NULL,
  `location_level` varchar(63) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  `target` varchar(63) DEFAULT NULL,
  `model` varchar(63) DEFAULT NULL,
  `value_num` decimal(7,2) DEFAULT NULL,
  `quantile` varchar(63) DEFAULT NULL,
  `archivedt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `carrier_codes`
--

DROP TABLE IF EXISTS `carrier_codes`;
CREATE TABLE `carrier_codes` (
  `code` char(1) DEFAULT NULL,
  `description` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `carriers`
--

DROP TABLE IF EXISTS `carriers`;
CREATE TABLE `carriers` (
  `carrier_code` varchar(4) DEFAULT NULL,
  `last_change_date` varchar(8) DEFAULT NULL,
  `status_code` varchar(1) DEFAULT NULL,
  `ohc_code` varchar(1) DEFAULT NULL,
  `carrier_name_1` varchar(30) DEFAULT NULL,
  `carrier_name_2` varchar(30) DEFAULT NULL,
  `carrier_addr_2` varchar(50) DEFAULT NULL,
  `carrier_city` varchar(20) DEFAULT NULL,
  `carrier_state` varchar(2) DEFAULT NULL,
  `carrier_zip_code` varchar(9) DEFAULT NULL,
  `carrier_phone` varchar(14) DEFAULT NULL,
  `plan_type` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `_id` int DEFAULT NULL,
  `title` varchar(151) DEFAULT NULL,
  `description` text,
  `department` varchar(48) DEFAULT NULL,
  `program` varchar(379) DEFAULT NULL,
  `contact_email` varchar(43) DEFAULT NULL,
  `homepage_url` varchar(188) DEFAULT NULL,
  `temporal_coverage` varchar(889) DEFAULT NULL,
  `spatial_geographic_coverage` varchar(548) DEFAULT NULL,
  `geographic_granularity` varchar(26) DEFAULT NULL,
  `language` varchar(17) DEFAULT NULL,
  `frequency` varchar(13) DEFAULT NULL,
  `de_identification_method` varchar(845) DEFAULT NULL,
  `source_link` varchar(188) DEFAULT NULL,
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
  `topic` varchar(60) DEFAULT NULL,
  `tags` varchar(441) DEFAULT NULL,
  `dataset_url` varchar(133) DEFAULT NULL,
  `dataset_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `catalog_agency`
--

DROP TABLE IF EXISTS `catalog_agency`;
CREATE TABLE `catalog_agency` (
  `pk` int NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`pk`)
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
-- Table structure for table `cigarette_use_in_adults`
--

DROP TABLE IF EXISTS `cigarette_use_in_adults`;
CREATE TABLE `cigarette_use_in_adults` (
  `year` varchar(4) DEFAULT NULL,
  `comparison` varchar(34) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `lower95` varchar(4) DEFAULT NULL,
  `upper95` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `construction_costs`
--

DROP TABLE IF EXISTS `construction_costs`;
CREATE TABLE `construction_costs` (
  `county` varchar(20) DEFAULT NULL,
  `data_generation_date` date DEFAULT NULL,
  `oshpd_project_status` varchar(20) DEFAULT NULL,
  `total_costs_of_oshpd_projects` varchar(18) DEFAULT NULL,
  `number_of_oshpd_projects` varchar(4) DEFAULT NULL,
  `collection_of_counties` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `county_health_status_profiles`
--

DROP TABLE IF EXISTS `county_health_status_profiles`;
CREATE TABLE `county_health_status_profiles` (
  `publication_year` int DEFAULT NULL,
  `table_name` varchar(63) DEFAULT NULL,
  `health_indicator_desc` varchar(255) DEFAULT NULL,
  `strata` varchar(63) DEFAULT NULL,
  `strata_name` varchar(63) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `rank_order` int DEFAULT NULL,
  `denominator_total` int DEFAULT NULL,
  `denominator_average` decimal(10,2) DEFAULT NULL,
  `denominator_label` varchar(63) DEFAULT NULL,
  `denominator_year_period` int DEFAULT NULL,
  `numerator_total` int DEFAULT NULL,
  `numerator_average` decimal(10,2) DEFAULT NULL,
  `numerator_label` varchar(63) DEFAULT NULL,
  `numerator_year_period` varchar(63) DEFAULT NULL,
  `rate_multiplier` int DEFAULT NULL,
  `rate_percentage` decimal(10,2) DEFAULT NULL,
  `rate_percentage_label` varchar(63) DEFAULT NULL,
  `age_adjusted_rate` decimal(10,2) DEFAULT NULL,
  `age_adjusted_rate_label` varchar(63) DEFAULT NULL,
  `lower_confidence_limit` decimal(10,2) DEFAULT NULL,
  `upper_confidence_limit` decimal(10,2) DEFAULT NULL,
  `healthy_people_decade` int DEFAULT NULL,
  `healthy_people_objective_number` varchar(63) DEFAULT NULL,
  `healthy_people_objective_target` int DEFAULT NULL,
  `healthy_people_objective_met` char(1) DEFAULT NULL,
  `denominator_annotation_code` varchar(63) DEFAULT NULL,
  `numerator_annotation_code` varchar(63) DEFAULT NULL,
  `rates_annotation_code` varchar(63) DEFAULT NULL,
  `annotation_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_age_distribution`
--

DROP TABLE IF EXISTS `covid_19_age_distribution`;
CREATE TABLE `covid_19_age_distribution` (
  `season` varchar(9) DEFAULT NULL,
  `agegrp` varchar(11) DEFAULT NULL,
  `respiratory_virus` varchar(9) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `death_profiles_by_county`
--

DROP TABLE IF EXISTS `death_profiles_by_county`;
CREATE TABLE `death_profiles_by_county` (
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
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
  `data_revision_date` varchar(31) DEFAULT NULL,
  `by_factor` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_zip`
--

DROP TABLE IF EXISTS `deaths_by_zip`;
CREATE TABLE `deaths_by_zip` (
  `year` varchar(4) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_statewide`
--

DROP TABLE IF EXISTS `deaths_statewide`;
CREATE TABLE `deaths_statewide` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `geography_type` varchar(23) DEFAULT NULL,
  `strata` varchar(49) DEFAULT NULL,
  `strata_name` varchar(36) DEFAULT NULL,
  `cause` varchar(53) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(38) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `icd_revision` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL,
  `data_extract_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dhcs_county_code_references`
--

DROP TABLE IF EXISTS `dhcs_county_code_references`;
CREATE TABLE `dhcs_county_code_references` (
  `objectid` int DEFAULT NULL,
  `dhcs_county_code` int DEFAULT NULL,
  `county_name` varchar(31) DEFAULT NULL,
  `county_region_code` char(1) DEFAULT NULL,
  `county_region_description` varchar(31) DEFAULT NULL,
  `fips_county_code` int DEFAULT NULL,
  `fips_state_county_code` int DEFAULT NULL,
  `north_south_indicator` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `educational_attainment`
--

DROP TABLE IF EXISTS `educational_attainment`;
CREATE TABLE `educational_attainment` (
  `ind_id` int DEFAULT NULL,
  `ind_definition` varchar(127) DEFAULT NULL,
  `reportyear` int DEFAULT NULL,
  `race_eth_code` int DEFAULT NULL,
  `race_eth_name` varchar(31) DEFAULT NULL,
  `geotype` char(2) DEFAULT NULL,
  `geotypevalue` varchar(15) DEFAULT NULL,
  `geoname` varchar(127) DEFAULT NULL,
  `county_name` varchar(127) DEFAULT NULL,
  `county_fips` varchar(5) DEFAULT NULL,
  `region_name` varchar(127) DEFAULT NULL,
  `region_code` char(2) DEFAULT NULL,
  `strata_one_code` int DEFAULT NULL,
  `strata_one_name` varchar(127) DEFAULT NULL,
  `strata_two_code` varchar(31) DEFAULT NULL,
  `strata_two_name` varchar(31) DEFAULT NULL,
  `numerator` bigint DEFAULT NULL,
  `denominator` bigint DEFAULT NULL,
  `estimate` decimal(6,2) DEFAULT NULL,
  `LL_95CI` varchar(31) DEFAULT NULL,
  `UL_95CI` varchar(31) DEFAULT NULL,
  `SE` varchar(31) DEFAULT NULL,
  `RSE` varchar(31) DEFAULT NULL,
  `CA_decile` varchar(31) DEFAULT NULL,
  `CA_RR` decimal(30,27) DEFAULT NULL,
  `version` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `enrollment_data`
--

DROP TABLE IF EXISTS `enrollment_data`;
CREATE TABLE `enrollment_data` (
  `eligibility_date` date DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `region` varchar(31) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `ethnic_group` varchar(31) DEFAULT NULL,
  `language` varchar(31) DEFAULT NULL,
  `enrolled` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `facility_list`
--

DROP TABLE IF EXISTS `facility_list`;
CREATE TABLE `facility_list` (
  `x` decimal(16,8) DEFAULT NULL,
  `y` decimal(16,8) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `facilitynbr` int DEFAULT NULL,
  `facilitystatus` varchar(1) DEFAULT NULL,
  `facilityname` varchar(87) DEFAULT NULL,
  `licensetype` varchar(41) DEFAULT NULL,
  `streetnbr` varchar(5) DEFAULT NULL,
  `streetname` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `oblicensenbr` varchar(7) DEFAULT NULL,
  `obbusinessname` varchar(87) DEFAULT NULL,
  `obfname` varchar(9) DEFAULT NULL,
  `oblname` varchar(9) DEFAULT NULL,
  `obtitle` varchar(46) DEFAULT NULL,
  `obaddress` varchar(38) DEFAULT NULL,
  `obaddress2` varchar(9) DEFAULT NULL,
  `obcity` varchar(20) DEFAULT NULL,
  `obstate` varchar(9) DEFAULT NULL,
  `obzip` varchar(9) DEFAULT NULL,
  `obphone1` varchar(10) DEFAULT NULL,
  `obphone2` varchar(9) DEFAULT NULL,
  `obfax` varchar(10) DEFAULT NULL,
  `date_opened` varchar(22) DEFAULT NULL,
  `date_closed` varchar(22) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `addr1` varchar(63) DEFAULT NULL,
  `addr2` varchar(61) DEFAULT NULL,
  `f28` varchar(0) DEFAULT NULL,
  `bing` varchar(0) DEFAULT NULL,
  `type_` varchar(0) DEFAULT NULL,
  `ffstationnetwork` varchar(5) DEFAULT NULL,
  `ffstationnbr` varchar(5) DEFAULT NULL,
  `stationnetwork` varchar(8) DEFAULT NULL,
  `stationnbr` varchar(19) DEFAULT NULL,
  `geographic_region` varchar(24) DEFAULT NULL,
  `aco` varchar(13) DEFAULT NULL,
  `aco_name` varchar(19) DEFAULT NULL,
  `aco_phonenbr` varchar(10) DEFAULT NULL,
  `dse` varchar(9) DEFAULT NULL,
  `dse_name` varchar(16) DEFAULT NULL,
  `dse_phonenbr` varchar(10) DEFAULT NULL,
  `field_flso` varchar(15) DEFAULT NULL,
  `flso_name` varchar(21) DEFAULT NULL,
  `flso_phonenbr` varchar(10) DEFAULT NULL,
  `senatedistrict` int DEFAULT NULL,
  `assemblydistrict` int DEFAULT NULL,
  `congressionaldistrict` int DEFAULT NULL,
  `alirts_facility_id` int DEFAULT NULL,
  `rco` varchar(9) DEFAULT NULL,
  `rco_name` varchar(15) DEFAULT NULL,
  `rco_phonenbr` varchar(10) DEFAULT NULL,
  `pt1` varchar(6) DEFAULT NULL,
  `pt1fullname` varchar(13) DEFAULT NULL,
  `pt2` varchar(6) DEFAULT NULL,
  `pt2fullname` varchar(14) DEFAULT NULL,
  `responsible_region` varchar(24) DEFAULT NULL,
  `proposedbldgs` varchar(1) DEFAULT NULL,
  `objectid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `facility_profiles`
--

DROP TABLE IF EXISTS `facility_profiles`;
CREATE TABLE `facility_profiles` (
  `facility_desc` varchar(255) DEFAULT NULL,
  `site_address1` varchar(63) DEFAULT NULL,
  `site_address2` varchar(63) DEFAULT NULL,
  `site_city` varchar(63) DEFAULT NULL,
  `site_zip` varchar(63) DEFAULT NULL,
  `site_x_coordinate` decimal(10,2) DEFAULT NULL,
  `site_y_coordinate` decimal(10,2) DEFAULT NULL,
  `oshpd_id` char(9) DEFAULT NULL,
  `license_type_desc` varchar(63) DEFAULT NULL,
  `license_category_desc` varchar(63) DEFAULT NULL,
  `license_number` char(9) DEFAULT NULL,
  `facility_level_desc` varchar(63) DEFAULT NULL,
  `er_service_level_desc` varchar(63) DEFAULT NULL,
  `licensed_beds` varchar(63) DEFAULT NULL,
  `facility_status_desc` varchar(63) DEFAULT NULL,
  `financial_facility_count` int DEFAULT NULL,
  `consolidated_facility_desc_pipe` varchar(255) DEFAULT NULL,
  `consolidated_facility_desc_comma` varchar(255) DEFAULT NULL,
  `period_begin_date` varchar(63) DEFAULT NULL,
  `period_end_date` varchar(63) DEFAULT NULL,
  `net_pat_rev_medicare_traditional_ip` bigint DEFAULT NULL,
  `net_pat_rev_medicare_managed_ip` bigint DEFAULT NULL,
  `net_pat_rev_medi_cal_traditional_ip` bigint DEFAULT NULL,
  `net_pat_rev_medi_cal_managed_ip` bigint DEFAULT NULL,
  `net_pat_rev_county_indigent_traditional_ip` bigint DEFAULT NULL,
  `net_pat_rev_county_indigent_managed_ip` bigint DEFAULT NULL,
  `net_pat_rev_third_party_traditional_ip` bigint DEFAULT NULL,
  `net_pat_rev_third_party_managed_ip` bigint DEFAULT NULL,
  `net_pat_rev_other_indigent_ip` bigint DEFAULT NULL,
  `net_pat_rev_other_payer_ip` bigint DEFAULT NULL,
  `net_pat_rev_total_ip` bigint DEFAULT NULL,
  `net_pat_rev_medicare_traditional_op` bigint DEFAULT NULL,
  `net_pat_rev_medicare_managed_op` bigint DEFAULT NULL,
  `net_pat_rev_medi_cal_traditional_op` bigint DEFAULT NULL,
  `net_pat_rev_medi_cal_managed_op` bigint DEFAULT NULL,
  `net_pat_rev_county_indigent_traditional_op` bigint DEFAULT NULL,
  `net_pat_rev_county_indigent_managed_op` bigint DEFAULT NULL,
  `net_pat_rev_third_party_traditional_op` bigint DEFAULT NULL,
  `net_pat_rev_third_party_managed_op` bigint DEFAULT NULL,
  `net_pat_rev_other_indigent_op` bigint DEFAULT NULL,
  `net_pat_rev_other_payer_op` bigint DEFAULT NULL,
  `net_pat_rev_total_op` bigint DEFAULT NULL,
  `payer_mix_medicare_traditional_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_medicare_traditional_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medicare_managed_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_medicare_managed_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medi_cal_traditional_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_medi_cal_traditional_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medi_cal_managed_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_medi_cal_managed_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_county_indigent_traditional_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_county_indigent_traditional_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_county_indigent_managed_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_county_indigent_managed_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_third_party_traditional_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_third_party_traditional_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_third_party_managed_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_third_party_managed_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_other_indigent_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_other_indigent_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_other_payer_ip` decimal(14,12) DEFAULT NULL,
  `payer_mix_other_payer_ip_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medicare_traditional_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_medicare_traditional_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medicare_managed_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_medicare_managed_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medi_cal_traditional_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_medi_cal_traditional_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_medi_cal_managed_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_medi_cal_managed_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_county_indigent_traditional_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_county_indigent_traditional_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_county_indigent_managed_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_county_indigent_managed_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_third_party_traditional_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_third_party_traditional_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_third_party_managed_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_third_party_managed_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_other_indigent_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_other_indigent_op_state` decimal(6,4) DEFAULT NULL,
  `payer_mix_other_payer_op` decimal(14,12) DEFAULT NULL,
  `payer_mix_other_payer_op_state` decimal(6,4) DEFAULT NULL,
  `avg_stay_medicare_traditional` decimal(10,4) DEFAULT NULL,
  `avg_stay_medicare_managed` decimal(10,4) DEFAULT NULL,
  `avg_stay_medi_cal_traditional` decimal(10,4) DEFAULT NULL,
  `avg_stay_medi_cal_managed` decimal(10,4) DEFAULT NULL,
  `avg_stay_county_indigent_traditional` decimal(10,4) DEFAULT NULL,
  `avg_stay_county_indigent_managed` decimal(10,4) DEFAULT NULL,
  `avg_stay_third_party_traditional` decimal(10,4) DEFAULT NULL,
  `avg_stay_third_party_managed` decimal(10,4) DEFAULT NULL,
  `avg_stay_other_indigent_total` decimal(10,4) DEFAULT NULL,
  `avg_stay_other_payer_total` decimal(10,4) DEFAULT NULL,
  `avg_stay_total` decimal(10,4) DEFAULT NULL,
  `active_projects` int DEFAULT NULL,
  `active_project_costs` bigint DEFAULT NULL,
  `active_projects_state` int DEFAULT NULL,
  `active_project_costs_state` bigint DEFAULT NULL,
  `spc_1` int DEFAULT NULL,
  `spc_2` int DEFAULT NULL,
  `spc_3` int DEFAULT NULL,
  `spc_4` int DEFAULT NULL,
  `spc_5` int DEFAULT NULL,
  `spc_1_state` int DEFAULT NULL,
  `spc_2_state` int DEFAULT NULL,
  `spc_3_state` int DEFAULT NULL,
  `spc_4_state` int DEFAULT NULL,
  `spc_5_state` int DEFAULT NULL,
  `sysdate` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_total_provider_reimbursement`
--

DROP TABLE IF EXISTS `family_pact_total_provider_reimbursement`;
CREATE TABLE `family_pact_total_provider_reimbursement` (
  `fiscal_year` int DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hafd_columns`
--

DROP TABLE IF EXISTS `hafd_columns`;
CREATE TABLE `hafd_columns` (
  `year` int DEFAULT NULL,
  `label` varchar(3) DEFAULT NULL,
  `name` varchar(63) DEFAULT NULL,
  `full_name` varchar(1027) DEFAULT NULL,
  `more_full_name` varchar(1027) DEFAULT NULL,
  `table_name` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthcare_facilities`
--

DROP TABLE IF EXISTS `healthcare_facilities`;
CREATE TABLE `healthcare_facilities` (
  `licensed_certified` varchar(35) DEFAULT NULL,
  `flag` varchar(16) DEFAULT NULL,
  `t18_19` varchar(13) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `fac_status_type_code` varchar(4) DEFAULT NULL,
  `aspen_facid` varchar(16) DEFAULT NULL,
  `ccn` varchar(10) DEFAULT NULL,
  `terminat_sw` varchar(1) DEFAULT NULL,
  `participation_date` varchar(10) DEFAULT NULL,
  `approval_date` varchar(10) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `can_be_deemed_fac_type` varchar(1) DEFAULT NULL,
  `can_be_certified_fac_type` varchar(1) DEFAULT NULL,
  `deemed` varchar(1) DEFAULT NULL,
  `ao_cd` varchar(2) DEFAULT NULL,
  `dmg_efctv_dt` varchar(18) DEFAULT NULL,
  `ao_trmntn_dt` varchar(18) DEFAULT NULL,
  `ao_name` varchar(6) DEFAULT NULL,
  `facname` varchar(100) DEFAULT NULL,
  `fac_type_code` varchar(10) DEFAULT NULL,
  `fac_fdr` varchar(44) DEFAULT NULL,
  `ltc` varchar(7) DEFAULT NULL,
  `capacity` varchar(4) DEFAULT NULL,
  `address` varchar(67) DEFAULT NULL,
  `city` varchar(21) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `zip9` varchar(4) DEFAULT NULL,
  `facadmin` varchar(37) DEFAULT NULL,
  `contact_email` varchar(48) DEFAULT NULL,
  `contact_fax` varchar(14) DEFAULT NULL,
  `contact_phone_number` varchar(14) DEFAULT NULL,
  `county_code` varchar(3) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `district_number` varchar(2) DEFAULT NULL,
  `district_name` varchar(24) DEFAULT NULL,
  `isfacmain` varchar(1) DEFAULT NULL,
  `parent_facid` varchar(9) DEFAULT NULL,
  `fac_fac_relationship_type_code` varchar(22) DEFAULT NULL,
  `start_date` varchar(9) DEFAULT NULL,
  `license_number` varchar(9) DEFAULT NULL,
  `business_name` varchar(74) DEFAULT NULL,
  `license_status_description` varchar(25) DEFAULT NULL,
  `initial_license_date` varchar(10) DEFAULT NULL,
  `license_effective_date` varchar(10) DEFAULT NULL,
  `license_expiration_date` varchar(10) DEFAULT NULL,
  `entity_type_description` varchar(25) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `location` varchar(27) DEFAULT NULL,
  `hcai_id` varchar(9) DEFAULT NULL,
  `cclho_code` varchar(2) DEFAULT NULL,
  `cclho_name` varchar(15) DEFAULT NULL,
  `fips_county_code` varchar(5) DEFAULT NULL,
  `birthing_facility_flag` varchar(3) DEFAULT NULL,
  `trauma_ped_ctr` varchar(12) DEFAULT NULL,
  `trauma_ctr` varchar(9) DEFAULT NULL,
  `type_of_care` varchar(26) DEFAULT NULL,
  `critical_access_hospital` varchar(1) DEFAULT NULL,
  `data_date` varchar(10) DEFAULT NULL,
  `dmg_efctv_date` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthcare_facilities_across_time`
--

DROP TABLE IF EXISTS `healthcare_facilities_across_time`;
CREATE TABLE `healthcare_facilities_across_time` (
  `state_fiscal_year` varchar(10) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `provider_type` varchar(18) DEFAULT NULL,
  `fac_fdr` varchar(44) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL
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
-- Table structure for table `hospital_characteristics`
--

DROP TABLE IF EXISTS `hospital_characteristics`;
CREATE TABLE `hospital_characteristics` (
  `oshpd_id` char(9) DEFAULT NULL,
  `oshpd_provider_name` varchar(255) DEFAULT NULL,
  `designated_nicu_as_defined_by_dhcs` varchar(15) DEFAULT NULL,
  `dph` varchar(15) DEFAULT NULL,
  `ndph` varchar(15) DEFAULT NULL,
  `oshpd_rural_hospital` varchar(15) DEFAULT NULL,
  `dhcs_designated_remote_rural` varchar(15) DEFAULT NULL,
  `sfy_2019_20_cost_to_charge_ratio_pct` decimal(8,6) DEFAULT NULL,
  `ffy_2019_wage_index_value` decimal(8,6) DEFAULT NULL,
  `ffy_2019_wage_index_value_adjusted` decimal(8,6) DEFAULT NULL,
  `sfy_2019_20_unadjusted_statewide_base_rate` int DEFAULT NULL,
  `sfy_2019_20_wage_adjusted_statewide_base_rate` int DEFAULT NULL,
  `sfy_2019_20_rehab_rate` int DEFAULT NULL,
  `sfy_2019_20_admin_2_190_rate` decimal(7,2) DEFAULT NULL,
  `sfy_2019_20_admin_2_199_rate` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `infant_mortality_per_1000_births`
--

DROP TABLE IF EXISTS `infant_mortality_per_1000_births`;
CREATE TABLE `infant_mortality_per_1000_births` (
  `lghc_indicator_name` varchar(63) DEFAULT NULL,
  `geography` varchar(63) DEFAULT NULL,
  `year` varchar(31) DEFAULT NULL,
  `strata` varchar(63) DEFAULT NULL,
  `strata_name` varchar(63) DEFAULT NULL,
  `rate` varchar(15) DEFAULT NULL,
  `lower_95_ci` varchar(15) DEFAULT NULL,
  `upper_95_ci` varchar(15) DEFAULT NULL
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
  `oshpd_id` char(9) DEFAULT NULL,
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
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_facility_aspen_oshpd_crosswalk`
--

DROP TABLE IF EXISTS `licensed_facility_aspen_oshpd_crosswalk`;
CREATE TABLE `licensed_facility_aspen_oshpd_crosswalk` (
  `license_certified` varchar(63) DEFAULT NULL,
  `elms_facid` char(10) DEFAULT NULL,
  `license_number` char(10) DEFAULT NULL,
  `license_status_description` varchar(63) DEFAULT NULL,
  `oshpd_id` varchar(31) DEFAULT NULL,
  `aspen_facid` varchar(31) DEFAULT NULL,
  `ccn` varchar(10) DEFAULT NULL,
  `npi` char(10) DEFAULT NULL,
  `aspen_status` varchar(63) DEFAULT NULL,
  `facname` varchar(255) DEFAULT NULL,
  `fac_type_description` varchar(127) DEFAULT NULL,
  `fac_fdr` varchar(63) DEFAULT NULL,
  `fac_fac_relationship` varchar(63) DEFAULT NULL,
  `elms_parent_facid` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_facility_elms_aspen_crosswalk`
--

DROP TABLE IF EXISTS `licensed_facility_elms_aspen_crosswalk`;
CREATE TABLE `licensed_facility_elms_aspen_crosswalk` (
  `xwalk_note` varchar(63) DEFAULT NULL,
  `age` varchar(7) DEFAULT NULL,
  `elms_facid` char(10) DEFAULT NULL,
  `license_number` char(10) DEFAULT NULL,
  `license_status_description` varchar(63) DEFAULT NULL,
  `aspen_id` varchar(31) DEFAULT NULL,
  `ccn` varchar(10) DEFAULT NULL,
  `npi` char(10) DEFAULT NULL,
  `aspen_status` varchar(63) DEFAULT NULL,
  `facname` varchar(255) DEFAULT NULL,
  `fac_type_description` varchar(127) DEFAULT NULL,
  `fac_fdr` varchar(63) DEFAULT NULL,
  `fac_fac_relationship` varchar(63) DEFAULT NULL,
  `elms_parent_facid` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_facility_elms_oshpd_crosswalk`
--

DROP TABLE IF EXISTS `licensed_facility_elms_oshpd_crosswalk`;
CREATE TABLE `licensed_facility_elms_oshpd_crosswalk` (
  `xwalk_note` varchar(63) DEFAULT NULL,
  `age` varchar(7) DEFAULT NULL,
  `elms_facid` char(10) DEFAULT NULL,
  `license_number` char(10) DEFAULT NULL,
  `license_status_description` varchar(63) DEFAULT NULL,
  `oshpd_id` char(9) DEFAULT NULL,
  `facname` varchar(255) DEFAULT NULL,
  `fac_type_description` varchar(127) DEFAULT NULL,
  `fac_fdr` varchar(63) DEFAULT NULL,
  `fac_fac_relationship` varchar(63) DEFAULT NULL,
  `elms_parent_facid` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `live_birth_profiles_by_county`
--

DROP TABLE IF EXISTS `live_birth_profiles_by_county`;
CREATE TABLE `live_birth_profiles_by_county` (
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `geography_type` varchar(31) DEFAULT NULL,
  `strata` varchar(63) DEFAULT NULL,
  `strata_name` varchar(63) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `annotation_code` varchar(31) DEFAULT NULL,
  `annotation_desc` varchar(63) DEFAULT NULL,
  `data_extract_date` varchar(31) DEFAULT NULL,
  `data_revision_date` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medicaid_ffs_providers`
--

DROP TABLE IF EXISTS `medicaid_ffs_providers`;
CREATE TABLE `medicaid_ffs_providers` (
  `objectid` varchar(6) DEFAULT NULL,
  `provider_source` varchar(34) DEFAULT NULL,
  `provider_number` varchar(10) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `owner_number` int DEFAULT NULL,
  `service_location_number` int DEFAULT NULL,
  `legal_name` varchar(50) DEFAULT NULL,
  `enroll_status_eff_dt` date DEFAULT NULL,
  `provider_taxonomy` varchar(23) DEFAULT NULL,
  `anc_provider_type` varchar(36) DEFAULT NULL,
  `fi_provider_type_cd` varchar(3) DEFAULT NULL,
  `fi_provider_type` varchar(85) DEFAULT NULL,
  `provider_license` varchar(14) DEFAULT NULL,
  `fi_provider_specialty_cd` varchar(3) DEFAULT NULL,
  `fi_provider_specialty` varchar(51) DEFAULT NULL,
  `out_of_state_indicator` int DEFAULT NULL,
  `in_out_state` varchar(56) DEFAULT NULL,
  `address_attention` varchar(43) DEFAULT NULL,
  `address` varchar(24) DEFAULT NULL,
  `address2` varchar(24) DEFAULT NULL,
  `city` varchar(17) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `zip_4` varchar(4) DEFAULT NULL,
  `dhcs_county_cd` varchar(2) DEFAULT NULL,
  `fips_county_cd` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `countyname` varchar(46) DEFAULT NULL
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
-- Table structure for table `open_data_publishing`
--

DROP TABLE IF EXISTS `open_data_publishing`;
CREATE TABLE `open_data_publishing` (
  `publishing_quarter` varchar(7) DEFAULT NULL,
  `publishing_year` varchar(4) DEFAULT NULL,
  `dataset_name` varchar(201) DEFAULT NULL,
  `dataset_description` varchar(1706) DEFAULT NULL,
  `dataset_category` varchar(37) DEFAULT NULL,
  `publishing_department` varchar(59) DEFAULT NULL,
  `published_date` varchar(22) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `notes` varchar(90) DEFAULT NULL
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
-- Table structure for table `pediatric_quality_indicators`
--

DROP TABLE IF EXISTS `pediatric_quality_indicators`;
CREATE TABLE `pediatric_quality_indicators` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(79) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `ind_condition` varchar(24) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `num_events` varchar(3) DEFAULT NULL,
  `num_cases` varchar(6) DEFAULT NULL,
  `hospital_rating` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_covid_19_deaths`
--

DROP TABLE IF EXISTS `percentage_of_covid_19_deaths`;
CREATE TABLE `percentage_of_covid_19_deaths` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `percovcodeddeaths` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_influenza_detect_at_clinical`
--

DROP TABLE IF EXISTS `percentage_of_influenza_detect_at_clinical`;
CREATE TABLE `percentage_of_influenza_detect_at_clinical` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `perflu` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_infouenza_deaths`
--

DROP TABLE IF EXISTS `percentage_of_infouenza_deaths`;
CREATE TABLE `percentage_of_infouenza_deaths` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `perflucodeddeaths` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_other_respitory`
--

DROP TABLE IF EXISTS `percentage_of_other_respitory`;
CREATE TABLE `percentage_of_other_respitory` (
  `virus` varchar(11) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `percent` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_rsv_deaths`
--

DROP TABLE IF EXISTS `percentage_of_rsv_deaths`;
CREATE TABLE `percentage_of_rsv_deaths` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `perrsvcodeddeaths` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_of_sars_detect_from_test`
--

DROP TABLE IF EXISTS `percentage_of_sars_detect_from_test`;
CREATE TABLE `percentage_of_sars_detect_from_test` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `percovsars` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_rsv_admissions_kaiser`
--

DROP TABLE IF EXISTS `percentage_rsv_admissions_kaiser`;
CREATE TABLE `percentage_rsv_admissions_kaiser` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `rsvper_tot` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percentage_rsv_detect_clinical`
--

DROP TABLE IF EXISTS `percentage_rsv_detect_clinical`;
CREATE TABLE `percentage_rsv_detect_clinical` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `perrsv` varchar(18) DEFAULT NULL
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
-- Table structure for table `providers_suspended_ineligible_us`
--

DROP TABLE IF EXISTS `providers_suspended_ineligible_us`;
CREATE TABLE `providers_suspended_ineligible_us` (
  `lastname` varchar(63) DEFAULT NULL,
  `firstname` varchar(31) DEFAULT NULL,
  `midname` varchar(31) DEFAULT NULL,
  `busname` varchar(31) DEFAULT NULL,
  `general` varchar(31) DEFAULT NULL,
  `specialty` varchar(31) DEFAULT NULL,
  `upin` varchar(31) DEFAULT NULL,
  `npi` varchar(31) DEFAULT NULL,
  `dob` varchar(31) DEFAULT NULL,
  `address` varchar(31) DEFAULT NULL,
  `city` varchar(31) DEFAULT NULL,
  `state` varchar(31) DEFAULT NULL,
  `zip` varchar(31) DEFAULT NULL,
  `excltype` varchar(31) DEFAULT NULL,
  `excldate` varchar(31) DEFAULT NULL,
  `reindate` varchar(31) DEFAULT NULL,
  `waiverdate` varchar(31) DEFAULT NULL,
  `wvrstate` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `research_projects_approved`
--

DROP TABLE IF EXISTS `research_projects_approved`;
CREATE TABLE `research_projects_approved` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `pi_last_name` varchar(18) DEFAULT NULL,
  `pi_first_name` varchar(14) DEFAULT NULL,
  `application_type` varchar(35) DEFAULT NULL,
  `pi_organization` varchar(75) DEFAULT NULL,
  `data_source` text,
  `project_title` varchar(776) DEFAULT NULL,
  `completed` date DEFAULT NULL,
  `initial_approval` date DEFAULT NULL,
  `latest_approval` date DEFAULT NULL,
  `project_type` varchar(96) DEFAULT NULL,
  `pi_name` varchar(70) DEFAULT NULL,
  `defined` varchar(10) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `id` varchar(3) DEFAULT NULL,
  `project_site` varchar(59) DEFAULT NULL,
  `type_of_activity` varchar(16) DEFAULT NULL,
  `pi` varchar(65) DEFAULT NULL,
  `institution` varchar(66) DEFAULT NULL,
  `title` varchar(776) DEFAULT NULL,
  `affiliation_and_data_source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `respiratory_virus_dashboard`
--

DROP TABLE IF EXISTS `respiratory_virus_dashboard`;
CREATE TABLE `respiratory_virus_dashboard` (
  `data_date` char(10) DEFAULT NULL,
  `area` varchar(63) DEFAULT NULL,
  `area_type` varchar(63) DEFAULT NULL,
  `deaths_dc_dod_covid` int DEFAULT NULL,
  `deaths_dc_dod_influenza` int DEFAULT NULL,
  `deaths_dc_dod_all_disease` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `sars_wastewater_aggregated`
--

DROP TABLE IF EXISTS `sars_wastewater_aggregated`;
CREATE TABLE `sars_wastewater_aggregated` (
  `season` varchar(9) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `sars_conc` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `school_immunizations`
--

DROP TABLE IF EXISTS `school_immunizations`;
CREATE TABLE `school_immunizations` (
  `school_year` char(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `city` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `is_public` char(1) DEFAULT NULL,
  `public_school_district` varchar(63) DEFAULT NULL,
  `enrollment` int DEFAULT NULL,
  `reported` char(1) DEFAULT NULL,
  `category` varchar(31) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `percent` int DEFAULT NULL,
  `annotation_code` int DEFAULT NULL,
  `annotation_count_desc` varchar(63) DEFAULT NULL,
  `annotation_percent_desc` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `sewershed_cases`
--

DROP TABLE IF EXISTS `sewershed_cases`;
CREATE TABLE `sewershed_cases` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(23) DEFAULT NULL,
  `label_name` varchar(43) DEFAULT NULL,
  `area_type` varchar(9) DEFAULT NULL,
  `cases` int DEFAULT NULL,
  `masked` tinyint DEFAULT NULL,
  `cumulative_cases` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic`
--

DROP TABLE IF EXISTS `specialty_care_clinic`;
CREATE TABLE `specialty_care_clinic` (
  `oshpd_id` varchar(255) DEFAULT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `facility_address_one` varchar(255) DEFAULT NULL,
  `facility_address_two` varchar(31) DEFAULT NULL,
  `facility_city` varchar(31) DEFAULT NULL,
  `facility_zipcode` varchar(31) DEFAULT NULL,
  `facility_phone` varchar(31) DEFAULT NULL,
  `facility_admin_name` varchar(255) DEFAULT NULL,
  `facility_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `facility_parent_name` varchar(255) DEFAULT NULL,
  `facility_parent_address_one` varchar(255) DEFAULT NULL,
  `facility_parent_address_two` varchar(255) DEFAULT NULL,
  `facility_parent_city` varchar(31) DEFAULT NULL,
  `facility_parent_state` varchar(31) DEFAULT NULL,
  `facility_parent_zipcode` varchar(31) DEFAULT NULL,
  `facility_report_prep_name` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2012`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2012`;
CREATE TABLE `specialty_care_clinic_2012` (
  `oshpd_id` char(9) DEFAULT NULL,
  `fac_name` varchar(31) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(31) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` datetime DEFAULT NULL,
  `lic_orig_date` datetime DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` int DEFAULT NULL,
  `senate_dist` int DEFAULT NULL,
  `congress_dist` int DEFAULT NULL,
  `cens_tract` varchar(10) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` char(9) DEFAULT NULL,
  `longitude` decimal(20,20) DEFAULT NULL,
  `latitude` decimal(20,20) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(31) DEFAULT NULL,
  `patients_undupl` int DEFAULT NULL,
  `encounters_totl` int DEFAULT NULL,
  `op_rm_cy` int DEFAULT NULL,
  `surg_totl` int DEFAULT NULL,
  `encounters_psy_gen_med` int DEFAULT NULL,
  `encounters_psy_subst_abuse` int DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` int DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` int DEFAULT NULL,
  `app_in_home_training_capd_ccpd` int DEFAULT NULL,
  `gro_rev_totl` int DEFAULT NULL,
  `write_off_charity_totl` int DEFAULT NULL,
  `write_off_contr_adjust_totl` int DEFAULT NULL,
  `write_off_bad_debts_totl` int DEFAULT NULL,
  `write_off_othr_adjust_totl` int DEFAULT NULL,
  `write_off_adjusts` int DEFAULT NULL,
  `net_patient_rev_totl` int DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` int DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` int DEFAULT NULL,
  `rev_othr_oper_donations_totl` int DEFAULT NULL,
  `rev_other_oper_othr_totl` int DEFAULT NULL,
  `rev_other_oper_totl` int DEFAULT NULL,
  `rev_oper_totl` int DEFAULT NULL,
  `exp_oper_sal_wages` int DEFAULT NULL,
  `exp_oper_contr_prof` int DEFAULT NULL,
  `exp_oper_sup` int DEFAULT NULL,
  `exp_oper_rent_deprc` int DEFAULT NULL,
  `exp_oper_util` int DEFAULT NULL,
  `exp_oper_liab_prof_ins` int DEFAULT NULL,
  `exp_oper_othr_ins` int DEFAULT NULL,
  `exp_oper_all_othr` int DEFAULT NULL,
  `exp_oper_totl` int DEFAULT NULL,
  `net_frm_oper` int DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` int DEFAULT NULL,
  `equip_01_acqui_dt` datetime DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` int DEFAULT NULL,
  `equip_02_acqui_dt` datetime DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` int DEFAULT NULL,
  `equip_03_acqui_dt` datetime DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` int DEFAULT NULL,
  `equip_04_acqui_dt` datetime DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` int DEFAULT NULL,
  `equip_05_acqui_dt` datetime DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` int DEFAULT NULL,
  `equip_06_acqui_dt` datetime DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` int DEFAULT NULL,
  `equip_07_acqui_dt` datetime DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` int DEFAULT NULL,
  `equip_08_acqui_dt` datetime DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` int DEFAULT NULL,
  `equip_09_acqui_dt` datetime DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` int DEFAULT NULL,
  `equip_10_acqui_dt` datetime DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_projtd_cap_exp` int DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` int DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` int DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` int DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` int DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2013`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2013`;
CREATE TABLE `specialty_care_clinic_2013` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2014`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2014`;
CREATE TABLE `specialty_care_clinic_2014` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2015`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2015`;
CREATE TABLE `specialty_care_clinic_2015` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2016`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2016`;
CREATE TABLE `specialty_care_clinic_2016` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2017`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2017`;
CREATE TABLE `specialty_care_clinic_2017` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2018`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2018`;
CREATE TABLE `specialty_care_clinic_2018` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(31) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(31) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(31) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(31) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_01` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_02` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_03` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_04` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2019`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2019`;
CREATE TABLE `specialty_care_clinic_2019` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(255) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(255) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(255) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(255) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(31) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(255) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_01` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_02` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_03` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_04` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2020`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2020`;
CREATE TABLE `specialty_care_clinic_2020` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(255) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(255) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(255) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(255) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(31) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(255) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_01` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_02` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_03` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_04` varchar(31) DEFAULT NULL,
  `oshpd_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2021`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2021`;
CREATE TABLE `specialty_care_clinic_2021` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(255) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(255) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(255) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(255) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(31) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(255) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `hcai_proj_no_01` varchar(31) DEFAULT NULL,
  `hcai_proj_no_02` varchar(31) DEFAULT NULL,
  `hcai_proj_no_03` varchar(31) DEFAULT NULL,
  `hcai_proj_no_04` varchar(31) DEFAULT NULL,
  `hcai_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2022`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2022`;
CREATE TABLE `specialty_care_clinic_2022` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(255) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(255) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(255) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `census_key` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(255) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(31) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(255) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `hcai_proj_no_01` varchar(31) DEFAULT NULL,
  `hcai_proj_no_02` varchar(31) DEFAULT NULL,
  `hcai_proj_no_03` varchar(31) DEFAULT NULL,
  `hcai_proj_no_04` varchar(31) DEFAULT NULL,
  `hcai_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinic_2023`
--

DROP TABLE IF EXISTS `specialty_care_clinic_2023`;
CREATE TABLE `specialty_care_clinic_2023` (
  `description` varchar(31) DEFAULT NULL,
  `fac_no` varchar(255) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_str_addr` varchar(255) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zip` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_operated_this_yr` varchar(31) DEFAULT NULL,
  `fac_op_per_begin_dt` varchar(31) DEFAULT NULL,
  `fac_op_per_end_dt` varchar(255) DEFAULT NULL,
  `fac_par_corp_name` varchar(255) DEFAULT NULL,
  `fac_par_corp_bus_addr` varchar(255) DEFAULT NULL,
  `fac_par_corp_city` varchar(31) DEFAULT NULL,
  `fac_par_corp_state` varchar(31) DEFAULT NULL,
  `fac_par_corp_zip` varchar(31) DEFAULT NULL,
  `rept_prep_name` varchar(31) DEFAULT NULL,
  `submitted_dt` varchar(31) DEFAULT NULL,
  `rev_rept_prep_name` varchar(31) DEFAULT NULL,
  `revised_dt` varchar(31) DEFAULT NULL,
  `corrected_dt` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `license_eff_date` varchar(31) DEFAULT NULL,
  `license_exp_date` varchar(31) DEFAULT NULL,
  `license_status` varchar(31) DEFAULT NULL,
  `facility_level` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(255) DEFAULT NULL,
  `congress_dist` varchar(255) DEFAULT NULL,
  `census_key` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `la_county_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `lic_cat` varchar(255) DEFAULT NULL,
  `licee_toc` varchar(255) DEFAULT NULL,
  `tot_unduplicated_patients` varchar(31) DEFAULT NULL,
  `surg_oper_rms_on_dec_31_cnt` varchar(31) DEFAULT NULL,
  `tot_surg_opers_during_calendar_yr` varchar(31) DEFAULT NULL,
  `gen_med_encounters` varchar(31) DEFAULT NULL,
  `substance_abuse_encounters` varchar(31) DEFAULT NULL,
  `mental_health_counseling_encounters` varchar(31) DEFAULT NULL,
  `all_other_encounters` varchar(31) DEFAULT NULL,
  `tot_psychology_encounters` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `tot_encounters` varchar(31) DEFAULT NULL,
  `gross_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `write_off_charity_tot` varchar(31) DEFAULT NULL,
  `write_off_contractional_adjustments_tot` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_tot` varchar(31) DEFAULT NULL,
  `write_off_other_adjustment_tot` varchar(31) DEFAULT NULL,
  `write_off_adjustments` varchar(31) DEFAULT NULL,
  `net_pat_revenue_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_public_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_grants_private_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_donations_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_other_tot` varchar(31) DEFAULT NULL,
  `other_oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_revenue_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_salaries_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_contract_services_professional_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_supplies_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_rent_depreciation_mortgage_interest_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_utilities_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_professional_liab_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_insurance_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_other_expenses_tot` varchar(31) DEFAULT NULL,
  `oper_expenses_tot` varchar(31) DEFAULT NULL,
  `net_oper_tot` varchar(31) DEFAULT NULL,
  `fac_acquire_equipment_over_500k` varchar(255) DEFAULT NULL,
  `deequip_01` varchar(31) DEFAULT NULL,
  `deequip_02` varchar(31) DEFAULT NULL,
  `deequip_03` varchar(31) DEFAULT NULL,
  `deequip_04` varchar(31) DEFAULT NULL,
  `deequip_05` varchar(31) DEFAULT NULL,
  `deequip_06` varchar(31) DEFAULT NULL,
  `deequip_07` varchar(31) DEFAULT NULL,
  `deequip_08` varchar(31) DEFAULT NULL,
  `deequip_09` varchar(31) DEFAULT NULL,
  `deequip_10` varchar(31) DEFAULT NULL,
  `proj_over_1m` varchar(255) DEFAULT NULL,
  `deproj_01` varchar(255) DEFAULT NULL,
  `deproj_02` varchar(31) DEFAULT NULL,
  `deproj_03` varchar(31) DEFAULT NULL,
  `deproj_04` varchar(31) DEFAULT NULL,
  `deproj_05` varchar(31) DEFAULT NULL,
  `equip_val_01` varchar(31) DEFAULT NULL,
  `equip_val_02` varchar(31) DEFAULT NULL,
  `equip_val_03` varchar(31) DEFAULT NULL,
  `equip_val_04` varchar(31) DEFAULT NULL,
  `equip_val_05` varchar(31) DEFAULT NULL,
  `equip_val_06` varchar(31) DEFAULT NULL,
  `equip_val_07` varchar(31) DEFAULT NULL,
  `equip_val_08` varchar(31) DEFAULT NULL,
  `equip_val_09` varchar(31) DEFAULT NULL,
  `equip_val_10` varchar(31) DEFAULT NULL,
  `proj_expenditures_01` varchar(31) DEFAULT NULL,
  `proj_expenditures_02` varchar(31) DEFAULT NULL,
  `proj_expenditures_03` varchar(31) DEFAULT NULL,
  `proj_expenditures_04` varchar(31) DEFAULT NULL,
  `proj_expenditures_05` varchar(31) DEFAULT NULL,
  `dt_acquire_01` varchar(31) DEFAULT NULL,
  `dt_acquire_02` varchar(31) DEFAULT NULL,
  `dt_acquire_03` varchar(31) DEFAULT NULL,
  `dt_acquire_04` varchar(31) DEFAULT NULL,
  `dt_acquire_05` varchar(31) DEFAULT NULL,
  `dt_acquire_06` varchar(31) DEFAULT NULL,
  `dt_acquire_07` varchar(31) DEFAULT NULL,
  `dt_acquire_08` varchar(31) DEFAULT NULL,
  `dt_acquire_09` varchar(31) DEFAULT NULL,
  `dt_acquire_10` varchar(31) DEFAULT NULL,
  `hcai_proj_no_01` varchar(31) DEFAULT NULL,
  `hcai_proj_no_02` varchar(31) DEFAULT NULL,
  `hcai_proj_no_03` varchar(31) DEFAULT NULL,
  `hcai_proj_no_04` varchar(31) DEFAULT NULL,
  `hcai_proj_no_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_01` varchar(31) DEFAULT NULL,
  `means_for_acquisition_02` varchar(31) DEFAULT NULL,
  `means_for_acquisition_03` varchar(31) DEFAULT NULL,
  `means_for_acquisition_04` varchar(31) DEFAULT NULL,
  `means_for_acquisition_05` varchar(31) DEFAULT NULL,
  `means_for_acquisition_06` varchar(31) DEFAULT NULL,
  `means_for_acquisition_07` varchar(31) DEFAULT NULL,
  `means_for_acquisition_08` varchar(31) DEFAULT NULL,
  `means_for_acquisition_09` varchar(31) DEFAULT NULL,
  `means_for_acquisition_10` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `specialty_care_clinics`
--

DROP TABLE IF EXISTS `specialty_care_clinics`;
CREATE TABLE `specialty_care_clinics` (
  `oshpd_id` varchar(31) DEFAULT NULL,
  `fac_name` varchar(255) DEFAULT NULL,
  `fac_address_one` varchar(255) DEFAULT NULL,
  `fac_address_two` varchar(31) DEFAULT NULL,
  `fac_city` varchar(31) DEFAULT NULL,
  `fac_zipcode` varchar(31) DEFAULT NULL,
  `fac_phone` varchar(31) DEFAULT NULL,
  `fac_admin_name` varchar(255) DEFAULT NULL,
  `fac_oper_curryr` varchar(31) DEFAULT NULL,
  `beg_date` varchar(31) DEFAULT NULL,
  `end_date` varchar(31) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address_one` varchar(255) DEFAULT NULL,
  `parent_address_two` varchar(255) DEFAULT NULL,
  `parent_city` varchar(31) DEFAULT NULL,
  `parent_state` varchar(31) DEFAULT NULL,
  `parent_zipcode` varchar(31) DEFAULT NULL,
  `report_prep_name` varchar(31) DEFAULT NULL,
  `lic_status` varchar(31) DEFAULT NULL,
  `lic_status_date` varchar(31) DEFAULT NULL,
  `lic_orig_date` varchar(31) DEFAULT NULL,
  `report_status` varchar(31) DEFAULT NULL,
  `mcal_provider_no` varchar(31) DEFAULT NULL,
  `mcare_provider_no` varchar(31) DEFAULT NULL,
  `aclaims_no` varchar(31) DEFAULT NULL,
  `assembly_dist` varchar(31) DEFAULT NULL,
  `senate_dist` varchar(31) DEFAULT NULL,
  `congress_dist` varchar(31) DEFAULT NULL,
  `cens_tract` varchar(31) DEFAULT NULL,
  `med_svc_study_area` varchar(31) DEFAULT NULL,
  `laco_svc_plan_area` varchar(31) DEFAULT NULL,
  `health_svc_area` varchar(31) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `license_no` varchar(31) DEFAULT NULL,
  `longitude` varchar(31) DEFAULT NULL,
  `latitude` varchar(31) DEFAULT NULL,
  `type_lic` varchar(31) DEFAULT NULL,
  `type_cntrl` varchar(255) DEFAULT NULL,
  `patients_undupl` varchar(31) DEFAULT NULL,
  `encounters_totl` varchar(31) DEFAULT NULL,
  `op_rm_cy` varchar(31) DEFAULT NULL,
  `surg_totl` varchar(31) DEFAULT NULL,
  `encounters_psy_gen_med` varchar(31) DEFAULT NULL,
  `encounters_psy_subst_abuse` varchar(31) DEFAULT NULL,
  `encounters_psy_mental_hlth_couns` varchar(31) DEFAULT NULL,
  `encounters_psy_all_othr` varchar(31) DEFAULT NULL,
  `encounters_psy_totl` varchar(31) DEFAULT NULL,
  `no_dialysis_stations` varchar(31) DEFAULT NULL,
  `app_in_home_training_capd_ccpd` varchar(31) DEFAULT NULL,
  `gro_rev_totl` varchar(31) DEFAULT NULL,
  `write_off_charity_totl` varchar(31) DEFAULT NULL,
  `write_off_contr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_bad_debts_totl` varchar(31) DEFAULT NULL,
  `write_off_othr_adjust_totl` varchar(31) DEFAULT NULL,
  `write_off_adjusts` varchar(31) DEFAULT NULL,
  `net_patient_rev_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_publ_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_grants_pvt_totl` varchar(31) DEFAULT NULL,
  `rev_othr_oper_donations_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_othr_totl` varchar(31) DEFAULT NULL,
  `rev_other_oper_totl` varchar(31) DEFAULT NULL,
  `rev_oper_totl` varchar(31) DEFAULT NULL,
  `exp_oper_sal_wages` varchar(31) DEFAULT NULL,
  `exp_oper_contr_prof` varchar(31) DEFAULT NULL,
  `exp_oper_sup` varchar(31) DEFAULT NULL,
  `exp_oper_rent_deprc` varchar(31) DEFAULT NULL,
  `exp_oper_util` varchar(31) DEFAULT NULL,
  `exp_oper_liab_prof_ins` varchar(31) DEFAULT NULL,
  `exp_oper_othr_ins` varchar(31) DEFAULT NULL,
  `exp_oper_all_othr` varchar(31) DEFAULT NULL,
  `exp_oper_totl` varchar(31) DEFAULT NULL,
  `net_frm_oper` varchar(31) DEFAULT NULL,
  `equip_acq_over_500k` varchar(31) DEFAULT NULL,
  `equip_01_descrip` varchar(31) DEFAULT NULL,
  `equip_01_value` varchar(31) DEFAULT NULL,
  `equip_01_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_01_acqui_means` varchar(31) DEFAULT NULL,
  `equip_02_descrip` varchar(31) DEFAULT NULL,
  `equip_02_value` varchar(31) DEFAULT NULL,
  `equip_02_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_02_acqui_means` varchar(31) DEFAULT NULL,
  `equip_03_descrip` varchar(31) DEFAULT NULL,
  `equip_03_value` varchar(31) DEFAULT NULL,
  `equip_03_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_03_acqui_means` varchar(31) DEFAULT NULL,
  `equip_04_descrip` varchar(31) DEFAULT NULL,
  `equip_04_value` varchar(31) DEFAULT NULL,
  `equip_04_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_04_acqui_means` varchar(31) DEFAULT NULL,
  `equip_05_descrip` varchar(31) DEFAULT NULL,
  `equip_05_value` varchar(31) DEFAULT NULL,
  `equip_05_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_05_acqui_means` varchar(31) DEFAULT NULL,
  `equip_06_descrip` varchar(31) DEFAULT NULL,
  `equip_06_value` varchar(31) DEFAULT NULL,
  `equip_06_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_06_acqui_means` varchar(31) DEFAULT NULL,
  `equip_07_descrip` varchar(31) DEFAULT NULL,
  `equip_07_value` varchar(31) DEFAULT NULL,
  `equip_07_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_07_acqui_means` varchar(31) DEFAULT NULL,
  `equip_08_descrip` varchar(31) DEFAULT NULL,
  `equip_08_value` varchar(31) DEFAULT NULL,
  `equip_08_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_08_acqui_means` varchar(31) DEFAULT NULL,
  `equip_09_descrip` varchar(31) DEFAULT NULL,
  `equip_09_value` varchar(31) DEFAULT NULL,
  `equip_09_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_09_acqui_means` varchar(31) DEFAULT NULL,
  `equip_10_descrip` varchar(31) DEFAULT NULL,
  `equip_10_value` varchar(31) DEFAULT NULL,
  `equip_10_acqui_dt` varchar(31) DEFAULT NULL,
  `equip_10_acqui_means` varchar(31) DEFAULT NULL,
  `cap_exp_over_1mil` varchar(31) DEFAULT NULL,
  `proj_01_descrip_cap_exp` varchar(255) DEFAULT NULL,
  `proj_01_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_01_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_02_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_02_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_03_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_03_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_04_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_04_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `proj_05_descrip_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_projtd_cap_exp` varchar(31) DEFAULT NULL,
  `proj_05_oshpd_proj_no` varchar(31) DEFAULT NULL,
  `non_response` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ssi_for_procedures_24`
--

DROP TABLE IF EXISTS `ssi_for_procedures_24`;
CREATE TABLE `ssi_for_procedures_24` (
  `year` int DEFAULT NULL,
  `state` varchar(63) DEFAULT NULL,
  `hai` varchar(63) DEFAULT NULL,
  `operative_procedure` varchar(255) DEFAULT NULL,
  `facility_id_1` varchar(63) DEFAULT NULL,
  `facility_name_1` varchar(255) DEFAULT NULL,
  `facility_id_2` varchar(63) DEFAULT NULL,
  `facility_name_2` varchar(255) DEFAULT NULL,
  `facility_id_3` varchar(63) DEFAULT NULL,
  `facility_name_3` varchar(255) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `procedure_count` int DEFAULT NULL,
  `infection_count` int DEFAULT NULL,
  `predicted_infection_count` int DEFAULT NULL,
  `sir` varchar(63) DEFAULT NULL,
  `comparison` varchar(63) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(63) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(63) DEFAULT NULL,
  `notes` varchar(1027) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ssi_for_procedures_5`
--

DROP TABLE IF EXISTS `ssi_for_procedures_5`;
CREATE TABLE `ssi_for_procedures_5` (
  `year` int DEFAULT NULL,
  `state` varchar(63) DEFAULT NULL,
  `hai` varchar(63) DEFAULT NULL,
  `operative_procedure` varchar(255) DEFAULT NULL,
  `facility_id_1` varchar(63) DEFAULT NULL,
  `facility_name_1` varchar(255) DEFAULT NULL,
  `facility_id_2` varchar(63) DEFAULT NULL,
  `facility_name_2` varchar(255) DEFAULT NULL,
  `facility_id_3` varchar(63) DEFAULT NULL,
  `facility_name_3` varchar(255) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `procedure_count` int DEFAULT NULL,
  `infection_count` int DEFAULT NULL,
  `predicted_infection_count` int DEFAULT NULL,
  `sir` varchar(63) DEFAULT NULL,
  `comparison` varchar(63) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(63) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(63) DEFAULT NULL,
  `notes` varchar(1027) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ssi_for_procedures_did_not_report`
--

DROP TABLE IF EXISTS `ssi_for_procedures_did_not_report`;
CREATE TABLE `ssi_for_procedures_did_not_report` (
  `year` int DEFAULT NULL,
  `state` varchar(13) DEFAULT NULL,
  `county` varchar(31) DEFAULT NULL,
  `hai` varchar(255) DEFAULT NULL,
  `facility_id` varchar(63) DEFAULT NULL,
  `facility_name` varchar(1027) DEFAULT NULL,
  `facility_type` varchar(127) DEFAULT NULL,
  `number_months_expected` int DEFAULT NULL,
  `notes` varchar(1027) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ssi_for_procedures_in_patients`
--

DROP TABLE IF EXISTS `ssi_for_procedures_in_patients`;
CREATE TABLE `ssi_for_procedures_in_patients` (
  `year` int DEFAULT NULL,
  `state` varchar(63) DEFAULT NULL,
  `hai` varchar(63) DEFAULT NULL,
  `facility_id` varchar(63) DEFAULT NULL,
  `facility_name` varchar(1027) DEFAULT NULL,
  `facility_type` varchar(63) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(63) DEFAULT NULL,
  `hospital_type` varchar(63) DEFAULT NULL,
  `operative_procedure` varchar(1027) DEFAULT NULL,
  `procedure_count` int DEFAULT NULL,
  `infections_reported` int DEFAULT NULL,
  `infections_predicted` int DEFAULT NULL,
  `predicted_infection_count` int DEFAULT NULL,
  `infection_count` int DEFAULT NULL,
  `sir` varchar(63) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(63) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(63) DEFAULT NULL,
  `comparison` varchar(63) DEFAULT NULL,
  `on_track_to_goal` varchar(63) DEFAULT NULL,
  `sir_2015` varchar(63) DEFAULT NULL,
  `notes` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ssi_for_procedures_in_patients_pooled`
--

DROP TABLE IF EXISTS `ssi_for_procedures_in_patients_pooled`;
CREATE TABLE `ssi_for_procedures_in_patients_pooled` (
  `year` int DEFAULT NULL,
  `state` varchar(63) DEFAULT NULL,
  `hai` varchar(63) DEFAULT NULL,
  `facility_id` varchar(63) DEFAULT NULL,
  `facility_name` varchar(1027) DEFAULT NULL,
  `facility_type` varchar(63) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(63) DEFAULT NULL,
  `hospital_type` varchar(63) DEFAULT NULL,
  `operative_procedure` varchar(1027) DEFAULT NULL,
  `procedure_count` int DEFAULT NULL,
  `infections_reported` int DEFAULT NULL,
  `infections_predicted` int DEFAULT NULL,
  `predicted_infection_count` int DEFAULT NULL,
  `infection_count` int DEFAULT NULL,
  `sir` varchar(63) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(63) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(63) DEFAULT NULL,
  `comparison` varchar(63) DEFAULT NULL,
  `on_track_to_goal` varchar(63) DEFAULT NULL,
  `sir_2015` varchar(63) DEFAULT NULL,
  `notes` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_death_profiles`
--

DROP TABLE IF EXISTS `statewide_death_profiles`;
CREATE TABLE `statewide_death_profiles` (
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
-- Table structure for table `sud_facilities`
--

DROP TABLE IF EXISTS `sud_facilities`;
CREATE TABLE `sud_facilities` (
  `x` decimal(18,15) DEFAULT NULL,
  `y` decimal(18,15) DEFAULT NULL,
  `objectid` varchar(4) DEFAULT NULL,
  `county_code` varchar(2) DEFAULT NULL,
  `record_id` varchar(9) DEFAULT NULL,
  `legal_name` varchar(100) DEFAULT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `facility_address` varchar(39) DEFAULT NULL,
  `facility_address_2` varchar(133) DEFAULT NULL,
  `additional_facility_locations` varchar(141) DEFAULT NULL,
  `facility_city` varchar(22) DEFAULT NULL,
  `facility_state` varchar(2) DEFAULT NULL,
  `facility_zip` varchar(10) DEFAULT NULL,
  `facility_phone` varchar(16) DEFAULT NULL,
  `type_of_application` varchar(22) DEFAULT NULL,
  `service_type` varchar(9) DEFAULT NULL,
  `resident_capacity` int DEFAULT NULL,
  `total_occupancy` int DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `target_population` varchar(25) DEFAULT NULL,
  `incidental_medical_services` varchar(3) DEFAULT NULL,
  `adolescent_waiver` varchar(3) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `countyname` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tobacco_use_in_adults`
--

DROP TABLE IF EXISTS `tobacco_use_in_adults`;
CREATE TABLE `tobacco_use_in_adults` (
  `year` varchar(4) DEFAULT NULL,
  `demographic` varchar(35) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `se` varchar(4) DEFAULT NULL,
  `lower95` varchar(4) DEFAULT NULL,
  `upper95` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `top_10_icd10_diagnosis_code_categories_for_adults_by_age_group`
--

DROP TABLE IF EXISTS `top_10_icd10_diagnosis_code_categories_for_adults_by_age_group`;
CREATE TABLE `top_10_icd10_diagnosis_code_categories_for_adults_by_age_group` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(15) DEFAULT NULL,
  `dx_top10_desc` varchar(80) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(0) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `top_10_icd10_diagnosis_code_categories_for_adults_by_language`
--

DROP TABLE IF EXISTS `top_10_icd10_diagnosis_code_categories_for_adults_by_language`;
CREATE TABLE `top_10_icd10_diagnosis_code_categories_for_adults_by_language` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `dx_top10_desc` varchar(101) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `top_10_icd10_diagnosis_code_categories_for_adults_by_race_group`
--

DROP TABLE IF EXISTS `top_10_icd10_diagnosis_code_categories_for_adults_by_race_group`;
CREATE TABLE `top_10_icd10_diagnosis_code_categories_for_adults_by_race_group` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `dx_top10_desc` varchar(80) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(0) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `top_10_icd10_diagnosis_code_categories_for_adults_by_sex`
--

DROP TABLE IF EXISTS `top_10_icd10_diagnosis_code_categories_for_adults_by_sex`;
CREATE TABLE `top_10_icd10_diagnosis_code_categories_for_adults_by_sex` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `dx_top10_desc` varchar(80) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(0) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `unplanned_30_day_hospital_readmission_rate`
--

DROP TABLE IF EXISTS `unplanned_30_day_hospital_readmission_rate`;
CREATE TABLE `unplanned_30_day_hospital_readmission_rate` (
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(14) DEFAULT NULL,
  `strata_name` varchar(22) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `total_admits_icd_9` varchar(7) DEFAULT NULL,
  `30_day_readmits_icd_9_` varchar(6) DEFAULT NULL,
  `30_day_readmission_rate_icd_9` varchar(6) DEFAULT NULL,
  `total_admits_icd_10` varchar(9) DEFAULT NULL,
  `30_day_readmits_icd_10_` varchar(7) DEFAULT NULL,
  `30_day_readmission_rate_icd_10` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `voters_region_county_crosswalk`
--

DROP TABLE IF EXISTS `voters_region_county_crosswalk`;
CREATE TABLE `voters_region_county_crosswalk` (
  `county_fips` char(5) DEFAULT NULL,
  `county` varchar(63) DEFAULT NULL,
  `mpo_region` varchar(63) DEFAULT NULL,
  `mpo_region_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `voters_registrations`
--

DROP TABLE IF EXISTS `voters_registrations`;
CREATE TABLE `voters_registrations` (
  `ind_id` int DEFAULT NULL,
  `ind_definition` varchar(127) DEFAULT NULL,
  `reportyear` int DEFAULT NULL,
  `race_eth_code` int DEFAULT NULL,
  `race_eth_name` varchar(31) DEFAULT NULL,
  `geotype` varchar(5) DEFAULT NULL,
  `geotypevalue` varchar(31) DEFAULT NULL,
  `geoname` varchar(63) DEFAULT NULL,
  `county_nam` varchar(63) DEFAULT NULL,
  `county_fips` varchar(31) DEFAULT NULL,
  `region_name` varchar(63) DEFAULT NULL,
  `region_code` varchar(15) DEFAULT NULL,
  `strata_one_code` varchar(15) DEFAULT NULL,
  `strata_one_name` varchar(31) DEFAULT NULL,
  `strata_two_code` varchar(15) DEFAULT NULL,
  `strata_two_name` varchar(31) DEFAULT NULL,
  `numerator` varchar(63) DEFAULT NULL,
  `denominator` varchar(63) DEFAULT NULL,
  `estimate` varchar(63) DEFAULT NULL,
  `ll_95ci` varchar(63) DEFAULT NULL,
  `ul_95ci` varchar(63) DEFAULT NULL,
  `se` varchar(63) DEFAULT NULL,
  `rse` varchar(63) DEFAULT NULL,
  `ca_rr` varchar(63) DEFAULT NULL,
  `version` varchar(63) DEFAULT NULL,
  `vap` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wastewater_surveillance`
--

DROP TABLE IF EXISTS `wastewater_surveillance`;
CREATE TABLE `wastewater_surveillance` (
  `elevation` varchar(6) DEFAULT NULL,
  `epaid` varchar(11) DEFAULT NULL,
  `wwtp_name` varchar(23) DEFAULT NULL,
  `reporting_jurisdiction` varchar(2) DEFAULT NULL,
  `county_names` varchar(19) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `capacity_mgd` varchar(5) DEFAULT NULL,
  `population_served` varchar(9) DEFAULT NULL,
  `industrial_input` varchar(4) DEFAULT NULL,
  `stormwater_input` varchar(3) DEFAULT NULL,
  `influent_equilibrated` varchar(3) DEFAULT NULL,
  `sewage_travel_time` varchar(4) DEFAULT NULL,
  `institution_type` varchar(24) DEFAULT NULL,
  `wwtp_jurisdiction` varchar(2) DEFAULT NULL,
  `solids_separation` varchar(16) DEFAULT NULL,
  `pasteurized` varchar(3) DEFAULT NULL,
  `time_zone` varchar(9) DEFAULT NULL,
  `sample_id` varchar(23) DEFAULT NULL,
  `lab_id` varchar(10) DEFAULT NULL,
  `sample_collect_date` varchar(10) DEFAULT NULL,
  `sample_collect_time` varchar(8) DEFAULT NULL,
  `flow_rate` varchar(16) DEFAULT NULL,
  `collection_water_temp` varchar(12) DEFAULT NULL,
  `sample_type` varchar(29) DEFAULT NULL,
  `composite_freq` varchar(18) DEFAULT NULL,
  `sample_matrix` varchar(17) DEFAULT NULL,
  `sample_location` varchar(8) DEFAULT NULL,
  `sample_location_specify` varchar(36) DEFAULT NULL,
  `collection_storage_time` varchar(5) DEFAULT NULL,
  `collection_storage_temp` varchar(3) DEFAULT NULL,
  `pretreatment` varchar(3) DEFAULT NULL,
  `pretreatment_specify` varchar(328) DEFAULT NULL,
  `concentration_method` varchar(89) DEFAULT NULL,
  `extraction_method` varchar(101) DEFAULT NULL,
  `pre_conc_storage_time` varchar(4) DEFAULT NULL,
  `pre_conc_storage_temp` varchar(3) DEFAULT NULL,
  `pre_ext_storage_time` varchar(4) DEFAULT NULL,
  `pre_ext_storage_temp` varchar(5) DEFAULT NULL,
  `tot_conc_vol` varchar(4) DEFAULT NULL,
  `ext_blank` varchar(3) DEFAULT NULL,
  `rec_eff_target_name` varchar(12) DEFAULT NULL,
  `rec_eff_spike_matrix` varchar(30) DEFAULT NULL,
  `rec_eff_spike_conc` varchar(11) DEFAULT NULL,
  `inhibition_detect` varchar(10) DEFAULT NULL,
  `pcr_type` varchar(5) DEFAULT NULL,
  `lod_ref` varchar(1561) DEFAULT NULL,
  `hum_frac_target_mic` varchar(24) DEFAULT NULL,
  `hum_frac_target_mic_ref` varchar(388) DEFAULT NULL,
  `hum_frac_target_chem` varchar(0) DEFAULT NULL,
  `hum_frac_target_chem_ref` varchar(0) DEFAULT NULL,
  `other_norm_name` varchar(7) DEFAULT NULL,
  `other_norm_ref` varchar(75) DEFAULT NULL,
  `quant_stan_type` varchar(3) DEFAULT NULL,
  `stan_ref` varchar(216) DEFAULT NULL,
  `inhibition_method` varchar(196) DEFAULT NULL,
  `num_no_target_control` varchar(11) DEFAULT NULL,
  `test_result_date` varchar(10) DEFAULT NULL,
  `ph` varchar(7) DEFAULT NULL,
  `conductivity` varchar(7) DEFAULT NULL,
  `tss` varchar(6) DEFAULT NULL,
  `equiv_sewage_amt` varchar(8) DEFAULT NULL,
  `lod_sewage` varchar(14) DEFAULT NULL,
  `ntc_amplify` varchar(3) DEFAULT NULL,
  `rec_eff_percent` varchar(17) DEFAULT NULL,
  `inhibition_adjust` varchar(3) DEFAULT NULL,
  `hum_frac_mic_conc` varchar(18) DEFAULT NULL,
  `hum_frac_mic_unit` varchar(25) DEFAULT NULL,
  `hum_frac_chem_conc` varchar(0) DEFAULT NULL,
  `hum_frac_chem_unit` varchar(0) DEFAULT NULL,
  `other_norm_conc` varchar(0) DEFAULT NULL,
  `other_norm_unit` varchar(0) DEFAULT NULL,
  `quality_flag` varchar(3) DEFAULT NULL,
  `qc_ignore` varchar(0) DEFAULT NULL,
  `dashboard_ignore` varchar(0) DEFAULT NULL,
  `analysis_ignore` varchar(0) DEFAULT NULL,
  `major_lab_method` varchar(3) DEFAULT NULL,
  `major_lab_method_desc` varchar(142) DEFAULT NULL,
  `facility_name` varchar(72) DEFAULT NULL,
  `pcr_target` varchar(14) DEFAULT NULL,
  `pcr_gene_target` varchar(24) DEFAULT NULL,
  `pcr_gene_target_ref` varchar(129) DEFAULT NULL,
  `pcr_target_units` varchar(25) DEFAULT NULL,
  `pcr_target_avg_conc` varchar(18) DEFAULT NULL,
  `pcr_target_std_error` varchar(16) DEFAULT NULL,
  `pcr_target_cl_95_lo` varchar(17) DEFAULT NULL,
  `pcr_target_cl_95_up` varchar(18) DEFAULT NULL,
  `pcr_target_below_lod` varchar(3) DEFAULT NULL,
  `data_source` varchar(39) DEFAULT NULL,
  `validated_methods` varchar(3) DEFAULT NULL,
  `site_id` varchar(18) DEFAULT NULL,
  `epa_registry_id` varchar(14) DEFAULT NULL,
  `created_at` varchar(19) DEFAULT NULL,
  `county_treatmentplant` varchar(15) DEFAULT NULL,
  `label_name` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wastewater_surveillance_log`
--

DROP TABLE IF EXISTS `wastewater_surveillance_log`;
CREATE TABLE `wastewater_surveillance_log` (
  `date_of_change` date DEFAULT NULL,
  `details` text,
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `west_nile_virus_cases`
--

DROP TABLE IF EXISTS `west_nile_virus_cases`;
CREATE TABLE `west_nile_virus_cases` (
  `year` varchar(4) DEFAULT NULL,
  `week` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `reported_positive_cases` varchar(2) DEFAULT NULL
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

--
-- Table structure for table `wqip_quarterly_performance`
--

DROP TABLE IF EXISTS `wqip_quarterly_performance`;
CREATE TABLE `wqip_quarterly_performance` (
  `achievement_points_antipsych` varchar(1) DEFAULT NULL,
  `achievement_points_fall` varchar(1) DEFAULT NULL,
  `achievement_points_pu` varchar(1) DEFAULT NULL,
  `acuity_area_score` varchar(11) DEFAULT NULL,
  `acuity_points_earned` varchar(11) DEFAULT NULL,
  `acuity_possible_points` varchar(2) DEFAULT NULL,
  `antipsych_denom_annotation` varchar(1) DEFAULT NULL,
  `antipsych_denom_pyr_annotation` varchar(1) DEFAULT NULL,
  `antipsych_denom_pyr` varchar(3) DEFAULT NULL,
  `antipsych_denom` varchar(3) DEFAULT NULL,
  `antipsych_metric_score` varchar(1) DEFAULT NULL,
  `antipsych_num_annotation` varchar(1) DEFAULT NULL,
  `antipsych_num_pyr_annotation` varchar(1) DEFAULT NULL,
  `antipsych_num_pyr` varchar(3) DEFAULT NULL,
  `antipsych_num` varchar(3) DEFAULT NULL,
  `antipsych_rate_annotation` varchar(1) DEFAULT NULL,
  `antipsych_rate_pyr_annotation` varchar(1) DEFAULT NULL,
  `antipsych_rate_pyr` varchar(7) DEFAULT NULL,
  `antipsych_rate` varchar(11) DEFAULT NULL,
  `ccn` varchar(6) DEFAULT NULL,
  `cna_days_compliant` varchar(11) DEFAULT NULL,
  `cna_rate` varchar(5) DEFAULT NULL,
  `facilityid` varchar(9) DEFAULT NULL,
  `facility_name` varchar(61) DEFAULT NULL,
  `fall_denom_annotation` varchar(1) DEFAULT NULL,
  `fall_denom_pyr_annotation` varchar(1) DEFAULT NULL,
  `fall_denom_pyr` varchar(4) DEFAULT NULL,
  `fall_denom` varchar(4) DEFAULT NULL,
  `fall_metric_score` varchar(1) DEFAULT NULL,
  `fall_num_annotation` varchar(1) DEFAULT NULL,
  `fall_num_pyr_annotation` varchar(1) DEFAULT NULL,
  `fall_num_pyr` varchar(2) DEFAULT NULL,
  `fall_num` varchar(2) DEFAULT NULL,
  `fall_rate_annotation` varchar(1) DEFAULT NULL,
  `fall_rate_pyr_annotation` varchar(1) DEFAULT NULL,
  `fall_rate_pyr` varchar(7) DEFAULT NULL,
  `fall_rate` varchar(11) DEFAULT NULL,
  `gap_closure_antipsych_annotation` varchar(1) DEFAULT NULL,
  `gap_closure_antipsych` varchar(11) DEFAULT NULL,
  `gap_closure_fall_annotation` varchar(1) DEFAULT NULL,
  `gap_closure_fall` varchar(11) DEFAULT NULL,
  `gap_closure_pu_annotation` varchar(1) DEFAULT NULL,
  `gap_closure_pu` varchar(11) DEFAULT NULL,
  `hcai_id` varchar(9) DEFAULT NULL,
  `improvement_points_antipsych` varchar(1) DEFAULT NULL,
  `improvement_points_fall` varchar(1) DEFAULT NULL,
  `improvement_points_pu` varchar(1) DEFAULT NULL,
  `ltmw_denom_annotation` varchar(1) DEFAULT NULL,
  `ltmw_denom` varchar(3) DEFAULT NULL,
  `ltmw_num_annotation` varchar(1) DEFAULT NULL,
  `ltmw_num` varchar(2) DEFAULT NULL,
  `ltmw_rate_annotation` varchar(1) DEFAULT NULL,
  `ltmw_rate` varchar(11) DEFAULT NULL,
  `lvn_days_compliant` varchar(10) DEFAULT NULL,
  `lvn_rate` varchar(5) DEFAULT NULL,
  `mds_area_score` varchar(11) DEFAULT NULL,
  `mds_data_completeness` varchar(11) DEFAULT NULL,
  `mds_points_earned` varchar(2) DEFAULT NULL,
  `mds_points_possible` varchar(2) DEFAULT NULL,
  `medi_cal_share_area_score` varchar(3) DEFAULT NULL,
  `medi_cal_share_footnote` varchar(140) DEFAULT NULL,
  `medi_cal_share_points_earned` varchar(1) DEFAULT NULL,
  `medi_cal_share_possible_points` varchar(1) DEFAULT NULL,
  `medi_cal_share_rate` varchar(11) DEFAULT NULL,
  `npi1` varchar(10) DEFAULT NULL,
  `npi2` varchar(10) DEFAULT NULL,
  `npi3` varchar(10) DEFAULT NULL,
  `npi` varchar(22) DEFAULT NULL,
  `pu_denom_annotation` varchar(1) DEFAULT NULL,
  `pu_denom_pyr_annotation` varchar(1) DEFAULT NULL,
  `pu_denom_pyr` varchar(3) DEFAULT NULL,
  `pu_denom` varchar(3) DEFAULT NULL,
  `pu_metric_score` varchar(1) DEFAULT NULL,
  `pu_num_annotation` varchar(1) DEFAULT NULL,
  `pu_num_pyr_annotation` varchar(1) DEFAULT NULL,
  `pu_num_pyr` varchar(3) DEFAULT NULL,
  `pu_num` varchar(3) DEFAULT NULL,
  `pu_rate_annotation` varchar(1) DEFAULT NULL,
  `pu_rate_pyr_annotation` varchar(1) DEFAULT NULL,
  `pu_rate_pyr` varchar(7) DEFAULT NULL,
  `pu_rate` varchar(7) DEFAULT NULL,
  `raw_mds_score` varchar(11) DEFAULT NULL,
  `raw_score_cna` varchar(1) DEFAULT NULL,
  `raw_score_lvn` varchar(1) DEFAULT NULL,
  `raw_score_rn` varchar(1) DEFAULT NULL,
  `raw_score_total_nursing` varchar(1) DEFAULT NULL,
  `raw_score_weekend` varchar(1) DEFAULT NULL,
  `re_completeness_area_score` varchar(3) DEFAULT NULL,
  `re_completeness_points_earned` varchar(2) DEFAULT NULL,
  `re_completeness_points_possible` varchar(2) DEFAULT NULL,
  `re_completeness_rate` varchar(11) DEFAULT NULL,
  `rn_days_compliant` varchar(10) DEFAULT NULL,
  `rn_rate` varchar(5) DEFAULT NULL,
  `score_cna` varchar(11) DEFAULT NULL,
  `score_lvn` varchar(11) DEFAULT NULL,
  `score_rn` varchar(11) DEFAULT NULL,
  `score_total_nursing` varchar(11) DEFAULT NULL,
  `score_total_weekend_nursing` varchar(11) DEFAULT NULL,
  `staffing_turnover_rate` varchar(5) DEFAULT NULL,
  `total_nursing_days_compliant` varchar(11) DEFAULT NULL,
  `total_nursing_rate` varchar(6) DEFAULT NULL,
  `total_weekend_days_compliant` varchar(11) DEFAULT NULL,
  `total_weekend_nursing_rate` varchar(6) DEFAULT NULL,
  `turnover_area_score` varchar(11) DEFAULT NULL,
  `turnover_points_earned` varchar(1) DEFAULT NULL,
  `turnover_possible_points` varchar(1) DEFAULT NULL,
  `quarter` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `xray_providers`
--

DROP TABLE IF EXISTS `xray_providers`;
CREATE TABLE `xray_providers` (
  `license_type` varchar(127) DEFAULT NULL,
  `first_name` varchar(127) DEFAULT NULL,
  `last_name` varchar(127) DEFAULT NULL,
  `city` varchar(31) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dump completed on 2024-12-05 17:00:17
