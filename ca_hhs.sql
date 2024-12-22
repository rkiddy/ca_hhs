-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: ca_hhs
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1


--
-- Table structure for table `1960_2022_final_births_by_month_statewide`
--

DROP TABLE IF EXISTS `1960_2022_final_births_by_month_statewide`;
CREATE TABLE `1960_2022_final_births_by_month_statewide` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(25) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1960_2022_final_births_by_year_statewide`
--

DROP TABLE IF EXISTS `1960_2022_final_births_by_year_statewide`;
CREATE TABLE `1960_2022_final_births_by_year_statewide` (
  `year` varchar(4) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(36) DEFAULT NULL,
  `strata_name` varchar(29) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1995_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `1995_quarter_4_sum_of_four_quarters`;
CREATE TABLE `1995_quarter_4_sum_of_four_quarters` (
  `fac_no_` varchar(9) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `qtr` varchar(3) DEFAULT NULL,
  `fac_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `peer` varchar(2) DEFAULT NULL,
  `toc` varchar(1) DEFAULT NULL,
  `bg_date` varchar(9) DEFAULT NULL,
  `ed_date` varchar(9) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(5) DEFAULT NULL,
  `dis_cnty` varchar(5) DEFAULT NULL,
  `dis_thrd` varchar(5) DEFAULT NULL,
  `dis91oth` varchar(1) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(5) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(6) DEFAULT NULL,
  `day_mcal` varchar(6) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day91oth` varchar(1) DEFAULT NULL,
  `day_oth` varchar(6) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(6) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(6) DEFAULT NULL,
  `vis_cnty` varchar(6) DEFAULT NULL,
  `vis_thrd` varchar(6) DEFAULT NULL,
  `vis91oth` varchar(1) DEFAULT NULL,
  `vis_oth` varchar(6) DEFAULT NULL,
  `vis_tot` varchar(6) DEFAULT NULL,
  `tot_exp` varchar(10) DEFAULT NULL,
  `inp_exp` varchar(10) DEFAULT NULL,
  `out_exp` varchar(9) DEFAULT NULL,
  `phy_comp` varchar(8) DEFAULT NULL,
  `gri_mcar` varchar(9) DEFAULT NULL,
  `gri_mcal` varchar(9) DEFAULT NULL,
  `gri_cnty` varchar(9) DEFAULT NULL,
  `gri_thrd` varchar(9) DEFAULT NULL,
  `gri_oth` varchar(9) DEFAULT NULL,
  `gri_tot` varchar(10) DEFAULT NULL,
  `gro_mcar` varchar(8) DEFAULT NULL,
  `gro_mcal` varchar(9) DEFAULT NULL,
  `gro_cnty` varchar(9) DEFAULT NULL,
  `gro_thrd` varchar(9) DEFAULT NULL,
  `gro_oth` varchar(9) DEFAULT NULL,
  `gro_tot` varchar(9) DEFAULT NULL,
  `ded_mcar` varchar(9) DEFAULT NULL,
  `ded_mcal` varchar(9) DEFAULT NULL,
  `ded_disp` varchar(10) DEFAULT NULL,
  `ded_cnty` varchar(9) DEFAULT NULL,
  `ded_thrd` varchar(9) DEFAULT NULL,
  `ded_bd` varchar(8) DEFAULT NULL,
  `ded_hb` varchar(7) DEFAULT NULL,
  `ded_91ch` varchar(1) DEFAULT NULL,
  `ded_char` varchar(8) DEFAULT NULL,
  `ded_gift` varchar(1) DEFAULT NULL,
  `ded_rest` varchar(8) DEFAULT NULL,
  `ded_tch` varchar(7) DEFAULT NULL,
  `ded_clin` varchar(8) DEFAULT NULL,
  `ded91oth` varchar(1) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(10) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(9) DEFAULT NULL,
  `net91oth` varchar(1) DEFAULT NULL,
  `net_oth` varchar(9) DEFAULT NULL,
  `net_tot` varchar(9) DEFAULT NULL,
  `othoprev` varchar(8) DEFAULT NULL,
  `nonoprex` varchar(9) DEFAULT NULL,
  `capital` varchar(9) DEFAULT NULL,
  `assets` varchar(9) DEFAULT NULL,
  `disp_tfr` varchar(9) DEFAULT NULL,
  `puripdis` varchar(4) DEFAULT NULL,
  `puripday` varchar(4) DEFAULT NULL,
  `puripexp` varchar(7) DEFAULT NULL,
  `puriprev` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1996_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `1996_quarter_4_sum_of_four_quarters`;
CREATE TABLE `1996_quarter_4_sum_of_four_quarters` (
  `fac_no_` varchar(9) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `qtr` varchar(1) DEFAULT NULL,
  `fac_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `toc` varchar(1) DEFAULT NULL,
  `bg_date` varchar(6) DEFAULT NULL,
  `ed_date` varchar(9) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(8) DEFAULT NULL,
  `dis_mcal` varchar(8) DEFAULT NULL,
  `dis_cnty` varchar(10) DEFAULT NULL,
  `dis_thrd` varchar(10) DEFAULT NULL,
  `dis_oth` varchar(10) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(10) DEFAULT NULL,
  `day_mcar` varchar(10) DEFAULT NULL,
  `day_mcal` varchar(10) DEFAULT NULL,
  `day_cnty` varchar(10) DEFAULT NULL,
  `day_thrd` varchar(10) DEFAULT NULL,
  `day_oth` varchar(10) DEFAULT NULL,
  `day_tot` varchar(10) DEFAULT NULL,
  `day_ltc` varchar(10) DEFAULT NULL,
  `vis_mcar` varchar(10) DEFAULT NULL,
  `vis_mcal` varchar(10) DEFAULT NULL,
  `vis_cnty` varchar(10) DEFAULT NULL,
  `vis_thrd` varchar(10) DEFAULT NULL,
  `vis_oth` varchar(10) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `tot_exp` varchar(11) DEFAULT NULL,
  `inp_exp` varchar(11) DEFAULT NULL,
  `out_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `gri_mcar` varchar(11) DEFAULT NULL,
  `gri_mcal` varchar(11) DEFAULT NULL,
  `gri_cnty` varchar(11) DEFAULT NULL,
  `gri_thrd` varchar(11) DEFAULT NULL,
  `gri_oth` varchar(11) DEFAULT NULL,
  `gri_tot` varchar(11) DEFAULT NULL,
  `gro_mcar` varchar(11) DEFAULT NULL,
  `gro_mcal` varchar(11) DEFAULT NULL,
  `gro_cnty` varchar(11) DEFAULT NULL,
  `gro_thrd` varchar(11) DEFAULT NULL,
  `gro_oth` varchar(11) DEFAULT NULL,
  `gro_tot` varchar(11) DEFAULT NULL,
  `ded_mcar` varchar(11) DEFAULT NULL,
  `ded_mcal` varchar(11) DEFAULT NULL,
  `ded_disp` varchar(11) DEFAULT NULL,
  `ded_cnty` varchar(11) DEFAULT NULL,
  `ded_thrd` varchar(11) DEFAULT NULL,
  `ded_bd` varchar(11) DEFAULT NULL,
  `ded_hb` varchar(11) DEFAULT NULL,
  `ded_char` varchar(11) DEFAULT NULL,
  `ded_rest` varchar(11) DEFAULT NULL,
  `ded_tch` varchar(11) DEFAULT NULL,
  `ded_clin` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(11) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(11) DEFAULT NULL,
  `net_mcal` varchar(11) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(11) DEFAULT NULL,
  `net_oth` varchar(11) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `othoprev` varchar(11) DEFAULT NULL,
  `nonoprex` varchar(11) DEFAULT NULL,
  `capital` varchar(11) DEFAULT NULL,
  `assets` varchar(11) DEFAULT NULL,
  `disp_tfr` varchar(11) DEFAULT NULL,
  `puripdis` varchar(11) DEFAULT NULL,
  `puripday` varchar(11) DEFAULT NULL,
  `puripexp` varchar(11) DEFAULT NULL,
  `puriprev` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1997_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `1997_quarter_4_sum_of_four_quarters`;
CREATE TABLE `1997_quarter_4_sum_of_four_quarters` (
  `fac_no_` varchar(9) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `qtr` varchar(1) DEFAULT NULL,
  `fac_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `toc` varchar(1) DEFAULT NULL,
  `bg_date` varchar(6) DEFAULT NULL,
  `ed_date` varchar(9) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(8) DEFAULT NULL,
  `dis_mcal` varchar(8) DEFAULT NULL,
  `dis_cnty` varchar(10) DEFAULT NULL,
  `dis_thrd` varchar(10) DEFAULT NULL,
  `dis_oth` varchar(10) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(10) DEFAULT NULL,
  `day_mcar` varchar(10) DEFAULT NULL,
  `day_mcal` varchar(10) DEFAULT NULL,
  `day_cnty` varchar(10) DEFAULT NULL,
  `day_thrd` varchar(10) DEFAULT NULL,
  `day_oth` varchar(10) DEFAULT NULL,
  `day_tot` varchar(10) DEFAULT NULL,
  `day_ltc` varchar(10) DEFAULT NULL,
  `vis_mcar` varchar(10) DEFAULT NULL,
  `vis_mcal` varchar(10) DEFAULT NULL,
  `vis_cnty` varchar(10) DEFAULT NULL,
  `vis_thrd` varchar(10) DEFAULT NULL,
  `vis_oth` varchar(10) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `tot_exp` varchar(11) DEFAULT NULL,
  `inp_exp` varchar(11) DEFAULT NULL,
  `out_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `gri_mcar` varchar(11) DEFAULT NULL,
  `gri_mcal` varchar(11) DEFAULT NULL,
  `gri_cnty` varchar(11) DEFAULT NULL,
  `gri_thrd` varchar(11) DEFAULT NULL,
  `gri_oth` varchar(11) DEFAULT NULL,
  `gri_tot` varchar(11) DEFAULT NULL,
  `gro_mcar` varchar(11) DEFAULT NULL,
  `gro_mcal` varchar(11) DEFAULT NULL,
  `gro_cnty` varchar(11) DEFAULT NULL,
  `gro_thrd` varchar(11) DEFAULT NULL,
  `gro_oth` varchar(11) DEFAULT NULL,
  `gro_tot` varchar(11) DEFAULT NULL,
  `ded_mcar` varchar(11) DEFAULT NULL,
  `ded_mcal` varchar(11) DEFAULT NULL,
  `ded_disp` varchar(11) DEFAULT NULL,
  `ded_cnty` varchar(11) DEFAULT NULL,
  `ded_thrd` varchar(11) DEFAULT NULL,
  `ded_bd` varchar(11) DEFAULT NULL,
  `ded_hb` varchar(11) DEFAULT NULL,
  `ded_char` varchar(11) DEFAULT NULL,
  `ded_rest` varchar(11) DEFAULT NULL,
  `ded_tch` varchar(11) DEFAULT NULL,
  `ded_clin` varchar(11) DEFAULT NULL,
  `ded_cap` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(11) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(11) DEFAULT NULL,
  `net_mcal` varchar(11) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(11) DEFAULT NULL,
  `net_oth` varchar(11) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `othoprev` varchar(11) DEFAULT NULL,
  `nonoprex` varchar(11) DEFAULT NULL,
  `capital` varchar(11) DEFAULT NULL,
  `assets` varchar(11) DEFAULT NULL,
  `disp_tfr` varchar(11) DEFAULT NULL,
  `puripdis` varchar(11) DEFAULT NULL,
  `puripday` varchar(11) DEFAULT NULL,
  `puripexp` varchar(11) DEFAULT NULL,
  `puriprev` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1998_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `1998_quarter_4_sum_of_four_quarters`;
CREATE TABLE `1998_quarter_4_sum_of_four_quarters` (
  `fac_no_` varchar(9) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `qtr` varchar(1) DEFAULT NULL,
  `fac_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `toc` varchar(1) DEFAULT NULL,
  `bg_date` varchar(8) DEFAULT NULL,
  `ed_date` varchar(11) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(8) DEFAULT NULL,
  `dis_mcal` varchar(8) DEFAULT NULL,
  `dis_cnty` varchar(10) DEFAULT NULL,
  `dis_thrd` varchar(10) DEFAULT NULL,
  `dis_oth` varchar(10) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(10) DEFAULT NULL,
  `day_mcar` varchar(10) DEFAULT NULL,
  `day_mcal` varchar(10) DEFAULT NULL,
  `day_cnty` varchar(10) DEFAULT NULL,
  `day_thrd` varchar(10) DEFAULT NULL,
  `day_oth` varchar(10) DEFAULT NULL,
  `day_tot` varchar(10) DEFAULT NULL,
  `day_ltc` varchar(10) DEFAULT NULL,
  `vis_mcar` varchar(10) DEFAULT NULL,
  `vis_mcal` varchar(10) DEFAULT NULL,
  `vis_cnty` varchar(10) DEFAULT NULL,
  `vis_thrd` varchar(10) DEFAULT NULL,
  `vis_oth` varchar(10) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `tot_exp` varchar(11) DEFAULT NULL,
  `inp_exp` varchar(11) DEFAULT NULL,
  `out_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `gri_mcar` varchar(11) DEFAULT NULL,
  `gri_mcal` varchar(11) DEFAULT NULL,
  `gri_cnty` varchar(11) DEFAULT NULL,
  `gri_thrd` varchar(11) DEFAULT NULL,
  `gri_oth` varchar(11) DEFAULT NULL,
  `gri_tot` varchar(11) DEFAULT NULL,
  `gro_mcar` varchar(11) DEFAULT NULL,
  `gro_mcal` varchar(11) DEFAULT NULL,
  `gro_cnty` varchar(11) DEFAULT NULL,
  `gro_thrd` varchar(11) DEFAULT NULL,
  `gro_oth` varchar(11) DEFAULT NULL,
  `gro_tot` varchar(11) DEFAULT NULL,
  `ded_mcar` varchar(11) DEFAULT NULL,
  `ded_mcal` varchar(11) DEFAULT NULL,
  `ded_disp` varchar(11) DEFAULT NULL,
  `ded_cnty` varchar(11) DEFAULT NULL,
  `ded_thrd` varchar(11) DEFAULT NULL,
  `ded_bd` varchar(11) DEFAULT NULL,
  `ded_hb` varchar(11) DEFAULT NULL,
  `ded_char` varchar(11) DEFAULT NULL,
  `ded_rest` varchar(11) DEFAULT NULL,
  `ded_tch` varchar(11) DEFAULT NULL,
  `ded_clin` varchar(11) DEFAULT NULL,
  `ded_cap` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(11) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(11) DEFAULT NULL,
  `net_mcal` varchar(11) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(11) DEFAULT NULL,
  `net_oth` varchar(11) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `othoprev` varchar(11) DEFAULT NULL,
  `nonoprex` varchar(11) DEFAULT NULL,
  `capital` varchar(11) DEFAULT NULL,
  `assets` varchar(11) DEFAULT NULL,
  `disp_tfr` varchar(11) DEFAULT NULL,
  `puripdis` varchar(11) DEFAULT NULL,
  `puripday` varchar(11) DEFAULT NULL,
  `puripexp` varchar(11) DEFAULT NULL,
  `puriprev` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `1999_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `1999_quarter_4_sum_of_four_quarters`;
CREATE TABLE `1999_quarter_4_sum_of_four_quarters` (
  `fac_no_` varchar(9) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `qtr` varchar(1) DEFAULT NULL,
  `fac_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `toc` varchar(1) DEFAULT NULL,
  `bg_date` varchar(8) DEFAULT NULL,
  `ed_date` varchar(11) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(8) DEFAULT NULL,
  `dis_mcal` varchar(8) DEFAULT NULL,
  `dis_cnty` varchar(10) DEFAULT NULL,
  `dis_thrd` varchar(10) DEFAULT NULL,
  `dis_oth` varchar(10) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(10) DEFAULT NULL,
  `day_mcar` varchar(10) DEFAULT NULL,
  `day_mcal` varchar(10) DEFAULT NULL,
  `day_cnty` varchar(10) DEFAULT NULL,
  `day_thrd` varchar(10) DEFAULT NULL,
  `day_oth` varchar(10) DEFAULT NULL,
  `day_tot` varchar(10) DEFAULT NULL,
  `day_ltc` varchar(10) DEFAULT NULL,
  `vis_mcar` varchar(10) DEFAULT NULL,
  `vis_mcal` varchar(10) DEFAULT NULL,
  `vis_cnty` varchar(10) DEFAULT NULL,
  `vis_thrd` varchar(10) DEFAULT NULL,
  `vis_oth` varchar(10) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `tot_exp` varchar(11) DEFAULT NULL,
  `inp_exp` varchar(11) DEFAULT NULL,
  `out_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `gri_mcar` varchar(11) DEFAULT NULL,
  `gri_mcal` varchar(11) DEFAULT NULL,
  `gri_cnty` varchar(11) DEFAULT NULL,
  `gri_thrd` varchar(11) DEFAULT NULL,
  `gri_oth` varchar(11) DEFAULT NULL,
  `gri_tot` varchar(11) DEFAULT NULL,
  `gro_mcar` varchar(11) DEFAULT NULL,
  `gro_mcal` varchar(11) DEFAULT NULL,
  `gro_cnty` varchar(11) DEFAULT NULL,
  `gro_thrd` varchar(11) DEFAULT NULL,
  `gro_oth` varchar(11) DEFAULT NULL,
  `gro_tot` varchar(11) DEFAULT NULL,
  `ded_mcar` varchar(11) DEFAULT NULL,
  `ded_mcal` varchar(11) DEFAULT NULL,
  `ded_disp` varchar(11) DEFAULT NULL,
  `ded_cnty` varchar(11) DEFAULT NULL,
  `ded_thrd` varchar(11) DEFAULT NULL,
  `ded_bd` varchar(11) DEFAULT NULL,
  `ded_hb` varchar(11) DEFAULT NULL,
  `ded_char` varchar(11) DEFAULT NULL,
  `ded_rest` varchar(11) DEFAULT NULL,
  `ded_tch` varchar(11) DEFAULT NULL,
  `ded_clin` varchar(11) DEFAULT NULL,
  `ded_cap` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(11) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(11) DEFAULT NULL,
  `net_mcal` varchar(11) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(11) DEFAULT NULL,
  `net_oth` varchar(11) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `othoprev` varchar(11) DEFAULT NULL,
  `nonoprex` varchar(11) DEFAULT NULL,
  `capital` varchar(11) DEFAULT NULL,
  `assets` varchar(11) DEFAULT NULL,
  `disp_tfr` varchar(11) DEFAULT NULL,
  `puripdis` varchar(11) DEFAULT NULL,
  `puripday` varchar(11) DEFAULT NULL,
  `puripexp` varchar(11) DEFAULT NULL,
  `puriprev` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2012_2017_cy_hospital_annual_selected_file_machine_read_ee501c9c`
--

DROP TABLE IF EXISTS `2012_2017_cy_hospital_annual_selected_file_machine_read_ee501c9c`;
CREATE TABLE `2012_2017_cy_hospital_annual_selected_file_machine_read_ee501c9c` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(49) DEFAULT NULL,
  `beg_date` varchar(9) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `day_per` varchar(3) DEFAULT NULL,
  `data_ind` varchar(10) DEFAULT NULL,
  `audit_ind` varchar(21) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(11) DEFAULT NULL,
  `type_care` varchar(11) DEFAULT NULL,
  `type_hosp` varchar(10) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(28) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(23) DEFAULT NULL,
  `ceo_title` varchar(18) DEFAULT NULL,
  `web_site` varchar(32) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `rpt_prep` varchar(23) DEFAULT NULL,
  `org_name` varchar(40) DEFAULT NULL,
  `er_desig` varchar(1) DEFAULT NULL,
  `mcar_pronum` varchar(7) DEFAULT NULL,
  `mcal_pronum` varchar(9) DEFAULT NULL,
  `reg_mcalnum` varchar(9) DEFAULT NULL,
  `bed_lic` varchar(5) DEFAULT NULL,
  `bed_avl` varchar(5) DEFAULT NULL,
  `bed_stf` varchar(5) DEFAULT NULL,
  `variable` varchar(15) DEFAULT NULL,
  `amount` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2013_14_to_2015_16_kindergarten_immunizations`
--

DROP TABLE IF EXISTS `2013_14_to_2015_16_kindergarten_immunizations`;
CREATE TABLE `2013_14_to_2015_16_kindergarten_immunizations` (
  `school_year` varchar(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `school_type` varchar(7) DEFAULT NULL,
  `public_school_district` varchar(61) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `school_name` varchar(85) DEFAULT NULL,
  `enrollment` varchar(3) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2013_quarter_1_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2013_quarter_1_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2013_quarter_1_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(53) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(25) DEFAULT NULL,
  `lic_beds` varchar(7) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(8) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(12) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(3) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2013_quarter_2_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2013_quarter_2_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2013_quarter_2_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(53) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(22) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(8) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(12) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(3) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2013_quarter_3_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2013_quarter_3_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2013_quarter_3_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(53) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(22) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(8) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(12) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(3) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2013_quarter_4_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2013_quarter_4_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2013_quarter_4_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(58) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(25) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(8) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(12) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(8) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2014_quarter_1_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2014_quarter_1_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2014_quarter_1_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(52) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(25) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(8) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(12) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2014_quarter_2_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2014_quarter_2_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2014_quarter_2_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(52) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(25) DEFAULT NULL,
  `lic_beds` varchar(7) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(7) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(8) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(12) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(10) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2014_quarter_3_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2014_quarter_3_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2014_quarter_3_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(54) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(9) DEFAULT NULL,
  `end_date` varchar(9) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(25) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(8) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2014_quarter_4_sum_of_four_quarters_rev_7_15`
--

DROP TABLE IF EXISTS `2014_quarter_4_sum_of_four_quarters_rev_7_15`;
CREATE TABLE `2014_quarter_4_sum_of_four_quarters_rev_7_15` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(58) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(8) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(24) DEFAULT NULL,
  `lic_beds` varchar(7) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(7) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `ending_fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2015_quarter_1_sum_of_four_quarters_rev_4_16`
--

DROP TABLE IF EXISTS `2015_quarter_1_sum_of_four_quarters_rev_4_16`;
CREATE TABLE `2015_quarter_1_sum_of_four_quarters_rev_4_16` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(24) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(8) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(14) DEFAULT NULL,
  `net_mcal_mc` varchar(13) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(2) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2015_quarter_2_sum_of_four_quarters_rev_4_16`
--

DROP TABLE IF EXISTS `2015_quarter_2_sum_of_four_quarters_rev_4_16`;
CREATE TABLE `2015_quarter_2_sum_of_four_quarters_rev_4_16` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(24) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(6) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(2) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2015_quarter_3_sum_of_four_quarters_rev_4_16`
--

DROP TABLE IF EXISTS `2015_quarter_3_sum_of_four_quarters_rev_4_16`;
CREATE TABLE `2015_quarter_3_sum_of_four_quarters_rev_4_16` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(24) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(6) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(6) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(7) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2015_quarter_4_sum_of_four_quarters_rev_4_16`
--

DROP TABLE IF EXISTS `2015_quarter_4_sum_of_four_quarters_rev_4_16`;
CREATE TABLE `2015_quarter_4_sum_of_four_quarters_rev_4_16` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(24) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(12) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(10) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(12) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(14) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(6) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_17_to_2018_19_kindergarten_immunizations`
--

DROP TABLE IF EXISTS `2016_17_to_2018_19_kindergarten_immunizations`;
CREATE TABLE `2016_17_to_2018_19_kindergarten_immunizations` (
  `school_year` varchar(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `public_private` varchar(7) DEFAULT NULL,
  `public_school_district` varchar(74) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `school_name` varchar(91) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `enrollment` varchar(4) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `percent` varchar(2) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_count_desc` varchar(136) DEFAULT NULL,
  `annotation_percent_desc` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_quarter_1_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2016_quarter_1_sum_of_four_quarters`;
CREATE TABLE `2016_quarter_1_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(7) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(12) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(13) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(6) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_quarter_2_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2016_quarter_2_sum_of_four_quarters`;
CREATE TABLE `2016_quarter_2_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(72) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(6) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(12) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_quarter_3_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2016_quarter_3_sum_of_four_quarters`;
CREATE TABLE `2016_quarter_3_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(6) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_quarter_4_complete_data_set_4_14_17`
--

DROP TABLE IF EXISTS `2016_quarter_4_complete_data_set_4_14_17`;
CREATE TABLE `2016_quarter_4_complete_data_set_4_14_17` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(6) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(7) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(11) DEFAULT NULL,
  `grip_thrd_mc` varchar(12) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(12) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(11) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(11) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(10) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(12) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(11) DEFAULT NULL,
  `net_tot` varchar(12) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2016_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2016_quarter_4_sum_of_four_quarters`;
CREATE TABLE `2016_quarter_4_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(6) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(6) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(12) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(12) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(12) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(14) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_1_complete_data_set_7_14_17`
--

DROP TABLE IF EXISTS `2017_quarter_1_complete_data_set_7_14_17`;
CREATE TABLE `2017_quarter_1_complete_data_set_7_14_17` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(11) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(11) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(10) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_1_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2017_quarter_1_sum_of_four_quarters`;
CREATE TABLE `2017_quarter_1_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(79) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(10) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_2_complete_data_set_11_02_17`
--

DROP TABLE IF EXISTS `2017_quarter_2_complete_data_set_11_02_17`;
CREATE TABLE `2017_quarter_2_complete_data_set_11_02_17` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(11) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(7) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(10) DEFAULT NULL,
  `qa_suppl_pay` varchar(10) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_2_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2017_quarter_2_sum_of_four_quarters`;
CREATE TABLE `2017_quarter_2_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(28) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(8) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(13) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(6) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_3_complete_data_set_1_12_18`
--

DROP TABLE IF EXISTS `2017_quarter_3_complete_data_set_1_12_18`;
CREATE TABLE `2017_quarter_3_complete_data_set_1_12_18` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(7) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(12) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(11) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(7) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(10) DEFAULT NULL,
  `qa_suppl_pay` varchar(10) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_3_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2017_quarter_3_sum_of_four_quarters`;
CREATE TABLE `2017_quarter_3_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(33) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(28) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(5) DEFAULT NULL,
  `dis_mcar_mc` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(5) DEFAULT NULL,
  `dis_mcal_mc` varchar(5) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(3) DEFAULT NULL,
  `dis_thrd` varchar(4) DEFAULT NULL,
  `dis_thrd_mc` varchar(5) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(6) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(6) DEFAULT NULL,
  `day_mcar_mc` varchar(6) DEFAULT NULL,
  `day_mcal` varchar(6) DEFAULT NULL,
  `day_mcal_mc` varchar(5) DEFAULT NULL,
  `day_cnty` varchar(5) DEFAULT NULL,
  `day_cnty_mc` varchar(4) DEFAULT NULL,
  `day_thrd` varchar(5) DEFAULT NULL,
  `day_thrd_mc` varchar(6) DEFAULT NULL,
  `day_indgnt` varchar(5) DEFAULT NULL,
  `day_oth` varchar(6) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(6) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcar_mc` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(6) DEFAULT NULL,
  `vis_mcal_mc` varchar(6) DEFAULT NULL,
  `vis_cnty` varchar(6) DEFAULT NULL,
  `vis_cnty_mc` varchar(5) DEFAULT NULL,
  `vis_thrd` varchar(6) DEFAULT NULL,
  `vis_thrd_mc` varchar(7) DEFAULT NULL,
  `vis_indgnt` varchar(5) DEFAULT NULL,
  `vis_oth` varchar(6) DEFAULT NULL,
  `vis_tot` varchar(7) DEFAULT NULL,
  `grip_mcar` varchar(10) DEFAULT NULL,
  `grip_mcar_mc` varchar(10) DEFAULT NULL,
  `grip_mcal` varchar(10) DEFAULT NULL,
  `grip_mcal_mc` varchar(10) DEFAULT NULL,
  `grip_cnty` varchar(8) DEFAULT NULL,
  `grip_cnty_mc` varchar(8) DEFAULT NULL,
  `grip_thrd` varchar(9) DEFAULT NULL,
  `grip_thrd_mc` varchar(10) DEFAULT NULL,
  `grip_indgnt` varchar(8) DEFAULT NULL,
  `grip_oth` varchar(9) DEFAULT NULL,
  `grip_tot` varchar(11) DEFAULT NULL,
  `grop_mcar` varchar(10) DEFAULT NULL,
  `grop_mcar_mc` varchar(10) DEFAULT NULL,
  `grop_mcal` varchar(9) DEFAULT NULL,
  `grop_mcal_mc` varchar(9) DEFAULT NULL,
  `grop_cnty` varchar(9) DEFAULT NULL,
  `grop_cnty_mc` varchar(8) DEFAULT NULL,
  `grop_thrd` varchar(9) DEFAULT NULL,
  `grop_thrd_mc` varchar(10) DEFAULT NULL,
  `grop_indgnt` varchar(9) DEFAULT NULL,
  `grop_oth` varchar(9) DEFAULT NULL,
  `grop_tot` varchar(10) DEFAULT NULL,
  `bad_debt` varchar(9) DEFAULT NULL,
  `cadj_mcar` varchar(10) DEFAULT NULL,
  `cadj_mcar_mc` varchar(10) DEFAULT NULL,
  `cadj_mcal` varchar(10) DEFAULT NULL,
  `cadj_mcal_mc` varchar(10) DEFAULT NULL,
  `disp_855` varchar(10) DEFAULT NULL,
  `cadj_cnty` varchar(9) DEFAULT NULL,
  `cadj_cnty_mc` varchar(8) DEFAULT NULL,
  `cadj_thrd` varchar(9) DEFAULT NULL,
  `cadj_thrd_mc` varchar(10) DEFAULT NULL,
  `char_hb` varchar(1) DEFAULT NULL,
  `char_oth` varchar(9) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(8) DEFAULT NULL,
  `tch_supp` varchar(9) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `cap_mcar` varchar(8) DEFAULT NULL,
  `cap_mcal` varchar(9) DEFAULT NULL,
  `cap_cnty` varchar(8) DEFAULT NULL,
  `cap_thrd` varchar(9) DEFAULT NULL,
  `cap_tot` varchar(9) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcar_mc` varchar(10) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_mcal_mc` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(9) DEFAULT NULL,
  `net_cnty_mc` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(9) DEFAULT NULL,
  `net_thrd_mc` varchar(10) DEFAULT NULL,
  `net_indgnt` varchar(9) DEFAULT NULL,
  `net_oth` varchar(10) DEFAULT NULL,
  `net_tot` varchar(10) DEFAULT NULL,
  `oth_op_rev` varchar(10) DEFAULT NULL,
  `tot_op_exp` varchar(10) DEFAULT NULL,
  `phy_comp` varchar(9) DEFAULT NULL,
  `nonop_rev` varchar(9) DEFAULT NULL,
  `dis_pips` varchar(3) DEFAULT NULL,
  `day_pips` varchar(8) DEFAULT NULL,
  `exp_pips` varchar(8) DEFAULT NULL,
  `exp_pops` varchar(8) DEFAULT NULL,
  `cap_exp` varchar(9) DEFAULT NULL,
  `fix_assets` varchar(10) DEFAULT NULL,
  `disp_trnfr` varchar(9) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(3) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(8) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(8) DEFAULT NULL,
  `contr_adj_cc` varchar(8) DEFAULT NULL,
  `othr_deduct_cc` varchar(6) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(1) DEFAULT NULL,
  `net_pat_rev_cc` varchar(8) DEFAULT NULL,
  `qa_fees` varchar(8) DEFAULT NULL,
  `qa_suppl_pay` varchar(8) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_4_complete_data_set_4_13_18`
--

DROP TABLE IF EXISTS `2017_quarter_4_complete_data_set_4_13_18`;
CREATE TABLE `2017_quarter_4_complete_data_set_4_13_18` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(34) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(7) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(11) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(11) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2017_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2017_quarter_4_sum_of_four_quarters`;
CREATE TABLE `2017_quarter_4_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_1_complete_data_set_7_13_18`
--

DROP TABLE IF EXISTS `2018_quarter_1_complete_data_set_7_13_18`;
CREATE TABLE `2018_quarter_1_complete_data_set_7_13_18` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(28) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(7) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_1_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2018_quarter_1_sum_of_four_quarters`;
CREATE TABLE `2018_quarter_1_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(6) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(2) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(12) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(15) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(4) DEFAULT NULL,
  `day_pips` varchar(4) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_2_complete_data_set_10_10_18`
--

DROP TABLE IF EXISTS `2018_quarter_2_complete_data_set_10_10_18`;
CREATE TABLE `2018_quarter_2_complete_data_set_10_10_18` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(60) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_2_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2018_quarter_2_sum_of_four_quarters`;
CREATE TABLE `2018_quarter_2_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(6) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(15) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(15) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(11) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(10) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_3_complete_data_set_1_10_19`
--

DROP TABLE IF EXISTS `2018_quarter_3_complete_data_set_1_10_19`;
CREATE TABLE `2018_quarter_3_complete_data_set_1_10_19` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(10) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(7) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_3_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2018_quarter_3_sum_of_four_quarters`;
CREATE TABLE `2018_quarter_3_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(6) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(12) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(12) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(15) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(15) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(10) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_4_complete_data_set_4_11_2019`
--

DROP TABLE IF EXISTS `2018_quarter_4_complete_data_set_4_11_2019`;
CREATE TABLE `2018_quarter_4_complete_data_set_4_11_2019` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(6) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(7) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(10) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(10) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(13) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(10) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2018_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2018_quarter_4_sum_of_four_quarters`;
CREATE TABLE `2018_quarter_4_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(12) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(15) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(11) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(10) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(12) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_2020_to_2021_22_kindergarten_immunizations`
--

DROP TABLE IF EXISTS `2019_2020_to_2021_22_kindergarten_immunizations`;
CREATE TABLE `2019_2020_to_2021_22_kindergarten_immunizations` (
  `school_year` varchar(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `public_private` varchar(7) DEFAULT NULL,
  `public_school_district` varchar(61) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `school_name` varchar(89) DEFAULT NULL,
  `enrollment` varchar(4) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `percent` varchar(2) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_count_desc` varchar(136) DEFAULT NULL,
  `annotation_percent_desc` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_2_complete_data_set_10_10_19`
--

DROP TABLE IF EXISTS `2019_quarter_2_complete_data_set_10_10_19`;
CREATE TABLE `2019_quarter_2_complete_data_set_10_10_19` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(73) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(36) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(6) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(6) DEFAULT NULL,
  `dis_mcal_mc` varchar(6) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(3) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(7) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(7) DEFAULT NULL,
  `day_mcal` varchar(7) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(6) DEFAULT NULL,
  `day_cnty_mc` varchar(4) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(7) DEFAULT NULL,
  `day_indgnt` varchar(6) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(7) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(7) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(7) DEFAULT NULL,
  `vis_thrd_mc` varchar(8) DEFAULT NULL,
  `vis_indgnt` varchar(6) DEFAULT NULL,
  `vis_oth` varchar(7) DEFAULT NULL,
  `vis_tot` varchar(8) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(12) DEFAULT NULL,
  `grip_mcal_mc` varchar(12) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(10) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(11) DEFAULT NULL,
  `grip_tot` varchar(14) DEFAULT NULL,
  `grop_mcar` varchar(12) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(12) DEFAULT NULL,
  `grop_cnty` varchar(11) DEFAULT NULL,
  `grop_cnty_mc` varchar(11) DEFAULT NULL,
  `grop_thrd` varchar(12) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(11) DEFAULT NULL,
  `grop_oth` varchar(11) DEFAULT NULL,
  `grop_tot` varchar(14) DEFAULT NULL,
  `bad_debt` varchar(11) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(12) DEFAULT NULL,
  `cadj_mcal_mc` varchar(12) DEFAULT NULL,
  `disp_855` varchar(12) DEFAULT NULL,
  `cadj_cnty` varchar(11) DEFAULT NULL,
  `cadj_cnty_mc` varchar(11) DEFAULT NULL,
  `cadj_thrd` varchar(12) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(11) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(10) DEFAULT NULL,
  `tch_supp` varchar(11) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(14) DEFAULT NULL,
  `cap_mcar` varchar(11) DEFAULT NULL,
  `cap_mcal` varchar(11) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(11) DEFAULT NULL,
  `cap_tot` varchar(11) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(12) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(10) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(11) DEFAULT NULL,
  `net_oth` varchar(12) DEFAULT NULL,
  `net_tot` varchar(14) DEFAULT NULL,
  `oth_op_rev` varchar(12) DEFAULT NULL,
  `tot_op_exp` varchar(14) DEFAULT NULL,
  `phy_comp` varchar(11) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(10) DEFAULT NULL,
  `exp_pops` varchar(12) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(11) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(10) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(10) DEFAULT NULL,
  `othr_deduct_cc` varchar(2) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(10) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(11) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_2_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2019_quarter_2_sum_of_four_quarters`;
CREATE TABLE `2019_quarter_2_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(73) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `ceo` varchar(26) DEFAULT NULL,
  `lic_beds` varchar(6) DEFAULT NULL,
  `avl_beds` varchar(6) DEFAULT NULL,
  `stf_beds` varchar(6) DEFAULT NULL,
  `dis_mcar` varchar(7) DEFAULT NULL,
  `dis_mcar_mc` varchar(7) DEFAULT NULL,
  `dis_mcal` varchar(7) DEFAULT NULL,
  `dis_mcal_mc` varchar(7) DEFAULT NULL,
  `dis_cnty` varchar(6) DEFAULT NULL,
  `dis_cnty_mc` varchar(4) DEFAULT NULL,
  `dis_thrd` varchar(6) DEFAULT NULL,
  `dis_thrd_mc` varchar(7) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(6) DEFAULT NULL,
  `dis_tot` varchar(8) DEFAULT NULL,
  `dis_ltc` varchar(6) DEFAULT NULL,
  `day_mcar` varchar(8) DEFAULT NULL,
  `day_mcar_mc` varchar(8) DEFAULT NULL,
  `day_mcal` varchar(8) DEFAULT NULL,
  `day_mcal_mc` varchar(7) DEFAULT NULL,
  `day_cnty` varchar(7) DEFAULT NULL,
  `day_cnty_mc` varchar(6) DEFAULT NULL,
  `day_thrd` varchar(7) DEFAULT NULL,
  `day_thrd_mc` varchar(8) DEFAULT NULL,
  `day_indgnt` varchar(7) DEFAULT NULL,
  `day_oth` varchar(8) DEFAULT NULL,
  `day_tot` varchar(8) DEFAULT NULL,
  `day_ltc` varchar(8) DEFAULT NULL,
  `vis_mcar` varchar(8) DEFAULT NULL,
  `vis_mcar_mc` varchar(8) DEFAULT NULL,
  `vis_mcal` varchar(8) DEFAULT NULL,
  `vis_mcal_mc` varchar(8) DEFAULT NULL,
  `vis_cnty` varchar(7) DEFAULT NULL,
  `vis_cnty_mc` varchar(7) DEFAULT NULL,
  `vis_thrd` varchar(8) DEFAULT NULL,
  `vis_thrd_mc` varchar(10) DEFAULT NULL,
  `vis_indgnt` varchar(7) DEFAULT NULL,
  `vis_oth` varchar(8) DEFAULT NULL,
  `vis_tot` varchar(10) DEFAULT NULL,
  `grip_mcar` varchar(14) DEFAULT NULL,
  `grip_mcar_mc` varchar(14) DEFAULT NULL,
  `grip_mcal` varchar(14) DEFAULT NULL,
  `grip_mcal_mc` varchar(14) DEFAULT NULL,
  `grip_cnty` varchar(11) DEFAULT NULL,
  `grip_cnty_mc` varchar(11) DEFAULT NULL,
  `grip_thrd` varchar(12) DEFAULT NULL,
  `grip_thrd_mc` varchar(14) DEFAULT NULL,
  `grip_indgnt` varchar(11) DEFAULT NULL,
  `grip_oth` varchar(12) DEFAULT NULL,
  `grip_tot` varchar(15) DEFAULT NULL,
  `grop_mcar` varchar(14) DEFAULT NULL,
  `grop_mcar_mc` varchar(14) DEFAULT NULL,
  `grop_mcal` varchar(12) DEFAULT NULL,
  `grop_mcal_mc` varchar(14) DEFAULT NULL,
  `grop_cnty` varchar(12) DEFAULT NULL,
  `grop_cnty_mc` varchar(12) DEFAULT NULL,
  `grop_thrd` varchar(14) DEFAULT NULL,
  `grop_thrd_mc` varchar(14) DEFAULT NULL,
  `grop_indgnt` varchar(12) DEFAULT NULL,
  `grop_oth` varchar(12) DEFAULT NULL,
  `grop_tot` varchar(15) DEFAULT NULL,
  `bad_debt` varchar(12) DEFAULT NULL,
  `cadj_mcar` varchar(14) DEFAULT NULL,
  `cadj_mcar_mc` varchar(14) DEFAULT NULL,
  `cadj_mcal` varchar(14) DEFAULT NULL,
  `cadj_mcal_mc` varchar(14) DEFAULT NULL,
  `disp_855` varchar(13) DEFAULT NULL,
  `cadj_cnty` varchar(12) DEFAULT NULL,
  `cadj_cnty_mc` varchar(12) DEFAULT NULL,
  `cadj_thrd` varchar(14) DEFAULT NULL,
  `cadj_thrd_mc` varchar(14) DEFAULT NULL,
  `char_hb` varchar(2) DEFAULT NULL,
  `char_oth` varchar(12) DEFAULT NULL,
  `sub_indgnt` varchar(11) DEFAULT NULL,
  `tch_allow` varchar(11) DEFAULT NULL,
  `tch_supp` varchar(12) DEFAULT NULL,
  `ded_oth` varchar(12) DEFAULT NULL,
  `ded_tot` varchar(15) DEFAULT NULL,
  `cap_mcar` varchar(12) DEFAULT NULL,
  `cap_mcal` varchar(12) DEFAULT NULL,
  `cap_cnty` varchar(11) DEFAULT NULL,
  `cap_thrd` varchar(12) DEFAULT NULL,
  `cap_tot` varchar(12) DEFAULT NULL,
  `net_mcar` varchar(12) DEFAULT NULL,
  `net_mcar_mc` varchar(14) DEFAULT NULL,
  `net_mcal` varchar(12) DEFAULT NULL,
  `net_mcal_mc` varchar(12) DEFAULT NULL,
  `net_cnty` varchar(11) DEFAULT NULL,
  `net_cnty_mc` varchar(11) DEFAULT NULL,
  `net_thrd` varchar(12) DEFAULT NULL,
  `net_thrd_mc` varchar(14) DEFAULT NULL,
  `net_indgnt` varchar(12) DEFAULT NULL,
  `net_oth` varchar(13) DEFAULT NULL,
  `net_tot` varchar(15) DEFAULT NULL,
  `oth_op_rev` varchar(14) DEFAULT NULL,
  `tot_op_exp` varchar(15) DEFAULT NULL,
  `phy_comp` varchar(12) DEFAULT NULL,
  `nonop_rev` varchar(12) DEFAULT NULL,
  `dis_pips` varchar(2) DEFAULT NULL,
  `day_pips` varchar(2) DEFAULT NULL,
  `exp_pips` varchar(11) DEFAULT NULL,
  `exp_pops` varchar(12) DEFAULT NULL,
  `cap_exp` varchar(12) DEFAULT NULL,
  `fix_assets` varchar(14) DEFAULT NULL,
  `disp_trnfr` varchar(12) DEFAULT NULL,
  `dis_tot_cc` varchar(4) DEFAULT NULL,
  `pat_day_tot_cc` varchar(4) DEFAULT NULL,
  `tot_out_vis_cc` varchar(6) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(11) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(10) DEFAULT NULL,
  `contr_adj_cc` varchar(11) DEFAULT NULL,
  `othr_deduct_cc` varchar(8) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(2) DEFAULT NULL,
  `net_pat_rev_cc` varchar(11) DEFAULT NULL,
  `qa_fees` varchar(11) DEFAULT NULL,
  `qa_suppl_pay` varchar(12) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_3_complete_data_set_1_10_20`
--

DROP TABLE IF EXISTS `2019_quarter_3_complete_data_set_1_10_20`;
CREATE TABLE `2019_quarter_3_complete_data_set_1_10_20` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(38) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(4) DEFAULT NULL,
  `dis_mcar_mc` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(4) DEFAULT NULL,
  `dis_mcal_mc` varchar(4) DEFAULT NULL,
  `dis_cnty` varchar(3) DEFAULT NULL,
  `dis_cnty_mc` varchar(2) DEFAULT NULL,
  `dis_thrd` varchar(4) DEFAULT NULL,
  `dis_thrd_mc` varchar(5) DEFAULT NULL,
  `dis_indgnt` varchar(3) DEFAULT NULL,
  `dis_oth` varchar(3) DEFAULT NULL,
  `dis_tot` varchar(5) DEFAULT NULL,
  `dis_ltc` varchar(3) DEFAULT NULL,
  `day_mcar` varchar(5) DEFAULT NULL,
  `day_mcar_mc` varchar(5) DEFAULT NULL,
  `day_mcal` varchar(5) DEFAULT NULL,
  `day_mcal_mc` varchar(5) DEFAULT NULL,
  `day_cnty` varchar(4) DEFAULT NULL,
  `day_cnty_mc` varchar(3) DEFAULT NULL,
  `day_thrd` varchar(5) DEFAULT NULL,
  `day_thrd_mc` varchar(5) DEFAULT NULL,
  `day_indgnt` varchar(4) DEFAULT NULL,
  `day_oth` varchar(6) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(5) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcar_mc` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(5) DEFAULT NULL,
  `vis_mcal_mc` varchar(5) DEFAULT NULL,
  `vis_cnty` varchar(5) DEFAULT NULL,
  `vis_cnty_mc` varchar(5) DEFAULT NULL,
  `vis_thrd` varchar(5) DEFAULT NULL,
  `vis_thrd_mc` varchar(6) DEFAULT NULL,
  `vis_indgnt` varchar(4) DEFAULT NULL,
  `vis_oth` varchar(5) DEFAULT NULL,
  `vis_tot` varchar(6) DEFAULT NULL,
  `grip_mcar` varchar(10) DEFAULT NULL,
  `grip_mcar_mc` varchar(10) DEFAULT NULL,
  `grip_mcal` varchar(9) DEFAULT NULL,
  `grip_mcal_mc` varchar(9) DEFAULT NULL,
  `grip_cnty` varchar(8) DEFAULT NULL,
  `grip_cnty_mc` varchar(7) DEFAULT NULL,
  `grip_thrd` varchar(9) DEFAULT NULL,
  `grip_thrd_mc` varchar(10) DEFAULT NULL,
  `grip_indgnt` varchar(8) DEFAULT NULL,
  `grip_oth` varchar(8) DEFAULT NULL,
  `grip_tot` varchar(10) DEFAULT NULL,
  `grop_mcar` varchar(10) DEFAULT NULL,
  `grop_mcar_mc` varchar(10) DEFAULT NULL,
  `grop_mcal` varchar(9) DEFAULT NULL,
  `grop_mcal_mc` varchar(9) DEFAULT NULL,
  `grop_cnty` varchar(8) DEFAULT NULL,
  `grop_cnty_mc` varchar(8) DEFAULT NULL,
  `grop_thrd` varchar(9) DEFAULT NULL,
  `grop_thrd_mc` varchar(10) DEFAULT NULL,
  `grop_indgnt` varchar(8) DEFAULT NULL,
  `grop_oth` varchar(8) DEFAULT NULL,
  `grop_tot` varchar(10) DEFAULT NULL,
  `bad_debt` varchar(8) DEFAULT NULL,
  `cadj_mcar` varchar(10) DEFAULT NULL,
  `cadj_mcar_mc` varchar(10) DEFAULT NULL,
  `cadj_mcal` varchar(9) DEFAULT NULL,
  `cadj_mcal_mc` varchar(9) DEFAULT NULL,
  `disp_855` varchar(9) DEFAULT NULL,
  `cadj_cnty` varchar(8) DEFAULT NULL,
  `cadj_cnty_mc` varchar(8) DEFAULT NULL,
  `cadj_thrd` varchar(9) DEFAULT NULL,
  `cadj_thrd_mc` varchar(10) DEFAULT NULL,
  `char_hb` varchar(1) DEFAULT NULL,
  `char_oth` varchar(8) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(7) DEFAULT NULL,
  `tch_supp` varchar(8) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(10) DEFAULT NULL,
  `cap_mcar` varchar(9) DEFAULT NULL,
  `cap_mcal` varchar(8) DEFAULT NULL,
  `cap_cnty` varchar(8) DEFAULT NULL,
  `cap_thrd` varchar(8) DEFAULT NULL,
  `cap_tot` varchar(9) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcar_mc` varchar(9) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_mcal_mc` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(8) DEFAULT NULL,
  `net_cnty_mc` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(8) DEFAULT NULL,
  `net_thrd_mc` varchar(10) DEFAULT NULL,
  `net_indgnt` varchar(8) DEFAULT NULL,
  `net_oth` varchar(9) DEFAULT NULL,
  `net_tot` varchar(10) DEFAULT NULL,
  `oth_op_rev` varchar(9) DEFAULT NULL,
  `tot_op_exp` varchar(10) DEFAULT NULL,
  `phy_comp` varchar(8) DEFAULT NULL,
  `nonop_rev` varchar(9) DEFAULT NULL,
  `dis_pips` varchar(1) DEFAULT NULL,
  `day_pips` varchar(1) DEFAULT NULL,
  `exp_pips` varchar(7) DEFAULT NULL,
  `exp_pops` varchar(8) DEFAULT NULL,
  `cap_exp` varchar(9) DEFAULT NULL,
  `fix_assets` varchar(10) DEFAULT NULL,
  `disp_trnfr` varchar(8) DEFAULT NULL,
  `dis_tot_cc` varchar(2) DEFAULT NULL,
  `pat_day_tot_cc` varchar(3) DEFAULT NULL,
  `tot_out_vis_cc` varchar(3) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(7) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(7) DEFAULT NULL,
  `contr_adj_cc` varchar(7) DEFAULT NULL,
  `othr_deduct_cc` varchar(1) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(1) DEFAULT NULL,
  `net_pat_rev_cc` varchar(7) DEFAULT NULL,
  `qa_fees` varchar(7) DEFAULT NULL,
  `qa_suppl_pay` varchar(8) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_3_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2019_quarter_3_sum_of_four_quarters`;
CREATE TABLE `2019_quarter_3_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(38) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(5) DEFAULT NULL,
  `dis_mcar_mc` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(5) DEFAULT NULL,
  `dis_mcal_mc` varchar(5) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(3) DEFAULT NULL,
  `dis_thrd` varchar(4) DEFAULT NULL,
  `dis_thrd_mc` varchar(5) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(6) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(6) DEFAULT NULL,
  `day_mcar_mc` varchar(6) DEFAULT NULL,
  `day_mcal` varchar(6) DEFAULT NULL,
  `day_mcal_mc` varchar(5) DEFAULT NULL,
  `day_cnty` varchar(5) DEFAULT NULL,
  `day_cnty_mc` varchar(4) DEFAULT NULL,
  `day_thrd` varchar(5) DEFAULT NULL,
  `day_thrd_mc` varchar(6) DEFAULT NULL,
  `day_indgnt` varchar(5) DEFAULT NULL,
  `day_oth` varchar(6) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(6) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcar_mc` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(6) DEFAULT NULL,
  `vis_mcal_mc` varchar(6) DEFAULT NULL,
  `vis_cnty` varchar(5) DEFAULT NULL,
  `vis_cnty_mc` varchar(5) DEFAULT NULL,
  `vis_thrd` varchar(6) DEFAULT NULL,
  `vis_thrd_mc` varchar(7) DEFAULT NULL,
  `vis_indgnt` varchar(5) DEFAULT NULL,
  `vis_oth` varchar(6) DEFAULT NULL,
  `vis_tot` varchar(7) DEFAULT NULL,
  `grip_mcar` varchar(10) DEFAULT NULL,
  `grip_mcar_mc` varchar(10) DEFAULT NULL,
  `grip_mcal` varchar(10) DEFAULT NULL,
  `grip_mcal_mc` varchar(10) DEFAULT NULL,
  `grip_cnty` varchar(8) DEFAULT NULL,
  `grip_cnty_mc` varchar(8) DEFAULT NULL,
  `grip_thrd` varchar(9) DEFAULT NULL,
  `grip_thrd_mc` varchar(10) DEFAULT NULL,
  `grip_indgnt` varchar(8) DEFAULT NULL,
  `grip_oth` varchar(9) DEFAULT NULL,
  `grip_tot` varchar(11) DEFAULT NULL,
  `grop_mcar` varchar(10) DEFAULT NULL,
  `grop_mcar_mc` varchar(10) DEFAULT NULL,
  `grop_mcal` varchar(9) DEFAULT NULL,
  `grop_mcal_mc` varchar(10) DEFAULT NULL,
  `grop_cnty` varchar(9) DEFAULT NULL,
  `grop_cnty_mc` varchar(9) DEFAULT NULL,
  `grop_thrd` varchar(10) DEFAULT NULL,
  `grop_thrd_mc` varchar(10) DEFAULT NULL,
  `grop_indgnt` varchar(9) DEFAULT NULL,
  `grop_oth` varchar(9) DEFAULT NULL,
  `grop_tot` varchar(11) DEFAULT NULL,
  `bad_debt` varchar(9) DEFAULT NULL,
  `cadj_mcar` varchar(10) DEFAULT NULL,
  `cadj_mcar_mc` varchar(10) DEFAULT NULL,
  `cadj_mcal` varchar(10) DEFAULT NULL,
  `cadj_mcal_mc` varchar(10) DEFAULT NULL,
  `disp_855` varchar(10) DEFAULT NULL,
  `cadj_cnty` varchar(9) DEFAULT NULL,
  `cadj_cnty_mc` varchar(9) DEFAULT NULL,
  `cadj_thrd` varchar(10) DEFAULT NULL,
  `cadj_thrd_mc` varchar(10) DEFAULT NULL,
  `char_hb` varchar(1) DEFAULT NULL,
  `char_oth` varchar(9) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(8) DEFAULT NULL,
  `tch_supp` varchar(9) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `cap_mcar` varchar(9) DEFAULT NULL,
  `cap_mcal` varchar(9) DEFAULT NULL,
  `cap_cnty` varchar(8) DEFAULT NULL,
  `cap_thrd` varchar(9) DEFAULT NULL,
  `cap_tot` varchar(9) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcar_mc` varchar(10) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_mcal_mc` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(8) DEFAULT NULL,
  `net_cnty_mc` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(9) DEFAULT NULL,
  `net_thrd_mc` varchar(10) DEFAULT NULL,
  `net_indgnt` varchar(9) DEFAULT NULL,
  `net_oth` varchar(10) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `oth_op_rev` varchar(10) DEFAULT NULL,
  `tot_op_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(9) DEFAULT NULL,
  `nonop_rev` varchar(9) DEFAULT NULL,
  `dis_pips` varchar(1) DEFAULT NULL,
  `day_pips` varchar(1) DEFAULT NULL,
  `exp_pips` varchar(8) DEFAULT NULL,
  `exp_pops` varchar(9) DEFAULT NULL,
  `cap_exp` varchar(9) DEFAULT NULL,
  `fix_assets` varchar(10) DEFAULT NULL,
  `disp_trnfr` varchar(9) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(3) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(8) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(7) DEFAULT NULL,
  `contr_adj_cc` varchar(8) DEFAULT NULL,
  `othr_deduct_cc` varchar(6) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(1) DEFAULT NULL,
  `net_pat_rev_cc` varchar(8) DEFAULT NULL,
  `qa_fees` varchar(8) DEFAULT NULL,
  `qa_suppl_pay` varchar(8) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_4_complete_data_set_4_10_20`
--

DROP TABLE IF EXISTS `2019_quarter_4_complete_data_set_4_10_20`;
CREATE TABLE `2019_quarter_4_complete_data_set_4_10_20` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(38) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(4) DEFAULT NULL,
  `dis_mcar_mc` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(4) DEFAULT NULL,
  `dis_mcal_mc` varchar(4) DEFAULT NULL,
  `dis_cnty` varchar(3) DEFAULT NULL,
  `dis_cnty_mc` varchar(3) DEFAULT NULL,
  `dis_thrd` varchar(4) DEFAULT NULL,
  `dis_thrd_mc` varchar(5) DEFAULT NULL,
  `dis_indgnt` varchar(3) DEFAULT NULL,
  `dis_oth` varchar(3) DEFAULT NULL,
  `dis_tot` varchar(5) DEFAULT NULL,
  `dis_ltc` varchar(3) DEFAULT NULL,
  `day_mcar` varchar(6) DEFAULT NULL,
  `day_mcar_mc` varchar(5) DEFAULT NULL,
  `day_mcal` varchar(5) DEFAULT NULL,
  `day_mcal_mc` varchar(5) DEFAULT NULL,
  `day_cnty` varchar(5) DEFAULT NULL,
  `day_cnty_mc` varchar(3) DEFAULT NULL,
  `day_thrd` varchar(4) DEFAULT NULL,
  `day_thrd_mc` varchar(5) DEFAULT NULL,
  `day_indgnt` varchar(4) DEFAULT NULL,
  `day_oth` varchar(5) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(5) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcar_mc` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(5) DEFAULT NULL,
  `vis_mcal_mc` varchar(5) DEFAULT NULL,
  `vis_cnty` varchar(5) DEFAULT NULL,
  `vis_cnty_mc` varchar(5) DEFAULT NULL,
  `vis_thrd` varchar(5) DEFAULT NULL,
  `vis_thrd_mc` varchar(6) DEFAULT NULL,
  `vis_indgnt` varchar(4) DEFAULT NULL,
  `vis_oth` varchar(5) DEFAULT NULL,
  `vis_tot` varchar(6) DEFAULT NULL,
  `grip_mcar` varchar(10) DEFAULT NULL,
  `grip_mcar_mc` varchar(10) DEFAULT NULL,
  `grip_mcal` varchar(9) DEFAULT NULL,
  `grip_mcal_mc` varchar(9) DEFAULT NULL,
  `grip_cnty` varchar(8) DEFAULT NULL,
  `grip_cnty_mc` varchar(8) DEFAULT NULL,
  `grip_thrd` varchar(9) DEFAULT NULL,
  `grip_thrd_mc` varchar(10) DEFAULT NULL,
  `grip_indgnt` varchar(8) DEFAULT NULL,
  `grip_oth` varchar(8) DEFAULT NULL,
  `grip_tot` varchar(10) DEFAULT NULL,
  `grop_mcar` varchar(10) DEFAULT NULL,
  `grop_mcar_mc` varchar(10) DEFAULT NULL,
  `grop_mcal` varchar(8) DEFAULT NULL,
  `grop_mcal_mc` varchar(9) DEFAULT NULL,
  `grop_cnty` varchar(8) DEFAULT NULL,
  `grop_cnty_mc` varchar(8) DEFAULT NULL,
  `grop_thrd` varchar(9) DEFAULT NULL,
  `grop_thrd_mc` varchar(10) DEFAULT NULL,
  `grop_indgnt` varchar(8) DEFAULT NULL,
  `grop_oth` varchar(8) DEFAULT NULL,
  `grop_tot` varchar(10) DEFAULT NULL,
  `bad_debt` varchar(8) DEFAULT NULL,
  `cadj_mcar` varchar(10) DEFAULT NULL,
  `cadj_mcar_mc` varchar(10) DEFAULT NULL,
  `cadj_mcal` varchar(9) DEFAULT NULL,
  `cadj_mcal_mc` varchar(9) DEFAULT NULL,
  `disp_855` varchar(9) DEFAULT NULL,
  `cadj_cnty` varchar(9) DEFAULT NULL,
  `cadj_cnty_mc` varchar(8) DEFAULT NULL,
  `cadj_thrd` varchar(9) DEFAULT NULL,
  `cadj_thrd_mc` varchar(10) DEFAULT NULL,
  `char_hb` varchar(1) DEFAULT NULL,
  `char_oth` varchar(8) DEFAULT NULL,
  `sub_indgnt` varchar(8) DEFAULT NULL,
  `tch_allow` varchar(7) DEFAULT NULL,
  `tch_supp` varchar(8) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(10) DEFAULT NULL,
  `cap_mcar` varchar(9) DEFAULT NULL,
  `cap_mcal` varchar(8) DEFAULT NULL,
  `cap_cnty` varchar(8) DEFAULT NULL,
  `cap_thrd` varchar(8) DEFAULT NULL,
  `cap_tot` varchar(9) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcar_mc` varchar(9) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_mcal_mc` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(8) DEFAULT NULL,
  `net_cnty_mc` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(8) DEFAULT NULL,
  `net_thrd_mc` varchar(10) DEFAULT NULL,
  `net_indgnt` varchar(8) DEFAULT NULL,
  `net_oth` varchar(9) DEFAULT NULL,
  `net_tot` varchar(10) DEFAULT NULL,
  `oth_op_rev` varchar(9) DEFAULT NULL,
  `tot_op_exp` varchar(10) DEFAULT NULL,
  `phy_comp` varchar(8) DEFAULT NULL,
  `nonop_rev` varchar(9) DEFAULT NULL,
  `dis_pips` varchar(1) DEFAULT NULL,
  `day_pips` varchar(1) DEFAULT NULL,
  `exp_pips` varchar(7) DEFAULT NULL,
  `exp_pops` varchar(7) DEFAULT NULL,
  `cap_exp` varchar(9) DEFAULT NULL,
  `fix_assets` varchar(10) DEFAULT NULL,
  `disp_trnfr` varchar(8) DEFAULT NULL,
  `dis_tot_cc` varchar(2) DEFAULT NULL,
  `pat_day_tot_cc` varchar(3) DEFAULT NULL,
  `tot_out_vis_cc` varchar(3) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(7) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(7) DEFAULT NULL,
  `contr_adj_cc` varchar(7) DEFAULT NULL,
  `othr_deduct_cc` varchar(3) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(1) DEFAULT NULL,
  `net_pat_rev_cc` varchar(7) DEFAULT NULL,
  `qa_fees` varchar(7) DEFAULT NULL,
  `qa_suppl_pay` varchar(8) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2019_quarter_4_sum_of_four_quarters`
--

DROP TABLE IF EXISTS `2019_quarter_4_sum_of_four_quarters`;
CREATE TABLE `2019_quarter_4_sum_of_four_quarters` (
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(70) DEFAULT NULL,
  `year_qtr` varchar(5) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `op_status` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `hsa` varchar(26) DEFAULT NULL,
  `hfpa` varchar(4) DEFAULT NULL,
  `type_cntrl` varchar(17) DEFAULT NULL,
  `type_hosp` varchar(29) DEFAULT NULL,
  `teach_rurl` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `ceo` varchar(38) DEFAULT NULL,
  `lic_beds` varchar(4) DEFAULT NULL,
  `avl_beds` varchar(4) DEFAULT NULL,
  `stf_beds` varchar(4) DEFAULT NULL,
  `dis_mcar` varchar(5) DEFAULT NULL,
  `dis_mcar_mc` varchar(5) DEFAULT NULL,
  `dis_mcal` varchar(5) DEFAULT NULL,
  `dis_mcal_mc` varchar(5) DEFAULT NULL,
  `dis_cnty` varchar(4) DEFAULT NULL,
  `dis_cnty_mc` varchar(3) DEFAULT NULL,
  `dis_thrd` varchar(4) DEFAULT NULL,
  `dis_thrd_mc` varchar(5) DEFAULT NULL,
  `dis_indgnt` varchar(4) DEFAULT NULL,
  `dis_oth` varchar(4) DEFAULT NULL,
  `dis_tot` varchar(6) DEFAULT NULL,
  `dis_ltc` varchar(4) DEFAULT NULL,
  `day_mcar` varchar(6) DEFAULT NULL,
  `day_mcar_mc` varchar(6) DEFAULT NULL,
  `day_mcal` varchar(6) DEFAULT NULL,
  `day_mcal_mc` varchar(5) DEFAULT NULL,
  `day_cnty` varchar(5) DEFAULT NULL,
  `day_cnty_mc` varchar(4) DEFAULT NULL,
  `day_thrd` varchar(5) DEFAULT NULL,
  `day_thrd_mc` varchar(6) DEFAULT NULL,
  `day_indgnt` varchar(5) DEFAULT NULL,
  `day_oth` varchar(6) DEFAULT NULL,
  `day_tot` varchar(6) DEFAULT NULL,
  `day_ltc` varchar(6) DEFAULT NULL,
  `vis_mcar` varchar(6) DEFAULT NULL,
  `vis_mcar_mc` varchar(6) DEFAULT NULL,
  `vis_mcal` varchar(6) DEFAULT NULL,
  `vis_mcal_mc` varchar(6) DEFAULT NULL,
  `vis_cnty` varchar(5) DEFAULT NULL,
  `vis_cnty_mc` varchar(5) DEFAULT NULL,
  `vis_thrd` varchar(6) DEFAULT NULL,
  `vis_thrd_mc` varchar(7) DEFAULT NULL,
  `vis_indgnt` varchar(5) DEFAULT NULL,
  `vis_oth` varchar(6) DEFAULT NULL,
  `vis_tot` varchar(7) DEFAULT NULL,
  `grip_mcar` varchar(10) DEFAULT NULL,
  `grip_mcar_mc` varchar(10) DEFAULT NULL,
  `grip_mcal` varchar(10) DEFAULT NULL,
  `grip_mcal_mc` varchar(10) DEFAULT NULL,
  `grip_cnty` varchar(8) DEFAULT NULL,
  `grip_cnty_mc` varchar(8) DEFAULT NULL,
  `grip_thrd` varchar(9) DEFAULT NULL,
  `grip_thrd_mc` varchar(10) DEFAULT NULL,
  `grip_indgnt` varchar(9) DEFAULT NULL,
  `grip_oth` varchar(9) DEFAULT NULL,
  `grip_tot` varchar(11) DEFAULT NULL,
  `grop_mcar` varchar(10) DEFAULT NULL,
  `grop_mcar_mc` varchar(10) DEFAULT NULL,
  `grop_mcal` varchar(9) DEFAULT NULL,
  `grop_mcal_mc` varchar(10) DEFAULT NULL,
  `grop_cnty` varchar(9) DEFAULT NULL,
  `grop_cnty_mc` varchar(8) DEFAULT NULL,
  `grop_thrd` varchar(9) DEFAULT NULL,
  `grop_thrd_mc` varchar(10) DEFAULT NULL,
  `grop_indgnt` varchar(9) DEFAULT NULL,
  `grop_oth` varchar(9) DEFAULT NULL,
  `grop_tot` varchar(11) DEFAULT NULL,
  `bad_debt` varchar(9) DEFAULT NULL,
  `cadj_mcar` varchar(10) DEFAULT NULL,
  `cadj_mcar_mc` varchar(11) DEFAULT NULL,
  `cadj_mcal` varchar(10) DEFAULT NULL,
  `cadj_mcal_mc` varchar(10) DEFAULT NULL,
  `disp_855` varchar(10) DEFAULT NULL,
  `cadj_cnty` varchar(9) DEFAULT NULL,
  `cadj_cnty_mc` varchar(9) DEFAULT NULL,
  `cadj_thrd` varchar(10) DEFAULT NULL,
  `cadj_thrd_mc` varchar(10) DEFAULT NULL,
  `char_hb` varchar(1) DEFAULT NULL,
  `char_oth` varchar(9) DEFAULT NULL,
  `sub_indgnt` varchar(9) DEFAULT NULL,
  `tch_allow` varchar(8) DEFAULT NULL,
  `tch_supp` varchar(9) DEFAULT NULL,
  `ded_oth` varchar(9) DEFAULT NULL,
  `ded_tot` varchar(11) DEFAULT NULL,
  `cap_mcar` varchar(10) DEFAULT NULL,
  `cap_mcal` varchar(9) DEFAULT NULL,
  `cap_cnty` varchar(8) DEFAULT NULL,
  `cap_thrd` varchar(9) DEFAULT NULL,
  `cap_tot` varchar(10) DEFAULT NULL,
  `net_mcar` varchar(9) DEFAULT NULL,
  `net_mcar_mc` varchar(10) DEFAULT NULL,
  `net_mcal` varchar(9) DEFAULT NULL,
  `net_mcal_mc` varchar(9) DEFAULT NULL,
  `net_cnty` varchar(8) DEFAULT NULL,
  `net_cnty_mc` varchar(8) DEFAULT NULL,
  `net_thrd` varchar(9) DEFAULT NULL,
  `net_thrd_mc` varchar(10) DEFAULT NULL,
  `net_indgnt` varchar(9) DEFAULT NULL,
  `net_oth` varchar(10) DEFAULT NULL,
  `net_tot` varchar(11) DEFAULT NULL,
  `oth_op_rev` varchar(10) DEFAULT NULL,
  `tot_op_exp` varchar(11) DEFAULT NULL,
  `phy_comp` varchar(9) DEFAULT NULL,
  `nonop_rev` varchar(9) DEFAULT NULL,
  `dis_pips` varchar(1) DEFAULT NULL,
  `day_pips` varchar(1) DEFAULT NULL,
  `exp_pips` varchar(8) DEFAULT NULL,
  `exp_pops` varchar(9) DEFAULT NULL,
  `cap_exp` varchar(9) DEFAULT NULL,
  `fix_assets` varchar(10) DEFAULT NULL,
  `disp_trnfr` varchar(9) DEFAULT NULL,
  `dis_tot_cc` varchar(3) DEFAULT NULL,
  `pat_day_tot_cc` varchar(3) DEFAULT NULL,
  `tot_out_vis_cc` varchar(4) DEFAULT NULL,
  `gros_inpat_rev_cc` varchar(8) DEFAULT NULL,
  `gros_outpat_rev_cc` varchar(7) DEFAULT NULL,
  `contr_adj_cc` varchar(8) DEFAULT NULL,
  `othr_deduct_cc` varchar(5) DEFAULT NULL,
  `cap_prem_rev_cc` varchar(1) DEFAULT NULL,
  `net_pat_rev_cc` varchar(8) DEFAULT NULL,
  `qa_fees` varchar(8) DEFAULT NULL,
  `qa_suppl_pay` varchar(8) DEFAULT NULL,
  `mngd_care_qa_pay` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2021_hospital_supplier_diversity_regional_report_extract`
--

DROP TABLE IF EXISTS `2021_hospital_supplier_diversity_regional_report_extract`;
CREATE TABLE `2021_hospital_supplier_diversity_regional_report_extract` (
  `system_name_reporting_organization` varchar(31) DEFAULT NULL,
  `system_name_description` varchar(886) DEFAULT NULL,
  `system_name_report_start_date` varchar(10) DEFAULT NULL,
  `system_name_report_end_date` varchar(10) DEFAULT NULL,
  `associated_hospitals` varchar(189) DEFAULT NULL,
  `system_name_require_certification` varchar(3) DEFAULT NULL,
  `system_name_self_certification` varchar(3) DEFAULT NULL,
  `system_name_tier_i_african_american` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_african_american` varchar(6) DEFAULT NULL,
  `system_name_total_african_american` varchar(7) DEFAULT NULL,
  `system_name_tier_i_hispanic_american` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_hispanic_american` varchar(6) DEFAULT NULL,
  `system_name_total_hispanic_american` varchar(7) DEFAULT NULL,
  `system_name_tier_i_native_american` varchar(6) DEFAULT NULL,
  `system_name_tier_ii_native_american` varchar(5) DEFAULT NULL,
  `system_name_total_native_american` varchar(6) DEFAULT NULL,
  `system_name_tier_i_asian_pacific_american` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_asian_pacific_american` varchar(7) DEFAULT NULL,
  `system_name_total_asian_pacific_american` varchar(7) DEFAULT NULL,
  `system_name_tier_i_unknown_minority` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_unknown_minority` varchar(6) DEFAULT NULL,
  `system_name_total_unknown_minority` varchar(7) DEFAULT NULL,
  `system_name_total_tier_i_minority` varchar(8) DEFAULT NULL,
  `system_name_total_tier_ii_minority` varchar(7) DEFAULT NULL,
  `system_name_total_minority` varchar(8) DEFAULT NULL,
  `system_name_tier_i_women` varchar(8) DEFAULT NULL,
  `system_name_tier_ii_women` varchar(7) DEFAULT NULL,
  `system_name_total_women` varchar(8) DEFAULT NULL,
  `system_name_tier_i_lgbt` varchar(4) DEFAULT NULL,
  `system_name_tier_ii_lgbt` varchar(4) DEFAULT NULL,
  `system_name_total_lgbt` varchar(4) DEFAULT NULL,
  `system_name_tier_i_disabled_veteran` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_disabled_veteran` varchar(6) DEFAULT NULL,
  `system_name_total_disabled_veteran` varchar(7) DEFAULT NULL,
  `system_name_tier_i_less_duplicated_amount` varchar(7) DEFAULT NULL,
  `system_name_tier_ii_less_duplicated_amount` varchar(6) DEFAULT NULL,
  `system_name_total_less_duplicated_amount` varchar(7) DEFAULT NULL,
  `system_name_combined_tier_i_total` varchar(8) DEFAULT NULL,
  `system_name_combined_tier_ii_total` varchar(7) DEFAULT NULL,
  `system_name_combined_total` varchar(8) DEFAULT NULL,
  `system_name_total_hospital_procurement` varchar(10) DEFAULT NULL,
  `system_name_other_relevant_info` varchar(2277) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2021_preferred_language_spoken_in_california_facilities`
--

DROP TABLE IF EXISTS `2021_preferred_language_spoken_in_california_facilities`;
CREATE TABLE `2021_preferred_language_spoken_in_california_facilities` (
  `oshpd_id9` varchar(9) DEFAULT NULL,
  `biglanguagegroup` varchar(16) DEFAULT NULL,
  `languagegroup` varchar(31) DEFAULT NULL,
  `pls_description` varchar(22) DEFAULT NULL,
  `numberofencounters` varchar(7) DEFAULT NULL,
  `annotationfornumberofencounters` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2021_top_five_major_diagnostic_categories_for_californi_0e8a459f`
--

DROP TABLE IF EXISTS `2021_top_five_major_diagnostic_categories_for_californi_0e8a459f`;
CREATE TABLE `2021_top_five_major_diagnostic_categories_for_californi_0e8a459f` (
  `oshpd_id9` varchar(9) DEFAULT NULL,
  `facilityname` varchar(79) DEFAULT NULL,
  `mdc_desc` varchar(74) DEFAULT NULL,
  `dxpatcount` varchar(4) DEFAULT NULL,
  `count` varchar(1) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `primarycareshortagearea` varchar(3) DEFAULT NULL,
  `mentalhealthshortagearea` varchar(3) DEFAULT NULL,
  `system_name` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2023_2024_provisional_births_by_month_statewide`
--

DROP TABLE IF EXISTS `2023_2024_provisional_births_by_month_statewide`;
CREATE TABLE `2023_2024_provisional_births_by_month_statewide` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(25) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL,
  `data_extract_date` varchar(10) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `2023_low_income_home_energy_assistance_program_liheap_h_fb0839ed`
--

DROP TABLE IF EXISTS `2023_low_income_home_energy_assistance_program_liheap_h_fb0839ed`;
CREATE TABLE `2023_low_income_home_energy_assistance_program_liheap_h_fb0839ed` (
  `key_str` varchar(3) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `liheap_assistance_type` varchar(24) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `assisted_households` varchar(5) DEFAULT NULL,
  `under_75pct_poverty` varchar(5) DEFAULT NULL,
  `75pct_100pct_poverty` varchar(4) DEFAULT NULL,
  `101pct_125pct_poverty` varchar(5) DEFAULT NULL,
  `126pct_150pct_poverty` varchar(4) DEFAULT NULL,
  `over_150pct_poverty` varchar(4) DEFAULT NULL,
  `60_years_or_older_elderly` varchar(5) DEFAULT NULL,
  `disabled` varchar(5) DEFAULT NULL,
  `age_5_years_or_under_young_child` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `345f4593_74c1_4fef_849b_77b7fd4264c7`
--

DROP TABLE IF EXISTS `345f4593_74c1_4fef_849b_77b7fd4264c7`;
CREATE TABLE `345f4593_74c1_4fef_849b_77b7fd4264c7` (
  `referenceid` varchar(14) DEFAULT NULL,
  `legalname` varchar(78) DEFAULT NULL,
  `reportingyear` varchar(4) DEFAULT NULL,
  `filingtype` varchar(23) DEFAULT NULL,
  `filingstatus` varchar(46) DEFAULT NULL,
  `markettype` varchar(11) DEFAULT NULL,
  `productname` varchar(275) DEFAULT NULL,
  `proposedrateincrease` varchar(12) DEFAULT NULL,
  `finalrateincrease` varchar(12) DEFAULT NULL,
  `memberaffected` varchar(9) DEFAULT NULL,
  `dateeffective` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_adult_demo_by_age_group`
--

DROP TABLE IF EXISTS `ab470_adult_demo_by_age_group`;
CREATE TABLE `ab470_adult_demo_by_age_group` (
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
-- Table structure for table `ab470_adult_demo_by_language`
--

DROP TABLE IF EXISTS `ab470_adult_demo_by_language`;
CREATE TABLE `ab470_adult_demo_by_language` (
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
-- Table structure for table `ab470_adult_demo_by_race_group`
--

DROP TABLE IF EXISTS `ab470_adult_demo_by_race_group`;
CREATE TABLE `ab470_adult_demo_by_race_group` (
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
-- Table structure for table `ab470_adult_demo_by_sex`
--

DROP TABLE IF EXISTS `ab470_adult_demo_by_sex`;
CREATE TABLE `ab470_adult_demo_by_sex` (
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
-- Table structure for table `ab470_adult_mental_health_services_utilization_by_age_group`
--

DROP TABLE IF EXISTS `ab470_adult_mental_health_services_utilization_by_age_group`;
CREATE TABLE `ab470_adult_mental_health_services_utilization_by_age_group` (
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
-- Table structure for table `ab470_adult_mental_health_services_utilization_by_language`
--

DROP TABLE IF EXISTS `ab470_adult_mental_health_services_utilization_by_language`;
CREATE TABLE `ab470_adult_mental_health_services_utilization_by_language` (
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
-- Table structure for table `ab470_adult_mental_health_services_utilization_by_race_group`
--

DROP TABLE IF EXISTS `ab470_adult_mental_health_services_utilization_by_race_group`;
CREATE TABLE `ab470_adult_mental_health_services_utilization_by_race_group` (
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
-- Table structure for table `ab470_adult_mental_health_services_utilization_by_sex`
--

DROP TABLE IF EXISTS `ab470_adult_mental_health_services_utilization_by_sex`;
CREATE TABLE `ab470_adult_mental_health_services_utilization_by_sex` (
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
-- Table structure for table `ab470_adult_snapshot_report_by_age_group`
--

DROP TABLE IF EXISTS `ab470_adult_snapshot_report_by_age_group`;
CREATE TABLE `ab470_adult_snapshot_report_by_age_group` (
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
-- Table structure for table `ab470_adult_snapshot_report_by_language`
--

DROP TABLE IF EXISTS `ab470_adult_snapshot_report_by_language`;
CREATE TABLE `ab470_adult_snapshot_report_by_language` (
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
-- Table structure for table `ab470_adult_snapshot_report_by_race_group`
--

DROP TABLE IF EXISTS `ab470_adult_snapshot_report_by_race_group`;
CREATE TABLE `ab470_adult_snapshot_report_by_race_group` (
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
-- Table structure for table `ab470_adult_snapshot_report_by_sex`
--

DROP TABLE IF EXISTS `ab470_adult_snapshot_report_by_sex`;
CREATE TABLE `ab470_adult_snapshot_report_by_sex` (
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
-- Table structure for table `ab470_adult_time_to_step_down_by_age_group`
--

DROP TABLE IF EXISTS `ab470_adult_time_to_step_down_by_age_group`;
CREATE TABLE `ab470_adult_time_to_step_down_by_age_group` (
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
-- Table structure for table `ab470_adult_time_to_step_down_by_language`
--

DROP TABLE IF EXISTS `ab470_adult_time_to_step_down_by_language`;
CREATE TABLE `ab470_adult_time_to_step_down_by_language` (
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
-- Table structure for table `ab470_adult_time_to_step_down_by_race_group`
--

DROP TABLE IF EXISTS `ab470_adult_time_to_step_down_by_race_group`;
CREATE TABLE `ab470_adult_time_to_step_down_by_race_group` (
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
-- Table structure for table `ab470_adult_time_to_step_down_by_sex`
--

DROP TABLE IF EXISTS `ab470_adult_time_to_step_down_by_sex`;
CREATE TABLE `ab470_adult_time_to_step_down_by_sex` (
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
-- Table structure for table `ab470_adult_top_10_icd10_diag_code_categories_by_age_group`
--

DROP TABLE IF EXISTS `ab470_adult_top_10_icd10_diag_code_categories_by_age_group`;
CREATE TABLE `ab470_adult_top_10_icd10_diag_code_categories_by_age_group` (
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
-- Table structure for table `ab470_adult_top_10_icd10_diag_code_categories_by_language`
--

DROP TABLE IF EXISTS `ab470_adult_top_10_icd10_diag_code_categories_by_language`;
CREATE TABLE `ab470_adult_top_10_icd10_diag_code_categories_by_language` (
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
-- Table structure for table `ab470_adult_top_10_icd10_diag_code_categories_by_race_group`
--

DROP TABLE IF EXISTS `ab470_adult_top_10_icd10_diag_code_categories_by_race_group`;
CREATE TABLE `ab470_adult_top_10_icd10_diag_code_categories_by_race_group` (
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
-- Table structure for table `ab470_adult_top_10_icd10_diag_code_categories_by_sex`
--

DROP TABLE IF EXISTS `ab470_adult_top_10_icd10_diag_code_categories_by_sex`;
CREATE TABLE `ab470_adult_top_10_icd10_diag_code_categories_by_sex` (
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
-- Table structure for table `ab470_youth_demographics_by_age`
--

DROP TABLE IF EXISTS `ab470_youth_demographics_by_age`;
CREATE TABLE `ab470_youth_demographics_by_age` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(17) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(1) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_demographics_by_language`
--

DROP TABLE IF EXISTS `ab470_youth_demographics_by_language`;
CREATE TABLE `ab470_youth_demographics_by_language` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_demographics_by_race`
--

DROP TABLE IF EXISTS `ab470_youth_demographics_by_race`;
CREATE TABLE `ab470_youth_demographics_by_race` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_demographics_by_sex`
--

DROP TABLE IF EXISTS `ab470_youth_demographics_by_sex`;
CREATE TABLE `ab470_youth_demographics_by_sex` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_diagnosis_by_age`
--

DROP TABLE IF EXISTS `ab470_youth_diagnosis_by_age`;
CREATE TABLE `ab470_youth_diagnosis_by_age` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(17) DEFAULT NULL,
  `dx_top10_desc` varchar(101) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_diagnosis_by_language`
--

DROP TABLE IF EXISTS `ab470_youth_diagnosis_by_language`;
CREATE TABLE `ab470_youth_diagnosis_by_language` (
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
-- Table structure for table `ab470_youth_diagnosis_by_race`
--

DROP TABLE IF EXISTS `ab470_youth_diagnosis_by_race`;
CREATE TABLE `ab470_youth_diagnosis_by_race` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `dx_top10_desc` varchar(101) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_diagnosis_by_sex`
--

DROP TABLE IF EXISTS `ab470_youth_diagnosis_by_sex`;
CREATE TABLE `ab470_youth_diagnosis_by_sex` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `dx_top10_desc` varchar(58) DEFAULT NULL,
  `mhs1_ct` varchar(6) DEFAULT NULL,
  `mhs1_ct_annot` varchar(0) DEFAULT NULL,
  `mhs5_ct` varchar(5) DEFAULT NULL,
  `mhs5_ct_annot` varchar(0) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_snapshot_by_age`
--

DROP TABLE IF EXISTS `ab470_youth_snapshot_by_age`;
CREATE TABLE `ab470_youth_snapshot_by_age` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(17) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_snapshot_by_language`
--

DROP TABLE IF EXISTS `ab470_youth_snapshot_by_language`;
CREATE TABLE `ab470_youth_snapshot_by_language` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_snapshot_by_race`
--

DROP TABLE IF EXISTS `ab470_youth_snapshot_by_race`;
CREATE TABLE `ab470_youth_snapshot_by_race` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
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
-- Table structure for table `ab470_youth_snapshot_by_sex`
--

DROP TABLE IF EXISTS `ab470_youth_snapshot_by_sex`;
CREATE TABLE `ab470_youth_snapshot_by_sex` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
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
  `svc_cont_and_exit_ct` varchar(4) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_time_to_step_down_by_age`
--

DROP TABLE IF EXISTS `ab470_youth_time_to_step_down_by_age`;
CREATE TABLE `ab470_youth_time_to_step_down_by_age` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(17) DEFAULT NULL,
  `less7_ct` varchar(4) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(3) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_time_to_step_down_by_language`
--

DROP TABLE IF EXISTS `ab470_youth_time_to_step_down_by_language`;
CREATE TABLE `ab470_youth_time_to_step_down_by_language` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(37) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_time_to_step_down_by_race`
--

DROP TABLE IF EXISTS `ab470_youth_time_to_step_down_by_race`;
CREATE TABLE `ab470_youth_time_to_step_down_by_race` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `less7_ct` varchar(4) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(3) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(4) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(4) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_time_to_step_down_by_sex`
--

DROP TABLE IF EXISTS `ab470_youth_time_to_step_down_by_sex`;
CREATE TABLE `ab470_youth_time_to_step_down_by_sex` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `less7_ct` varchar(4) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(3) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(5) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(5) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_utilization_by_age`
--

DROP TABLE IF EXISTS `ab470_youth_utilization_by_age`;
CREATE TABLE `ab470_youth_utilization_by_age` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `age_grp` varchar(17) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_utilization_by_language`
--

DROP TABLE IF EXISTS `ab470_youth_utilization_by_language`;
CREATE TABLE `ab470_youth_utilization_by_language` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `wlang_desc` varchar(54) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_utilization_by_race`
--

DROP TABLE IF EXISTS `ab470_youth_utilization_by_race`;
CREATE TABLE `ab470_youth_utilization_by_race` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `race_grp` varchar(36) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ab470_youth_utilization_by_sex`
--

DROP TABLE IF EXISTS `ab470_youth_utilization_by_sex`;
CREATE TABLE `ab470_youth_utilization_by_sex` (
  `population_name` varchar(53) DEFAULT NULL,
  `population_type` varchar(53) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(9) DEFAULT NULL,
  `svc_desc` varchar(52) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `medi_cal_delivery_system` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_aid_code_groups`
--

DROP TABLE IF EXISTS `abortion_services_aid_code_groups`;
CREATE TABLE `abortion_services_aid_code_groups` (
  `aid_code_group` varchar(37) DEFAULT NULL,
  `corresponding_aid_codes` varchar(362) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_age_group_and_race`
--

DROP TABLE IF EXISTS `abortion_services_by_age_group_and_race`;
CREATE TABLE `abortion_services_by_age_group_and_race` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `race_ethnicity` varchar(29) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_age_group`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_age_group`;
CREATE TABLE `abortion_services_by_delivery_system_and_age_group` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_aid_group`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_aid_group`;
CREATE TABLE `abortion_services_by_delivery_system_and_aid_group` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `aid_group` varchar(37) DEFAULT NULL,
  `total_abortion_related_services` varchar(5) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_by_delivery_system_and_county`
--

DROP TABLE IF EXISTS `abortion_services_by_delivery_system_and_county`;
CREATE TABLE `abortion_services_by_delivery_system_and_county` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `total_abortion_related_services` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_age_group`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_age_group`;
CREATE TABLE `abortion_services_expenditures_by_age_group` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_age_group_and_race`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_age_group_and_race`;
CREATE TABLE `abortion_services_expenditures_by_age_group_and_race` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `age_group` varchar(12) DEFAULT NULL,
  `race_ethnicity` varchar(25) DEFAULT NULL,
  `total_expenditures` varchar(13) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_aid_group`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_aid_group`;
CREATE TABLE `abortion_services_expenditures_by_aid_group` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `aid_group` varchar(37) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `abortion_services_expenditures_by_county`
--

DROP TABLE IF EXISTS `abortion_services_expenditures_by_county`;
CREATE TABLE `abortion_services_expenditures_by_county` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `total_expenditures` varchar(14) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
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
-- Table structure for table `academic_year_2016_17_to_present_school_immunizations_i_57012819`
--

DROP TABLE IF EXISTS `academic_year_2016_17_to_present_school_immunizations_i_57012819`;
CREATE TABLE `academic_year_2016_17_to_present_school_immunizations_i_57012819` (
  `school_year` varchar(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `school_name` varchar(89) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `public_private` varchar(7) DEFAULT NULL,
  `public_school_district` varchar(61) DEFAULT NULL,
  `enrollment` varchar(3) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `vaccine` varchar(4) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `percent` varchar(2) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_count_desc` varchar(136) DEFAULT NULL,
  `annotation_percent_desc` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `academic_years_2013_14_to_2015_16_school_immunizations__e6575e34`
--

DROP TABLE IF EXISTS `academic_years_2013_14_to_2015_16_school_immunizations__e6575e34`;
CREATE TABLE `academic_years_2013_14_to_2015_16_school_immunizations__e6575e34` (
  `school_year` varchar(9) DEFAULT NULL,
  `school_code` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `school_type` varchar(7) DEFAULT NULL,
  `public_school_district` varchar(61) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `school_name` varchar(80) DEFAULT NULL,
  `enrollment` varchar(4) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `vaccine` varchar(4) DEFAULT NULL,
  `category` varchar(33) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
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
-- Table structure for table `adults_met_physical_activity_guidelines`
--

DROP TABLE IF EXISTS `adults_met_physical_activity_guidelines`;
CREATE TABLE `adults_met_physical_activity_guidelines` (
  `year` varchar(4) DEFAULT NULL,
  `category` varchar(27) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `physical_activity_pct` varchar(4) DEFAULT NULL
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
-- Table structure for table `age_26_49_ae_population_by_county`
--

DROP TABLE IF EXISTS `age_26_49_ae_population_by_county`;
CREATE TABLE `age_26_49_ae_population_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `age_26_49_ae_population_by_ethnicity_and_county`
--

DROP TABLE IF EXISTS `age_26_49_ae_population_by_ethnicity_and_county`;
CREATE TABLE `age_26_49_ae_population_by_ethnicity_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `ethnicity` varchar(33) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `age_26_49_ae_population_by_spoken_language_and_county`
--

DROP TABLE IF EXISTS `age_26_49_ae_population_by_spoken_language_and_county`;
CREATE TABLE `age_26_49_ae_population_by_spoken_language_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `spoken_language` varchar(28) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `age_26_49_ae_population_by_written_language_and_cnty`
--

DROP TABLE IF EXISTS `age_26_49_ae_population_by_written_language_and_cnty`;
CREATE TABLE `age_26_49_ae_population_by_written_language_and_cnty` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `written_language` varchar(23) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `age_and_gender_of_applicants_for_insurance_affordabilit_0e2cae43`
--

DROP TABLE IF EXISTS `age_and_gender_of_applicants_for_insurance_affordabilit_0e2cae43`;
CREATE TABLE `age_and_gender_of_applicants_for_insurance_affordabilit_0e2cae43` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `age` varchar(8) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `number_of_applicants` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ahrq_postoperative_sepsis_rates_2019_2022`
--

DROP TABLE IF EXISTS `ahrq_postoperative_sepsis_rates_2019_2022`;
CREATE TABLE `ahrq_postoperative_sepsis_rates_2019_2022` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `hospital_name` varchar(79) DEFAULT NULL,
  `postoperative_sepsis_cases` varchar(4) DEFAULT NULL,
  `elective_surgical_discharges` varchar(6) DEFAULT NULL,
  `risk_adjusted_postoperative_sepsis_rate` varchar(5) DEFAULT NULL,
  `risk_adjusted_performance_rating` varchar(13) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `alw_assisted_living_facilities`
--

DROP TABLE IF EXISTS `alw_assisted_living_facilities`;
CREATE TABLE `alw_assisted_living_facilities` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(4) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `legal_name` varchar(51) DEFAULT NULL,
  `business_name` varchar(78) DEFAULT NULL,
  `capacity_per_peu` varchar(3) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `address_2` varchar(3) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `countyname` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `alw_care_coordination_agencies`
--

DROP TABLE IF EXISTS `alw_care_coordination_agencies`;
CREATE TABLE `alw_care_coordination_agencies` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(2) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `legal_name` varchar(47) DEFAULT NULL,
  `business_name` varchar(46) DEFAULT NULL,
  `address` varchar(24) DEFAULT NULL,
  `address_2` varchar(13) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `fax_number` varchar(15) DEFAULT NULL,
  `first_name` varchar(8) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `email_address` varchar(39) DEFAULT NULL,
  `website` varchar(26) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `countyname` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `alw_public_subsidized_housing`
--

DROP TABLE IF EXISTS `alw_public_subsidized_housing`;
CREATE TABLE `alw_public_subsidized_housing` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(1) DEFAULT NULL,
  `name` varchar(65) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `address_2` varchar(9) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `county` varchar(11) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL
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
-- Table structure for table `applications_for_insurance_affordability_programs`
--

DROP TABLE IF EXISTS `applications_for_insurance_affordability_programs`;
CREATE TABLE `applications_for_insurance_affordability_programs` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `number_of_applications` varchar(7) DEFAULT NULL,
  `number_of_individuals_included_on_applications` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `applications_received_for_insurance_affordability`
--

DROP TABLE IF EXISTS `applications_received_for_insurance_affordability`;
CREATE TABLE `applications_received_for_insurance_affordability` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `pathway` varchar(22) DEFAULT NULL,
  `number_of_applications` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `apps_for_insurance_affordability_pgms_with_help`
--

DROP TABLE IF EXISTS `apps_for_insurance_affordability_pgms_with_help`;
CREATE TABLE `apps_for_insurance_affordability_pgms_with_help` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `assister_type` varchar(30) DEFAULT NULL,
  `number_of_applications_submitted_with_assistance` varchar(9) DEFAULT NULL
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
-- Table structure for table `asthma_ed_visit_rates`
--

DROP TABLE IF EXISTS `asthma_ed_visit_rates`;
CREATE TABLE `asthma_ed_visit_rates` (
  `lghc_indicator_name` varchar(21) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(11) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(30) DEFAULT NULL,
  `numerator` varchar(7) DEFAULT NULL,
  `rate` varchar(6) DEFAULT NULL,
  `lghc_indicator_id` varchar(1) DEFAULT NULL,
  `lghc_target_rate` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `asthma_hospitalization_rates_by_county`
--

DROP TABLE IF EXISTS `asthma_hospitalization_rates_by_county`;
CREATE TABLE `asthma_hospitalization_rates_by_county` (
  `county` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(11) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `number_of_hospitalizations` varchar(5) DEFAULT NULL,
  `age_adjusted_hospitalization_rate` varchar(4) DEFAULT NULL,
  `comment` varchar(78) DEFAULT NULL
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
-- Table structure for table `average_reimbursement_per_family_pact_client`
--

DROP TABLE IF EXISTS `average_reimbursement_per_family_pact_client`;
CREATE TABLE `average_reimbursement_per_family_pact_client` (
  `fiscal_year_fy` varchar(4) DEFAULT NULL,
  `average_reimbursement_per_client` varchar(5) DEFAULT NULL
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
-- Table structure for table `births_by_cy_geo_region_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_geo_region_and_select_birth_chars`;
CREATE TABLE `births_by_cy_geo_region_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `grouper` varchar(23) DEFAULT NULL,
  `birth_characteristic` varchar(40) DEFAULT NULL,
  `geographic_region` varchar(22) DEFAULT NULL,
  `number_of_births` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_bw_range_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_bw_range_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_bw_range_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `birthweight_range` varchar(19) DEFAULT NULL,
  `grouper` varchar(25) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_delvry_sys_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_delvry_sys_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_delvry_sys_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `delivery_system` varchar(17) DEFAULT NULL,
  `grouper` varchar(27) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_len_of_gest_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_len_of_gest_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_len_of_gest_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `length_of_gestation` varchar(29) DEFAULT NULL,
  `grouper` varchar(25) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_mat_race_ethnicity_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_mat_race_ethnicity_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_mat_race_ethnicity_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `maternal_race_ethnicity` varchar(41) DEFAULT NULL,
  `grouper` varchar(20) DEFAULT NULL,
  `birth_characteristic` varchar(28) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_method_of_delvry_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_method_of_delvry_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_method_of_delvry_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `method_of_delivery` varchar(31) DEFAULT NULL,
  `grouper` varchar(25) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_very_low_bw_status_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_very_low_bw_status_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_very_low_bw_status_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `very_low_birthweight_status` varchar(30) DEFAULT NULL,
  `grouper` varchar(25) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_cy_payer_very_preterm_status_and_select_birth_chars`
--

DROP TABLE IF EXISTS `births_by_cy_payer_very_preterm_status_and_select_birth_chars`;
CREATE TABLE `births_by_cy_payer_very_preterm_status_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `very_preterm_status` varchar(33) DEFAULT NULL,
  `grouper` varchar(25) DEFAULT NULL,
  `birth_characteristic` varchar(34) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_month_by_county_1960_2023_final`
--

DROP TABLE IF EXISTS `births_by_month_by_county_1960_2023_final`;
CREATE TABLE `births_by_month_by_county_1960_2023_final` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(25) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_month_by_county_2023_2024_provisional`
--

DROP TABLE IF EXISTS `births_by_month_by_county_2023_2024_provisional`;
CREATE TABLE `births_by_month_by_county_2023_2024_provisional` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(25) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_extract_date` varchar(10) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_year_by_county_1960_2023_final`
--

DROP TABLE IF EXISTS `births_by_year_by_county_1960_2023_final`;
CREATE TABLE `births_by_year_by_county_1960_2023_final` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(36) DEFAULT NULL,
  `strata_name` varchar(29) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_zip_by_month`
--

DROP TABLE IF EXISTS `births_by_zip_by_month`;
CREATE TABLE `births_by_zip_by_month` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(16) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `births_by_zip_by_year`
--

DROP TABLE IF EXISTS `births_by_zip_by_year`;
CREATE TABLE `births_by_zip_by_year` (
  `year` varchar(4) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(16) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(33) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `brain_injury_ind_living_center_locations`
--

DROP TABLE IF EXISTS `brain_injury_ind_living_center_locations`;
CREATE TABLE `brain_injury_ind_living_center_locations` (
  `type_of_facility` varchar(25) DEFAULT NULL,
  `center_name` varchar(62) DEFAULT NULL,
  `office_type` varchar(47) DEFAULT NULL,
  `executive_director` varchar(24) DEFAULT NULL,
  `street_address` varchar(31) DEFAULT NULL,
  `suite` varchar(12) DEFAULT NULL,
  `city` varchar(18) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `main_phone` varchar(34) DEFAULT NULL,
  `chinese_phone` varchar(14) DEFAULT NULL,
  `spanish_phone` varchar(14) DEFAULT NULL,
  `fax_phone` varchar(14) DEFAULT NULL,
  `tty_text` varchar(20) DEFAULT NULL,
  `video_phone` varchar(16) DEFAULT NULL,
  `toll_free` varchar(16) DEFAULT NULL,
  `website` varchar(79) DEFAULT NULL,
  `coordinates` varchar(94) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `bridge_period_2019_20_cohs_model_rates`
--

DROP TABLE IF EXISTS `bridge_period_2019_20_cohs_model_rates`;
CREATE TABLE `bridge_period_2019_20_cohs_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `fiscal_year_bp` varchar(14) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(8) DEFAULT NULL,
  `midpoint` varchar(8) DEFAULT NULL,
  `upper_bound` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `bridge_period_2019_20_geographic_managed_care_model_rates`
--

DROP TABLE IF EXISTS `bridge_period_2019_20_geographic_managed_care_model_rates`;
CREATE TABLE `bridge_period_2019_20_geographic_managed_care_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `fiscal_year_bp` varchar(14) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(45) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(7) DEFAULT NULL,
  `upper_bound` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `bridge_period_2019_20_regional_model_rates`
--

DROP TABLE IF EXISTS `bridge_period_2019_20_regional_model_rates`;
CREATE TABLE `bridge_period_2019_20_regional_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `fiscal_year_bp` varchar(13) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(29) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(7) DEFAULT NULL,
  `upper_bound` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `bridge_period_2019_20_two_plan_model_rates`
--

DROP TABLE IF EXISTS `bridge_period_2019_20_two_plan_model_rates`;
CREATE TABLE `bridge_period_2019_20_two_plan_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `fiscal_year_bp` varchar(14) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(7) DEFAULT NULL,
  `upper_bound` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_age_group_and_sex_certified_eligibles`
--

DROP TABLE IF EXISTS `by_age_group_and_sex_certified_eligibles`;
CREATE TABLE `by_age_group_and_sex_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_aid_category_certified_eligibles`
--

DROP TABLE IF EXISTS `by_aid_category_certified_eligibles`;
CREATE TABLE `by_aid_category_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(21) DEFAULT NULL,
  `aid_category` varchar(37) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_of_data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_delivery_system_and_plan_certified_eligibles`
--

DROP TABLE IF EXISTS `by_delivery_system_and_plan_certified_eligibles`;
CREATE TABLE `by_delivery_system_and_plan_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_delivery_system` varchar(15) DEFAULT NULL,
  `health_plan` varchar(57) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_medicare_dual_status_and_age_group_certified_eligibles`
--

DROP TABLE IF EXISTS `by_medicare_dual_status_and_age_group_certified_eligibles`;
CREATE TABLE `by_medicare_dual_status_and_age_group_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `dual_status` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_medicare_dual_status_certified_eligibles`
--

DROP TABLE IF EXISTS `by_medicare_dual_status_certified_eligibles`;
CREATE TABLE `by_medicare_dual_status_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(19) DEFAULT NULL,
  `dual_status` varchar(9) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_of_data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_primary_language_certified_eligibles`
--

DROP TABLE IF EXISTS `by_primary_language_certified_eligibles`;
CREATE TABLE `by_primary_language_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `by_race_ethnicity_and_age_group_certified_eligibles`
--

DROP TABLE IF EXISTS `by_race_ethnicity_and_age_group_certified_eligibles`;
CREATE TABLE `by_race_ethnicity_and_age_group_certified_eligibles` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `ethnicity` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
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
-- Table structure for table `calcat_forecast`
--

DROP TABLE IF EXISTS `calcat_forecast`;
CREATE TABLE `calcat_forecast` (
  `disease` varchar(9) DEFAULT NULL,
  `location_level` varchar(30) DEFAULT NULL,
  `location` varchar(28) DEFAULT NULL,
  `target_date` varchar(10) DEFAULT NULL,
  `target` varchar(15) DEFAULT NULL,
  `model` varchar(37) DEFAULT NULL,
  `value` varchar(8) DEFAULT NULL,
  `quantile` varchar(13) DEFAULT NULL,
  `archivedt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2021_cohs_rates`
--

DROP TABLE IF EXISTS `calendar_year_2021_cohs_rates`;
CREATE TABLE `calendar_year_2021_cohs_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(8) DEFAULT NULL,
  `midpoint` varchar(8) DEFAULT NULL,
  `upper_bound` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2021_geographic_managed_care`
--

DROP TABLE IF EXISTS `calendar_year_2021_geographic_managed_care`;
CREATE TABLE `calendar_year_2021_geographic_managed_care` (
  `rate_period` varchar(11) DEFAULT NULL,
  `calendar` varchar(4) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(46) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(7) DEFAULT NULL,
  `upper_bound` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2022_cohs_rates`
--

DROP TABLE IF EXISTS `calendar_year_2022_cohs_rates`;
CREATE TABLE `calendar_year_2022_cohs_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2022_geographic_managed_care`
--

DROP TABLE IF EXISTS `calendar_year_2022_geographic_managed_care`;
CREATE TABLE `calendar_year_2022_geographic_managed_care` (
  `rate_period` varchar(10) DEFAULT NULL,
  `calendar` varchar(4) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(25) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2023_cohs_rates`
--

DROP TABLE IF EXISTS `calendar_year_2023_cohs_rates`;
CREATE TABLE `calendar_year_2023_cohs_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(38) DEFAULT NULL,
  `category_of_aid` varchar(47) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_year_2023_geographic_managed_care`
--

DROP TABLE IF EXISTS `calendar_year_2023_geographic_managed_care`;
CREATE TABLE `calendar_year_2023_geographic_managed_care` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(25) DEFAULT NULL,
  `category_of_aid` varchar(47) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_years_2005_2009`
--

DROP TABLE IF EXISTS `calendar_years_2005_2009`;
CREATE TABLE `calendar_years_2005_2009` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `zip_code` varchar(7) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `total_eligibles` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_years_2010_2019`
--

DROP TABLE IF EXISTS `calendar_years_2010_2019`;
CREATE TABLE `calendar_years_2010_2019` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `zip_code` varchar(9) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calendar_years_2020_to_the_most_recent_reportable_month`
--

DROP TABLE IF EXISTS `calendar_years_2020_to_the_most_recent_reportable_month`;
CREATE TABLE `calendar_years_2020_to_the_most_recent_reportable_month` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `zip_code` varchar(9) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `california_hospital_inpatient_mortality_rates`
--

DROP TABLE IF EXISTS `california_hospital_inpatient_mortality_rates`;
CREATE TABLE `california_hospital_inpatient_mortality_rates` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(79) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_condition` varchar(26) DEFAULT NULL,
  `risk_adjuested_mortality_rate` varchar(4) DEFAULT NULL,
  `num_of_deaths` varchar(4) DEFAULT NULL,
  `num_of_cases` varchar(6) DEFAULT NULL,
  `hospital_ratings` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `california_statewide_inpatient_mortality_rates`
--

DROP TABLE IF EXISTS `california_statewide_inpatient_mortality_rates`;
CREATE TABLE `california_statewide_inpatient_mortality_rates` (
  `year` varchar(4) DEFAULT NULL,
  `hospital` varchar(9) DEFAULT NULL,
  `procedure_condition` varchar(25) DEFAULT NULL,
  `risk_adjuested_mortality_rate` varchar(4) DEFAULT NULL,
  `num_of_deaths` varchar(4) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calworks_applications`
--

DROP TABLE IF EXISTS `calworks_applications`;
CREATE TABLE `calworks_applications` (
  `date` varchar(5) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `sfy` varchar(7) DEFAULT NULL,
  `ffy` varchar(4) DEFAULT NULL,
  `item` varchar(4) DEFAULT NULL,
  `description` varchar(63) DEFAULT NULL,
  `applications` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `calworks_welfare_to_work_enrollments_and_activities`
--

DROP TABLE IF EXISTS `calworks_welfare_to_work_enrollments_and_activities`;
CREATE TABLE `calworks_welfare_to_work_enrollments_and_activities` (
  `date` varchar(5) DEFAULT NULL,
  `report` varchar(8) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `fam_type` varchar(10) DEFAULT NULL,
  `sfy` varchar(7) DEFAULT NULL,
  `ffy` varchar(4) DEFAULT NULL,
  `cell` varchar(7) DEFAULT NULL,
  `data_element` varchar(57) DEFAULT NULL,
  `individuals` varchar(12) DEFAULT NULL
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
-- Table structure for table `catalog_agency`
--

DROP TABLE IF EXISTS `catalog_agency`;
CREATE TABLE `catalog_agency` (
  `pk` int NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `catheterization_dxcath_vol_and_sociodemo_categories`
--

DROP TABLE IF EXISTS `catheterization_dxcath_vol_and_sociodemo_categories`;
CREATE TABLE `catheterization_dxcath_vol_and_sociodemo_categories` (
  `year` varchar(4) DEFAULT NULL,
  `category` varchar(31) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  `dxcaths` varchar(5) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cc_lic_for_24hour_residential_for_children`
--

DROP TABLE IF EXISTS `cc_lic_for_24hour_residential_for_children`;
CREATE TABLE `cc_lic_for_24hour_residential_for_children` (
  `facility_type` varchar(42) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(50) DEFAULT NULL,
  `licensee` varchar(50) DEFAULT NULL,
  `facility_administrator` varchar(26) DEFAULT NULL,
  `facility_telephone_number` varchar(14) DEFAULT NULL,
  `facility_address` varchar(30) DEFAULT NULL,
  `facility_city` varchar(16) DEFAULT NULL,
  `facility_state` varchar(11) DEFAULT NULL,
  `facility_zip` varchar(11) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `regional_office` varchar(2) DEFAULT NULL,
  `facility_capacity` varchar(3) DEFAULT NULL,
  `facility_status` varchar(12) DEFAULT NULL,
  `license_first_date` varchar(10) DEFAULT NULL,
  `closed_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ccl_residential_elder_care_facility_locations`
--

DROP TABLE IF EXISTS `ccl_residential_elder_care_facility_locations`;
CREATE TABLE `ccl_residential_elder_care_facility_locations` (
  `facility_type` varchar(32) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(50) DEFAULT NULL,
  `licensee` varchar(50) DEFAULT NULL,
  `facility_administrator` varchar(26) DEFAULT NULL,
  `fac_phone_nbr` varchar(14) DEFAULT NULL,
  `facility_address` varchar(30) DEFAULT NULL,
  `facility_city` varchar(20) DEFAULT NULL,
  `facility_state` varchar(2) DEFAULT NULL,
  `facility_zip` varchar(9) DEFAULT NULL,
  `regional_office` varchar(2) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `facility_capacity` varchar(5) DEFAULT NULL,
  `facility_status` varchar(25) DEFAULT NULL,
  `closed_date` varchar(10) DEFAULT NULL,
  `license_first_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ccs_approved_hospitals`
--

DROP TABLE IF EXISTS `ccs_approved_hospitals`;
CREATE TABLE `ccs_approved_hospitals` (
  `npi` varchar(10) DEFAULT NULL,
  `legal_name` varchar(28) DEFAULT NULL,
  `business_name` varchar(28) DEFAULT NULL,
  `facility_type` varchar(53) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `address_line_1` varchar(28) DEFAULT NULL,
  `address_line_2` varchar(13) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ccs_non_providers`
--

DROP TABLE IF EXISTS `ccs_non_providers`;
CREATE TABLE `ccs_non_providers` (
  `npi` varchar(10) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `provider_type` varchar(44) DEFAULT NULL,
  `specialty` varchar(67) DEFAULT NULL,
  `effective_date` varchar(10) DEFAULT NULL,
  `expiration_date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `address_line_1` varchar(48) DEFAULT NULL,
  `address_line_2` varchar(87) DEFAULT NULL,
  `city` varchar(22) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ccs_paneled_providers`
--

DROP TABLE IF EXISTS `ccs_paneled_providers`;
CREATE TABLE `ccs_paneled_providers` (
  `npi` varchar(10) DEFAULT NULL,
  `provider_name` varchar(29) DEFAULT NULL,
  `provider_type` varchar(44) DEFAULT NULL,
  `specialty_subspecialty` varchar(71) DEFAULT NULL,
  `panel_date` varchar(10) DEFAULT NULL,
  `expiration_date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `address_line_1` varchar(43) DEFAULT NULL,
  `address_line_2` varchar(28) DEFAULT NULL,
  `city` varchar(22) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ccs_special_care_centers`
--

DROP TABLE IF EXISTS `ccs_special_care_centers`;
CREATE TABLE `ccs_special_care_centers` (
  `scc_num` varchar(8) DEFAULT NULL,
  `center_name` varchar(77) DEFAULT NULL,
  `scc_type` varchar(52) DEFAULT NULL,
  `scc_effective_date` varchar(10) DEFAULT NULL,
  `facility_status` varchar(11) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `provider_name` varchar(28) DEFAULT NULL,
  `business_name` varchar(28) DEFAULT NULL,
  `address_line_1` varchar(28) DEFAULT NULL,
  `address_line_2` varchar(20) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cda_home_delivered_meals`
--

DROP TABLE IF EXISTS `cda_home_delivered_meals`;
CREATE TABLE `cda_home_delivered_meals` (
  `planning_and_service_area` varchar(2) DEFAULT NULL,
  `weekstartdate` varchar(9) DEFAULT NULL,
  `weekenddate` varchar(9) DEFAULT NULL,
  `people_served` varchar(5) DEFAULT NULL,
  `meals_served` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2013`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2013`;
CREATE TABLE `cdis_in_hospitals_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `facility_name2` varchar(63) DEFAULT NULL,
  `facility_name3` varchar(56) DEFAULT NULL,
  `facid1` varchar(9) DEFAULT NULL,
  `facid2` varchar(9) DEFAULT NULL,
  `facid3` varchar(9) DEFAULT NULL,
  `county` varchar(22) DEFAULT NULL,
  `hospital_onset_cases` varchar(3) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_95pct_ci_lower_limit` varchar(4) DEFAULT NULL,
  `sir_95pct_ci_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(12) DEFAULT NULL,
  `notes` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2014`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2014`;
CREATE TABLE `cdis_in_hospitals_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(69) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_onset_cases` varchar(3) DEFAULT NULL,
  `predicted_cases` varchar(6) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(4) DEFAULT NULL,
  `comparison` varchar(12) DEFAULT NULL,
  `notes` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2015`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2015`;
CREATE TABLE `cdis_in_hospitals_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_onset_cases` varchar(3) DEFAULT NULL,
  `predicted_cases` varchar(6) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(13) DEFAULT NULL,
  `notes` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2016`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2016`;
CREATE TABLE `cdis_in_hospitals_2016` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(82) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_category` varchar(82) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(5) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2017`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2017`;
CREATE TABLE `cdis_in_hospitals_2017` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(82) DEFAULT NULL,
  `hospital_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track_toward_2020_goal_0_88_2017` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2018`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2018`;
CREATE TABLE `cdis_in_hospitals_2018` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(70) DEFAULT NULL,
  `hospital_type` varchar(70) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track_toward_2020_goal_0_82_2018` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2019`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2019`;
CREATE TABLE `cdis_in_hospitals_2019` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2020_p1`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2020_p1`;
CREATE TABLE `cdis_in_hospitals_2020_p1` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2020_p2`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2020_p2`;
CREATE TABLE `cdis_in_hospitals_2020_p2` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(1) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2021`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2021`;
CREATE TABLE `cdis_in_hospitals_2021` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2022`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2022`;
CREATE TABLE `cdis_in_hospitals_2022` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_hospitals_2023`
--

DROP TABLE IF EXISTS `cdis_in_hospitals_2023`;
CREATE TABLE `cdis_in_hospitals_2023` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(40) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_ltacs_2013`
--

DROP TABLE IF EXISTS `cdis_in_ltacs_2013`;
CREATE TABLE `cdis_in_ltacs_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_name` varchar(56) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(5) DEFAULT NULL,
  `95pct_confidence_interval_lower_limit` varchar(5) DEFAULT NULL,
  `95pct_confidence_interval_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(8) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_ltacs_2014`
--

DROP TABLE IF EXISTS `cdis_in_ltacs_2014`;
CREATE TABLE `cdis_in_ltacs_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(52) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(5) DEFAULT NULL,
  `ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(8) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_ltacs_2015`
--

DROP TABLE IF EXISTS `cdis_in_ltacs_2015`;
CREATE TABLE `cdis_in_ltacs_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(11) DEFAULT NULL,
  `facility_name1` varchar(54) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(5) DEFAULT NULL,
  `ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(1) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_rehabs_2013`
--

DROP TABLE IF EXISTS `cdis_in_rehabs_2013`;
CREATE TABLE `cdis_in_rehabs_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_name` varchar(56) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(4) DEFAULT NULL,
  `95pct_confidence_interval_lower_limit` varchar(5) DEFAULT NULL,
  `95pct_confidence_interval_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(8) DEFAULT NULL,
  `notes` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_rehabs_2014`
--

DROP TABLE IF EXISTS `cdis_in_rehabs_2014`;
CREATE TABLE `cdis_in_rehabs_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(48) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(8) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cdis_in_rehabs_2015`
--

DROP TABLE IF EXISTS `cdis_in_rehabs_2015`;
CREATE TABLE `cdis_in_rehabs_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(37) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(58) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(5) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `pcr` varchar(1) DEFAULT NULL,
  `notes` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `change_in_num_of_pact_clients`
--

DROP TABLE IF EXISTS `change_in_num_of_pact_clients`;
CREATE TABLE `change_in_num_of_pact_clients` (
  `fiscal_year_fy` varchar(4) DEFAULT NULL,
  `adolescent_or_adult` varchar(10) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `total_number` varchar(9) DEFAULT NULL,
  `percentage_change_from_previous_fy` varchar(4) DEFAULT NULL
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
-- Table structure for table `chdp_all_assessments_by_funding_source`
--

DROP TABLE IF EXISTS `chdp_all_assessments_by_funding_source`;
CREATE TABLE `chdp_all_assessments_by_funding_source` (
  `sfy` varchar(9) DEFAULT NULL,
  `fund_source` varchar(3) DEFAULT NULL,
  `type_of_assessment` varchar(25) DEFAULT NULL,
  `total_assessments` varchar(7) DEFAULT NULL,
  `number_of_children_receiving_assessments` varchar(7) DEFAULT NULL,
  `number_assessments_indicating_risk_reduced` varchar(6) DEFAULT NULL,
  `number_of_children_with_risk_reduced` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chdp_children_served_and_amts_paid`
--

DROP TABLE IF EXISTS `chdp_children_served_and_amts_paid`;
CREATE TABLE `chdp_children_served_and_amts_paid` (
  `sfy` varchar(9) DEFAULT NULL,
  `fund_source` varchar(3) DEFAULT NULL,
  `age` varchar(7) DEFAULT NULL,
  `total_children_receiving_chdp_services` varchar(7) DEFAULT NULL,
  `pct_of_total_children_receiving_chdp_services` varchar(8) DEFAULT NULL,
  `total_amount_paid_for_chdp_services` varchar(12) DEFAULT NULL,
  `pct_of_total_amount_paid` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chdp_number_of_immunizations`
--

DROP TABLE IF EXISTS `chdp_number_of_immunizations`;
CREATE TABLE `chdp_number_of_immunizations` (
  `sfy` varchar(9) DEFAULT NULL,
  `fund_source` varchar(3) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `immunization` varchar(21) DEFAULT NULL,
  `num_of_immunizations` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chdp_receiving_other_tests_by_14`
--

DROP TABLE IF EXISTS `chdp_receiving_other_tests_by_14`;
CREATE TABLE `chdp_receiving_other_tests_by_14` (
  `sfy` varchar(9) DEFAULT NULL,
  `all_funding_sources` varchar(3) DEFAULT NULL,
  `age` varchar(7) DEFAULT NULL,
  `test_type` varchar(17) DEFAULT NULL,
  `num_of_tests` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chemicals_in_cosmetics`
--

DROP TABLE IF EXISTS `chemicals_in_cosmetics`;
CREATE TABLE `chemicals_in_cosmetics` (
  `cdphid` varchar(5) DEFAULT NULL,
  `productname` varchar(132) DEFAULT NULL,
  `csfid` varchar(5) DEFAULT NULL,
  `csf` varchar(136) DEFAULT NULL,
  `companyid` varchar(4) DEFAULT NULL,
  `companyname` varchar(68) DEFAULT NULL,
  `brandname` varchar(92) DEFAULT NULL,
  `primarycategoryid` varchar(3) DEFAULT NULL,
  `primarycategory` varchar(33) DEFAULT NULL,
  `subcategoryid` varchar(3) DEFAULT NULL,
  `subcategory` varchar(67) DEFAULT NULL,
  `casid` varchar(4) DEFAULT NULL,
  `casnumber` varchar(16) DEFAULT NULL,
  `chemicalid` varchar(5) DEFAULT NULL,
  `chemicalname` varchar(99) DEFAULT NULL,
  `initialdatereported` varchar(10) DEFAULT NULL,
  `mostrecentdatereported` varchar(10) DEFAULT NULL,
  `discontinueddate` varchar(10) DEFAULT NULL,
  `chemicalcreatedat` varchar(10) DEFAULT NULL,
  `chemicalupdatedat` varchar(10) DEFAULT NULL,
  `chemicaldateremoved` varchar(10) DEFAULT NULL,
  `chemicalcount` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `child_maltreatment_allegation_substantiation_rates`
--

DROP TABLE IF EXISTS `child_maltreatment_allegation_substantiation_rates`;
CREATE TABLE `child_maltreatment_allegation_substantiation_rates` (
  `year` varchar(4) DEFAULT NULL,
  `ethnic_group` varchar(22) DEFAULT NULL,
  `total_child_population` varchar(9) DEFAULT NULL,
  `children_with_allegations` varchar(7) DEFAULT NULL,
  `incidence_per_1_000_children_with_allegations` varchar(5) DEFAULT NULL,
  `children_with_substantiations` varchar(6) DEFAULT NULL,
  `incidence_per_1_000_children_with_substantiations` varchar(4) DEFAULT NULL,
  `substantiations_as_pct_of_allegations` varchar(5) DEFAULT NULL,
  `children_with_entries` varchar(6) DEFAULT NULL,
  `incidence_per_1_000_children_with_entries` varchar(4) DEFAULT NULL,
  `entries_with_pct_of_substantiations` varchar(6) DEFAULT NULL,
  `data_source` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `children_and_youth_specialty_mental_health_services_utilization`
--

DROP TABLE IF EXISTS `children_and_youth_specialty_mental_health_services_utilization`;
CREATE TABLE `children_and_youth_specialty_mental_health_services_utilization` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `svc_desc` varchar(27) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `children_and_youth_time_to_step_down`
--

DROP TABLE IF EXISTS `children_and_youth_time_to_step_down`;
CREATE TABLE `children_and_youth_time_to_step_down` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `less7_ct` varchar(5) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(4) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(4) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(4) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(4) DEFAULT NULL,
  `bene_count` varchar(5) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `chlamydia_screening_pcts_for_female_family_pact`
--

DROP TABLE IF EXISTS `chlamydia_screening_pcts_for_female_family_pact`;
CREATE TABLE `chlamydia_screening_pcts_for_female_family_pact` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `female_clients_younger_than_26_years_old` varchar(3) DEFAULT NULL,
  `female_clients_26_30_years_old` varchar(3) DEFAULT NULL,
  `female_clients_older_than_30_years_old` varchar(3) DEFAULT NULL
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
-- Table structure for table `clabsi_in_hospitals_2013`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2013`;
CREATE TABLE `clabsi_in_hospitals_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(6) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `facility_name2` varchar(63) DEFAULT NULL,
  `facility_name3` varchar(56) DEFAULT NULL,
  `facid1` varchar(9) DEFAULT NULL,
  `facid2` varchar(9) DEFAULT NULL,
  `facid3` varchar(9) DEFAULT NULL,
  `county` varchar(22) DEFAULT NULL,
  `observed_infections` varchar(3) DEFAULT NULL,
  `predicted_infections` varchar(6) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `95pctconfidence_interval_low_limit` varchar(4) DEFAULT NULL,
  `95pctconfidence_interval_upper_limit` varchar(5) DEFAULT NULL,
  `statistical_interpretation` varchar(20) DEFAULT NULL,
  `notes` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2014`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2014`;
CREATE TABLE `clabsi_in_hospitals_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(69) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `observed_infections` varchar(3) DEFAULT NULL,
  `predicted_infections` varchar(8) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `statistical_interpretation` varchar(13) DEFAULT NULL,
  `notes` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2015`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2015`;
CREATE TABLE `clabsi_in_hospitals_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `observed_infections` varchar(3) DEFAULT NULL,
  `predicted_infections` varchar(6) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `statistical_interpretation` varchar(13) DEFAULT NULL,
  `notes` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2016`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2016`;
CREATE TABLE `clabsi_in_hospitals_2016` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(82) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_category` varchar(82) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `clip_adherence_percent` varchar(4) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(77) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2017`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2017`;
CREATE TABLE `clabsi_in_hospitals_2017` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(82) DEFAULT NULL,
  `hospital_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track_toward_2020_goal_0_80_2017` varchar(3) DEFAULT NULL,
  `clip_adherence_percent` varchar(4) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2018`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2018`;
CREATE TABLE `clabsi_in_hospitals_2018` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(82) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(82) DEFAULT NULL,
  `hospital_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track_toward_2020_goal_0_7_2018` varchar(3) DEFAULT NULL,
  `clip_adherence_percent` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2019`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2019`;
CREATE TABLE `clabsi_in_hospitals_2019` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track` varchar(3) DEFAULT NULL,
  `clip_adherence_percent` varchar(5) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2021`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2021`;
CREATE TABLE `clabsi_in_hospitals_2021` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2022`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2022`;
CREATE TABLE `clabsi_in_hospitals_2022` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_2023`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_2023`;
CREATE TABLE `clabsi_in_hospitals_2023` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_january_through_june_2020_updated_annually`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_january_through_june_2020_updated_annually`;
CREATE TABLE `clabsi_in_hospitals_january_through_june_2020_updated_annually` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `clip_adherence_percent` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_hospitals_july_through_december_2020_updated_annually`
--

DROP TABLE IF EXISTS `clabsi_in_hospitals_july_through_december_2020_updated_annually`;
CREATE TABLE `clabsi_in_hospitals_july_through_december_2020_updated_annually` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(4) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `central_line_days` varchar(7) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `clip_adherence_percent` varchar(6) DEFAULT NULL,
  `months` varchar(1) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_long_term_acute_care_2015`
--

DROP TABLE IF EXISTS `clabsi_in_long_term_acute_care_2015`;
CREATE TABLE `clabsi_in_long_term_acute_care_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_id1` varchar(11) DEFAULT NULL,
  `facility_name1` varchar(54) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `observed_infections` varchar(2) DEFAULT NULL,
  `predicted_infections` varchar(5) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(4) DEFAULT NULL,
  `statistical_interpretation` varchar(13) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_patient_care_areas_2013`
--

DROP TABLE IF EXISTS `clabsi_in_patient_care_areas_2013`;
CREATE TABLE `clabsi_in_patient_care_areas_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(6) DEFAULT NULL,
  `patient_care_area` varchar(24) DEFAULT NULL,
  `patient_care_location` varchar(50) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `facility_name2` varchar(63) DEFAULT NULL,
  `facility_name3` varchar(56) DEFAULT NULL,
  `facid1` varchar(9) DEFAULT NULL,
  `facid2` varchar(9) DEFAULT NULL,
  `facid3` varchar(9) DEFAULT NULL,
  `county` varchar(22) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `95pctconfidence_interval_lower_limit` varchar(4) DEFAULT NULL,
  `95pctconfidence_interval_upper_limit` varchar(6) DEFAULT NULL,
  `statistical_interpretation` varchar(20) DEFAULT NULL,
  `clip_adherence_pct` varchar(23) DEFAULT NULL,
  `notes` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_patient_care_areas_2014`
--

DROP TABLE IF EXISTS `clabsi_in_patient_care_areas_2014`;
CREATE TABLE `clabsi_in_patient_care_areas_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `facility_name1` varchar(68) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `patient_care_area` varchar(24) DEFAULT NULL,
  `patient_care_location` varchar(73) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `ci_95_lower_limit` varchar(5) DEFAULT NULL,
  `ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `statistical_interpretation` varchar(13) DEFAULT NULL,
  `clip_adherence_percent` varchar(4) DEFAULT NULL,
  `notes` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clabsi_in_patient_care_areas_2015`
--

DROP TABLE IF EXISTS `clabsi_in_patient_care_areas_2015`;
CREATE TABLE `clabsi_in_patient_care_areas_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(54) DEFAULT NULL,
  `patient_care_area` varchar(24) DEFAULT NULL,
  `patient_care_location` varchar(69) DEFAULT NULL,
  `facility_id1` varchar(11) DEFAULT NULL,
  `facility_name1` varchar(67) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `central_line_days` varchar(5) DEFAULT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `statistical_interpretation` varchar(13) DEFAULT NULL,
  `clip_adherence_percent` varchar(4) DEFAULT NULL,
  `notes` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `clinical_sentinel_laboratory_influenza_and_other_respir_ecf8a4a5`
--

DROP TABLE IF EXISTS `clinical_sentinel_laboratory_influenza_and_other_respir_ecf8a4a5`;
CREATE TABLE `clinical_sentinel_laboratory_influenza_and_other_respir_ecf8a4a5` (
  `season` varchar(9) DEFAULT NULL,
  `date_code` varchar(6) DEFAULT NULL,
  `weekending` varchar(8) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `respiratory_virus` varchar(25) DEFAULT NULL,
  `number_positive` varchar(4) DEFAULT NULL,
  `specimens_tested` varchar(4) DEFAULT NULL,
  `percent_positive` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cms_stc_adult_smhs_by_language`
--

DROP TABLE IF EXISTS `cms_stc_adult_smhs_by_language`;
CREATE TABLE `cms_stc_adult_smhs_by_language` (
  `population_name` varchar(24) DEFAULT NULL,
  `population_type` varchar(5) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `spoken_lang_cd_desc` varchar(39) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `smhs1_ct` varchar(6) DEFAULT NULL,
  `smhs1_ct_annot` varchar(1) DEFAULT NULL,
  `smhs5_ct` varchar(6) DEFAULT NULL,
  `smhs5_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cms_stc_child_smhs_by_language`
--

DROP TABLE IF EXISTS `cms_stc_child_smhs_by_language`;
CREATE TABLE `cms_stc_child_smhs_by_language` (
  `population_name` varchar(24) DEFAULT NULL,
  `population_type` varchar(5) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `spoken_lang_cd_desc` varchar(39) DEFAULT NULL,
  `total_ct` varchar(7) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `smhs1_ct` varchar(6) DEFAULT NULL,
  `smhs1_ct_annot` varchar(1) DEFAULT NULL,
  `smhs5_ct` varchar(6) DEFAULT NULL,
  `smhs5_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `community_care_licensing_adult_residential_facility_locations`
--

DROP TABLE IF EXISTS `community_care_licensing_adult_residential_facility_locations`;
CREATE TABLE `community_care_licensing_adult_residential_facility_locations` (
  `facility_type` varchar(71) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(50) DEFAULT NULL,
  `licensee` varchar(50) DEFAULT NULL,
  `facility_administrator` varchar(26) DEFAULT NULL,
  `facility_telephone_number` varchar(14) DEFAULT NULL,
  `facility_address` varchar(30) DEFAULT NULL,
  `facility_city` varchar(20) DEFAULT NULL,
  `facility_state` varchar(2) DEFAULT NULL,
  `facility_zip` varchar(9) DEFAULT NULL,
  `regional_office` varchar(2) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `fac_capacity` varchar(3) DEFAULT NULL,
  `facility_status` varchar(25) DEFAULT NULL,
  `closed_date` varchar(10) DEFAULT NULL,
  `license_first_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `community_care_licensing_child_care_center_locations`
--

DROP TABLE IF EXISTS `community_care_licensing_child_care_center_locations`;
CREATE TABLE `community_care_licensing_child_care_center_locations` (
  `facility_type` varchar(30) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(50) DEFAULT NULL,
  `licensee` varchar(50) DEFAULT NULL,
  `facility_administrator` varchar(26) DEFAULT NULL,
  `facility_telephone_number` varchar(14) DEFAULT NULL,
  `facility_address` varchar(30) DEFAULT NULL,
  `facility_city` varchar(20) DEFAULT NULL,
  `facility_state` varchar(2) DEFAULT NULL,
  `facility_zip` varchar(9) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `regional_office` varchar(2) DEFAULT NULL,
  `facility_capacity` varchar(3) DEFAULT NULL,
  `facility_status` varchar(25) DEFAULT NULL,
  `license_first_date` varchar(10) DEFAULT NULL,
  `closed_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `community_care_licensing_foster_family_agency_locations`
--

DROP TABLE IF EXISTS `community_care_licensing_foster_family_agency_locations`;
CREATE TABLE `community_care_licensing_foster_family_agency_locations` (
  `facility_type` varchar(24) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(50) DEFAULT NULL,
  `licensee` varchar(50) DEFAULT NULL,
  `facility_administrator` varchar(26) DEFAULT NULL,
  `facility_telephone_number` varchar(14) DEFAULT NULL,
  `facility_address` varchar(30) DEFAULT NULL,
  `facility_city` varchar(20) DEFAULT NULL,
  `facility_state` varchar(2) DEFAULT NULL,
  `facility_zip` varchar(9) DEFAULT NULL,
  `regional_office` varchar(2) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `facility_capacity` varchar(3) DEFAULT NULL,
  `facility_status` varchar(22) DEFAULT NULL,
  `closed_date` varchar(10) DEFAULT NULL,
  `license_first_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `conditions_prevalence_spending_by_demo`
--

DROP TABLE IF EXISTS `conditions_prevalence_spending_by_demo`;
CREATE TABLE `conditions_prevalence_spending_by_demo` (
  `state_name_name` varchar(10) DEFAULT NULL,
  `subpopulation_type` varchar(16) DEFAULT NULL,
  `subpopulation` varchar(35) DEFAULT NULL,
  `condition_name_name` varchar(58) DEFAULT NULL,
  `condition_name_name_prevalence_orig_mcr_pct` varchar(11) DEFAULT NULL,
  `condition_name_name_orig_mcr_benes_ct` varchar(8) DEFAULT NULL,
  `eligible_orig_mcr_benes_ct` varchar(8) DEFAULT NULL,
  `condition_name_name_orig_mcr_benemos_ct` varchar(9) DEFAULT NULL,
  `spending_orig_mcr_ab_pbpy_dollars` varchar(11) DEFAULT NULL,
  `spending_orig_mcr_ab_total_dollars` varchar(11) DEFAULT NULL,
  `median_cooccurring_condition_name_names` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `conditions_prevalence_spending_by_region`
--

DROP TABLE IF EXISTS `conditions_prevalence_spending_by_region`;
CREATE TABLE `conditions_prevalence_spending_by_region` (
  `state_name_name` varchar(10) DEFAULT NULL,
  `region` varchar(52) DEFAULT NULL,
  `subpopulation_type` varchar(16) DEFAULT NULL,
  `subpopulation` varchar(35) DEFAULT NULL,
  `condition_name_name` varchar(58) DEFAULT NULL,
  `condition_name_name_prevalence_orig_mcr_pct` varchar(11) DEFAULT NULL,
  `condition_name_name_orig_mcr_benes_ct` varchar(6) DEFAULT NULL,
  `eligible_orig_mcr_benes_ct` varchar(6) DEFAULT NULL,
  `condition_name_name_orig_mcr_benemos_ct` varchar(7) DEFAULT NULL,
  `spending_orig_mcr_ab_pbpy_dollars` varchar(11) DEFAULT NULL,
  `spending_orig_mcr_ab_total_dollars` varchar(11) DEFAULT NULL,
  `median_cooccurring_condition_name_names` varchar(4) DEFAULT NULL
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
-- Table structure for table `consumers_reported_as_covid_19_positive_by_age`
--

DROP TABLE IF EXISTS `consumers_reported_as_covid_19_positive_by_age`;
CREATE TABLE `consumers_reported_as_covid_19_positive_by_age` (
  `report_date` varchar(10) DEFAULT NULL,
  `age_group` varchar(29) DEFAULT NULL,
  `number_of_positive_consumers` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_description` varchar(103) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `consumers_reported_as_covid_19_positive_by_ethnicity`
--

DROP TABLE IF EXISTS `consumers_reported_as_covid_19_positive_by_ethnicity`;
CREATE TABLE `consumers_reported_as_covid_19_positive_by_ethnicity` (
  `report_date` varchar(10) DEFAULT NULL,
  `ethnicity` varchar(22) DEFAULT NULL,
  `number_of_positive_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_description` varchar(103) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `consumers_reported_as_covid_19_positive_by_gender`
--

DROP TABLE IF EXISTS `consumers_reported_as_covid_19_positive_by_gender`;
CREATE TABLE `consumers_reported_as_covid_19_positive_by_gender` (
  `report_date` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `number_of_positive_consumers` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `consumers_reported_as_covid_19_positive_by_regional_center`
--

DROP TABLE IF EXISTS `consumers_reported_as_covid_19_positive_by_regional_center`;
CREATE TABLE `consumers_reported_as_covid_19_positive_by_regional_center` (
  `date` varchar(10) DEFAULT NULL,
  `regional_center` varchar(15) DEFAULT NULL,
  `number_of_positive_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_description` varchar(103) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `consumers_reported_as_covid_19_positive_by_residence_type`
--

DROP TABLE IF EXISTS `consumers_reported_as_covid_19_positive_by_residence_type`;
CREATE TABLE `consumers_reported_as_covid_19_positive_by_residence_type` (
  `date` varchar(10) DEFAULT NULL,
  `residence_type` varchar(81) DEFAULT NULL,
  `number_of_positive_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_description` varchar(103) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `consumers_served_by_residence_type_and_regional_center`
--

DROP TABLE IF EXISTS `consumers_served_by_residence_type_and_regional_center`;
CREATE TABLE `consumers_served_by_residence_type_and_regional_center` (
  `period` varchar(7) DEFAULT NULL,
  `regional_center` varchar(19) DEFAULT NULL,
  `residence` varchar(26) DEFAULT NULL,
  `population` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_disability`
--

DROP TABLE IF EXISTS `contraceptive_use_by_disability`;
CREATE TABLE `contraceptive_use_by_disability` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `disability_status` varchar(6) DEFAULT NULL,
  `contraceptive_type` varchar(25) DEFAULT NULL,
  `eligible` varchar(7) DEFAULT NULL,
  `contraceptive_use` varchar(6) DEFAULT NULL,
  `rate_of_contraceptive_use` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_language`
--

DROP TABLE IF EXISTS `contraceptive_use_by_language`;
CREATE TABLE `contraceptive_use_by_language` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL,
  `contraceptive_type` varchar(25) DEFAULT NULL,
  `eligible` varchar(7) DEFAULT NULL,
  `contraceptive_use` varchar(6) DEFAULT NULL,
  `rate_of_contraceptive_use` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_program_and_age`
--

DROP TABLE IF EXISTS `contraceptive_use_by_program_and_age`;
CREATE TABLE `contraceptive_use_by_program_and_age` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `program` varchar(5) DEFAULT NULL,
  `eligible` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_program_and_type`
--

DROP TABLE IF EXISTS `contraceptive_use_by_program_and_type`;
CREATE TABLE `contraceptive_use_by_program_and_type` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `program` varchar(5) DEFAULT NULL,
  `contraceptive_type` varchar(25) DEFAULT NULL,
  `eligible` varchar(7) DEFAULT NULL,
  `contraceptive_use` varchar(6) DEFAULT NULL,
  `rate_of_contraceptive_use` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_race`
--

DROP TABLE IF EXISTS `contraceptive_use_by_race`;
CREATE TABLE `contraceptive_use_by_race` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `race__ethnicity` varchar(32) DEFAULT NULL,
  `contraceptive_type` varchar(25) DEFAULT NULL,
  `eligible` varchar(6) DEFAULT NULL,
  `contraceptive_use` varchar(6) DEFAULT NULL,
  `rate_of_contraceptive_use` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `contraceptive_use_by_type`
--

DROP TABLE IF EXISTS `contraceptive_use_by_type`;
CREATE TABLE `contraceptive_use_by_type` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `contraceptive_type` varchar(25) DEFAULT NULL,
  `eligible` varchar(7) DEFAULT NULL,
  `contraceptive_use` varchar(6) DEFAULT NULL,
  `rate_of_contraceptive_use` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `county_code_list`
--

DROP TABLE IF EXISTS `county_code_list`;
CREATE TABLE `county_code_list` (
  `county_code` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL
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
-- Table structure for table `covered_california_enrollees_by_metal_tier`
--

DROP TABLE IF EXISTS `covered_california_enrollees_by_metal_tier`;
CREATE TABLE `covered_california_enrollees_by_metal_tier` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `metal_level` varchar(16) DEFAULT NULL,
  `subsidy` varchar(12) DEFAULT NULL,
  `number_of_eligible_individuals_who_selected_plan` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covered_california_enrollees_by_rating_region`
--

DROP TABLE IF EXISTS `covered_california_enrollees_by_rating_region`;
CREATE TABLE `covered_california_enrollees_by_rating_region` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `rating_region` varchar(9) DEFAULT NULL,
  `number_of_eligible_individuals_who_selected_plan` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covered_california_enrollees_by_silver_plan`
--

DROP TABLE IF EXISTS `covered_california_enrollees_by_silver_plan`;
CREATE TABLE `covered_california_enrollees_by_silver_plan` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `silver_plan` varchar(31) DEFAULT NULL,
  `number_of_eligible_individuals_who_selected_plan` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid19_emergency_dental_providers`
--

DROP TABLE IF EXISTS `covid19_emergency_dental_providers`;
CREATE TABLE `covid19_emergency_dental_providers` (
  `x` varchar(12) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(4) DEFAULT NULL,
  `practice_location_name` varchar(40) DEFAULT NULL,
  `address_1` varchar(24) DEFAULT NULL,
  `address_2` varchar(23) DEFAULT NULL,
  `city` varchar(17) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `emergency` varchar(68) DEFAULT NULL,
  `availability` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid19_outbreaks_by_month_of_onset`
--

DROP TABLE IF EXISTS `covid19_outbreaks_by_month_of_onset`;
CREATE TABLE `covid19_outbreaks_by_month_of_onset` (
  `monthyear` varchar(15) DEFAULT NULL,
  `industrysector` varchar(56) DEFAULT NULL,
  `individualsetting` varchar(122) DEFAULT NULL,
  `indcode` varchar(4) DEFAULT NULL,
  `outbreaks` varchar(4) DEFAULT NULL,
  `cases` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid19_post_vacc_statewide_stats`
--

DROP TABLE IF EXISTS `covid19_post_vacc_statewide_stats`;
CREATE TABLE `covid19_post_vacc_statewide_stats` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `area_type` varchar(5) DEFAULT NULL,
  `unvaccinated_cases` varchar(5) DEFAULT NULL,
  `vaccinated_cases` varchar(5) DEFAULT NULL,
  `unvaccinated_hosp` varchar(4) DEFAULT NULL,
  `vaccinated_hosp` varchar(3) DEFAULT NULL,
  `unvaccinated_deaths` varchar(3) DEFAULT NULL,
  `vaccinated_deaths` varchar(3) DEFAULT NULL,
  `population_unvaccinated` varchar(8) DEFAULT NULL,
  `population_vaccinated` varchar(8) DEFAULT NULL,
  `unvaccinated_cases_per_100k` varchar(16) DEFAULT NULL,
  `vaccinated_cases_per_100k` varchar(17) DEFAULT NULL,
  `unvaccinated_hosp_per_100k` varchar(17) DEFAULT NULL,
  `vaccinated_hosp_per_100k` varchar(18) DEFAULT NULL,
  `unvaccinated_deaths_per_100k` varchar(18) DEFAULT NULL,
  `vaccinated_deaths_per_100k` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid19_post_vacc_statewide_stats_archived_20211113`
--

DROP TABLE IF EXISTS `covid19_post_vacc_statewide_stats_archived_20211113`;
CREATE TABLE `covid19_post_vacc_statewide_stats_archived_20211113` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `area_type` varchar(5) DEFAULT NULL,
  `unvaccinated_cases` varchar(5) DEFAULT NULL,
  `vaccinated_cases` varchar(4) DEFAULT NULL,
  `unvaccinated_hosp` varchar(3) DEFAULT NULL,
  `vaccinated_hosp` varchar(3) DEFAULT NULL,
  `unvaccinated_deaths` varchar(3) DEFAULT NULL,
  `vaccinated_deaths` varchar(2) DEFAULT NULL,
  `population_unvaccinated` varchar(8) DEFAULT NULL,
  `population_vaccinated` varchar(8) DEFAULT NULL,
  `unvaccinated_cases_per_100k` varchar(11) DEFAULT NULL,
  `vaccinated_cases_per_100k` varchar(11) DEFAULT NULL,
  `unvaccinated_hosp_per_100k` varchar(10) DEFAULT NULL,
  `vaccinated_hosp_per_100k` varchar(10) DEFAULT NULL,
  `unvaccinated_deaths_per_100k` varchar(10) DEFAULT NULL,
  `vaccinated_deaths_per_100k` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid19_post_vacc_statewide_stats_archived_20220717`
--

DROP TABLE IF EXISTS `covid19_post_vacc_statewide_stats_archived_20220717`;
CREATE TABLE `covid19_post_vacc_statewide_stats_archived_20220717` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `area_type` varchar(5) DEFAULT NULL,
  `unvaccinated_cases` varchar(5) DEFAULT NULL,
  `vaccinated_cases` varchar(5) DEFAULT NULL,
  `boosted_cases` varchar(5) DEFAULT NULL,
  `unvaccinated_hosp` varchar(4) DEFAULT NULL,
  `vaccinated_hosp` varchar(3) DEFAULT NULL,
  `boosted_hosp` varchar(3) DEFAULT NULL,
  `unvaccinated_deaths` varchar(3) DEFAULT NULL,
  `vaccinated_deaths` varchar(2) DEFAULT NULL,
  `boosted_deaths` varchar(2) DEFAULT NULL,
  `population_unvaccinated` varchar(8) DEFAULT NULL,
  `population_vaccinated` varchar(8) DEFAULT NULL,
  `population_boosted` varchar(8) DEFAULT NULL,
  `unvaccinated_cases_per_100k` varchar(12) DEFAULT NULL,
  `vaccinated_cases_per_100k` varchar(12) DEFAULT NULL,
  `boosted_cases_per_100k` varchar(12) DEFAULT NULL,
  `unvaccinated_hosp_per_100k` varchar(11) DEFAULT NULL,
  `vaccinated_hosp_per_100k` varchar(10) DEFAULT NULL,
  `boosted_hosp_per_100k` varchar(10) DEFAULT NULL,
  `unvaccinated_deaths_per_100k` varchar(10) DEFAULT NULL,
  `vaccinated_deaths_per_100k` varchar(10) DEFAULT NULL,
  `boosted_deaths_per_100k` varchar(10) DEFAULT NULL
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
-- Table structure for table `covid_19_case_rate_by_social_det`
--

DROP TABLE IF EXISTS `covid_19_case_rate_by_social_det`;
CREATE TABLE `covid_19_case_rate_by_social_det` (
  `date` varchar(10) DEFAULT NULL,
  `social_det` varchar(17) DEFAULT NULL,
  `social_tier` varchar(13) DEFAULT NULL,
  `sort` varchar(3) DEFAULT NULL,
  `cases_7dayavg_7daysago` varchar(18) DEFAULT NULL,
  `population` varchar(8) DEFAULT NULL,
  `case_rate_per_100k` varchar(18) DEFAULT NULL,
  `state_case_rate_per_100k` varchar(16) DEFAULT NULL,
  `case_rate_per_100k_30_days_ago` varchar(18) DEFAULT NULL,
  `rate_diff_30_days` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_deaths_by_residence_type`
--

DROP TABLE IF EXISTS `covid_19_deaths_by_residence_type`;
CREATE TABLE `covid_19_deaths_by_residence_type` (
  `date` varchar(10) DEFAULT NULL,
  `residence_type` varchar(81) DEFAULT NULL,
  `number_of_deceased_consumers` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_description` varchar(103) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_demographic_data_completeness`
--

DROP TABLE IF EXISTS `covid_19_demographic_data_completeness`;
CREATE TABLE `covid_19_demographic_data_completeness` (
  `county` varchar(15) DEFAULT NULL,
  `sogi_category` varchar(18) DEFAULT NULL,
  `metric` varchar(6) DEFAULT NULL,
  `missing` varchar(9) DEFAULT NULL,
  `not_missing` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `percent_complete` varchar(18) DEFAULT NULL,
  `percent_complete_30_days_prior` varchar(18) DEFAULT NULL,
  `percent_complete_30_days_diff` varchar(19) DEFAULT NULL,
  `report_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_demographic_rate_cumulative`
--

DROP TABLE IF EXISTS `covid_19_demographic_rate_cumulative`;
CREATE TABLE `covid_19_demographic_rate_cumulative` (
  `date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `demographic_set` varchar(14) DEFAULT NULL,
  `demographic_set_category` varchar(42) DEFAULT NULL,
  `metric` varchar(6) DEFAULT NULL,
  `metric_value` varchar(8) DEFAULT NULL,
  `metric_value_per_100k` varchar(16) DEFAULT NULL,
  `applied_suppression` varchar(10) DEFAULT NULL,
  `population_percentage` varchar(15) DEFAULT NULL,
  `metric_total_percentage` varchar(15) DEFAULT NULL,
  `metric_value_30_days_ago` varchar(8) DEFAULT NULL,
  `metric_value_per_100k_30_days_ago` varchar(16) DEFAULT NULL,
  `metric_value_per_100k_delta_from_30_days_ago` varchar(17) DEFAULT NULL,
  `metric_total_percentage_30_days_ago` varchar(15) DEFAULT NULL,
  `metric_value_percentage_delta_from_30_days_ago` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_health_equity_metric_pos_30_day_by_cnt`
--

DROP TABLE IF EXISTS `covid_19_health_equity_metric_pos_30_day_by_cnt`;
CREATE TABLE `covid_19_health_equity_metric_pos_30_day_by_cnt` (
  `county` varchar(15) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `metric` varchar(28) DEFAULT NULL,
  `metric_value` varchar(17) DEFAULT NULL,
  `metric_value_30_days_ago` varchar(17) DEFAULT NULL,
  `metric_value_diff` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_nowcasts`
--

DROP TABLE IF EXISTS `covid_19_nowcasts`;
CREATE TABLE `covid_19_nowcasts` (
  `disease` varchar(8) DEFAULT NULL,
  `location_level` varchar(6) DEFAULT NULL,
  `location` varchar(65) DEFAULT NULL,
  `target_date` varchar(10) DEFAULT NULL,
  `target` varchar(11) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `value` varchar(4) DEFAULT NULL,
  `quantile` varchar(13) DEFAULT NULL,
  `archivedt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_patient_data`
--

DROP TABLE IF EXISTS `covid_19_patient_data`;
CREATE TABLE `covid_19_patient_data` (
  `facility` varchar(17) DEFAULT NULL,
  `positive_for_covid_19_cumulative_num_since_5_16_2020` varchar(4) DEFAULT NULL,
  `newly_positive_for_covid_19_in_the_last_14_days` varchar(3) DEFAULT NULL,
  `positive_for_covid_19_while_at_acute_hospitalization` varchar(1) DEFAULT NULL,
  `death_while_patient_was_positive_for_covid_19_cum` varchar(3) DEFAULT NULL,
  `total_num_of_tests_administered_cumulative_num` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_probable_cases`
--

DROP TABLE IF EXISTS `covid_19_probable_cases`;
CREATE TABLE `covid_19_probable_cases` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `area_type` varchar(6) DEFAULT NULL,
  `probable_cases` varchar(5) DEFAULT NULL,
  `cumulative_probable_cases` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_race_ethnicity_timeseries`
--

DROP TABLE IF EXISTS `covid_19_race_ethnicity_timeseries`;
CREATE TABLE `covid_19_race_ethnicity_timeseries` (
  `date` varchar(10) DEFAULT NULL,
  `location` varchar(2) DEFAULT NULL,
  `location_level` varchar(5) DEFAULT NULL,
  `demog` varchar(14) DEFAULT NULL,
  `demog_cat` varchar(42) DEFAULT NULL,
  `metric_cat` varchar(6) DEFAULT NULL,
  `metric` varchar(16) DEFAULT NULL,
  `value` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_staff_data`
--

DROP TABLE IF EXISTS `covid_19_staff_data`;
CREATE TABLE `covid_19_staff_data` (
  `facility` varchar(17) DEFAULT NULL,
  `staff_positive_for_covid_19_confirmed_cum` varchar(4) DEFAULT NULL,
  `staff_newly_positive_for_covid_19_in_the_last_14_days` varchar(3) DEFAULT NULL,
  `other_positive_for_covid_19_confirmed_cum` varchar(3) DEFAULT NULL,
  `other_newly_positive_for_covid_19_in_the_last_14_days` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_vaccines_shipped_delivered_on_hand_by_county_zip`
--

DROP TABLE IF EXISTS `covid_19_vaccines_shipped_delivered_on_hand_by_county_zip`;
CREATE TABLE `covid_19_vaccines_shipped_delivered_on_hand_by_county_zip` (
  `date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_doses_shipped` varchar(9) DEFAULT NULL,
  `doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_doses_delivered` varchar(9) DEFAULT NULL,
  `cdc_pharmacy_doses_delivered` varchar(5) DEFAULT NULL,
  `cumulative_cdc_pharmacy_doses_delivered` varchar(8) DEFAULT NULL,
  `doses_on_hand` varchar(1) DEFAULT NULL,
  `pfizer_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses_shipped` varchar(9) DEFAULT NULL,
  `pfizer_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses_delivered` varchar(9) DEFAULT NULL,
  `pfizer_doses_on_hand` varchar(1) DEFAULT NULL,
  `moderna_doses_shipped` varchar(5) DEFAULT NULL,
  `cumulative_moderna_doses_shipped` varchar(9) DEFAULT NULL,
  `moderna_doses_delivered` varchar(5) DEFAULT NULL,
  `cumulative_moderna_doses_delivered` varchar(9) DEFAULT NULL,
  `moderna_doses_on_hand` varchar(1) DEFAULT NULL,
  `jj_doses_shipped` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses_shipped` varchar(8) DEFAULT NULL,
  `jj_doses_delivered` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses_delivered` varchar(8) DEFAULT NULL,
  `jj_doses_on_hand` varchar(1) DEFAULT NULL,
  `pfizer_pediatric_doses_shipped` varchar(1) DEFAULT NULL,
  `cumulative_pfizer_pediatric_doses_shipped` varchar(3) DEFAULT NULL,
  `pfizer_pediatric_doses_delivered` varchar(1) DEFAULT NULL,
  `cumulative_pfizer_pediatric_doses_delivered` varchar(3) DEFAULT NULL,
  `pfizer_pediatric_doses_on_hand` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_19_variant_data`
--

DROP TABLE IF EXISTS `covid_19_variant_data`;
CREATE TABLE `covid_19_variant_data` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `area_type` varchar(5) DEFAULT NULL,
  `variant_name` varchar(7) DEFAULT NULL,
  `specimens` varchar(6) DEFAULT NULL,
  `percentage` varchar(5) DEFAULT NULL,
  `specimens_7d_avg` varchar(16) DEFAULT NULL,
  `percentage_7d_avg` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo`;
CREATE TABLE `covid_vacc_admin_by_demo` (
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `partially_vaccinated` varchar(6) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `fully_vaccinated` varchar(6) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(8) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_booster_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_booster_archived`;
CREATE TABLE `covid_vacc_admin_by_demo_booster_archived` (
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `pfizer_doses` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses` varchar(8) DEFAULT NULL,
  `moderna_doses` varchar(6) DEFAULT NULL,
  `cumulative_moderna_doses` varchar(8) DEFAULT NULL,
  `jj_doses` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses` varchar(7) DEFAULT NULL,
  `partially_vaccinated` varchar(6) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `fully_vaccinated` varchar(6) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(8) DEFAULT NULL,
  `booster_recip_count` varchar(5) DEFAULT NULL,
  `bivalent_booster_recip_count` varchar(5) DEFAULT NULL,
  `cumulative_booster_recip_count` varchar(7) DEFAULT NULL,
  `cumulative_bivalent_booster_recip_count` varchar(7) DEFAULT NULL,
  `booster_eligible_population` varchar(8) DEFAULT NULL,
  `bivalent_booster_eligible_population` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_by_county`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_by_county`;
CREATE TABLE `covid_vacc_admin_by_demo_by_county` (
  `county` varchar(15) DEFAULT NULL,
  `county_type` varchar(22) DEFAULT NULL,
  `demographic_category` varchar(25) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `est_population` varchar(10) DEFAULT NULL,
  `est_age_12plus_pop` varchar(10) DEFAULT NULL,
  `est_age_5plus_pop` varchar(10) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `partially_vaccinated` varchar(8) DEFAULT NULL,
  `total_partially_vaccinated` varchar(9) DEFAULT NULL,
  `fully_vaccinated` varchar(8) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(10) DEFAULT NULL,
  `at_least_one_dose` varchar(8) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(10) DEFAULT NULL,
  `cumulative_unvax_total_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_12plus_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_5plus_pop` varchar(10) DEFAULT NULL,
  `suppress_data` varchar(5) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL,
  `administered_year` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_by_county_age_16`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_by_county_age_16`;
CREATE TABLE `covid_vacc_admin_by_demo_by_county_age_16` (
  `county` varchar(15) DEFAULT NULL,
  `county_type` varchar(22) DEFAULT NULL,
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `est_population` varchar(10) DEFAULT NULL,
  `est_age_16plus_pop` varchar(10) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `partially_vaccinated` varchar(8) DEFAULT NULL,
  `total_partially_vaccinated` varchar(9) DEFAULT NULL,
  `fully_vaccinated` varchar(8) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(9) DEFAULT NULL,
  `at_least_one_dose` varchar(8) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(9) DEFAULT NULL,
  `cumulative_unvax_total_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_16plus_pop` varchar(10) DEFAULT NULL,
  `suppress_data` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_by_county_age_5`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_by_county_age_5`;
CREATE TABLE `covid_vacc_admin_by_demo_by_county_age_5` (
  `county` varchar(15) DEFAULT NULL,
  `county_type` varchar(22) DEFAULT NULL,
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `est_population` varchar(10) DEFAULT NULL,
  `est_age_12plus_pop` varchar(10) DEFAULT NULL,
  `est_age_5plus_pop` varchar(10) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `partially_vaccinated` varchar(8) DEFAULT NULL,
  `total_partially_vaccinated` varchar(9) DEFAULT NULL,
  `fully_vaccinated` varchar(8) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(10) DEFAULT NULL,
  `at_least_one_dose` varchar(8) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(10) DEFAULT NULL,
  `cumulative_unvax_total_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_12plus_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_5plus_pop` varchar(10) DEFAULT NULL,
  `suppress_data` varchar(5) DEFAULT NULL,
  `booster_recip_count` varchar(6) DEFAULT NULL,
  `cumulative_booster_recip_count` varchar(7) DEFAULT NULL,
  `booster_eligible_population` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_by_county_booster_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_by_county_booster_archived`;
CREATE TABLE `covid_vacc_admin_by_demo_by_county_booster_archived` (
  `county` varchar(15) DEFAULT NULL,
  `county_type` varchar(22) DEFAULT NULL,
  `demographic_category` varchar(25) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `est_population` varchar(10) DEFAULT NULL,
  `est_age_12plus_pop` varchar(10) DEFAULT NULL,
  `est_age_5plus_pop` varchar(10) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `partially_vaccinated` varchar(8) DEFAULT NULL,
  `total_partially_vaccinated` varchar(9) DEFAULT NULL,
  `fully_vaccinated` varchar(8) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(10) DEFAULT NULL,
  `at_least_one_dose` varchar(8) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(10) DEFAULT NULL,
  `cumulative_unvax_total_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_12plus_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_5plus_pop` varchar(10) DEFAULT NULL,
  `suppress_data` varchar(5) DEFAULT NULL,
  `booster_recip_count` varchar(5) DEFAULT NULL,
  `cumulative_booster_recip_count` varchar(7) DEFAULT NULL,
  `bivalent_booster_recip_count` varchar(5) DEFAULT NULL,
  `cumulative_bivalent_booster_recip_count` varchar(7) DEFAULT NULL,
  `booster_eligible_population` varchar(8) DEFAULT NULL,
  `bivalent_booster_eligible_population` varchar(8) DEFAULT NULL,
  `administered_year` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_by_county_updated_vacc_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_by_county_updated_vacc_archived`;
CREATE TABLE `covid_vacc_admin_by_demo_by_county_updated_vacc_archived` (
  `county` varchar(15) DEFAULT NULL,
  `county_type` varchar(22) DEFAULT NULL,
  `demographic_category` varchar(25) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `est_population` varchar(10) DEFAULT NULL,
  `est_age_12plus_pop` varchar(10) DEFAULT NULL,
  `est_age_5plus_pop` varchar(10) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `partially_vaccinated` varchar(8) DEFAULT NULL,
  `total_partially_vaccinated` varchar(9) DEFAULT NULL,
  `fully_vaccinated` varchar(8) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(10) DEFAULT NULL,
  `at_least_one_dose` varchar(8) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(10) DEFAULT NULL,
  `cumulative_unvax_total_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_12plus_pop` varchar(10) DEFAULT NULL,
  `cumulative_unvax_5plus_pop` varchar(10) DEFAULT NULL,
  `suppress_data` varchar(5) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL,
  `administered_year` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_demo_updated_vacc_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_demo_updated_vacc_archived`;
CREATE TABLE `covid_vacc_admin_by_demo_updated_vacc_archived` (
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(41) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `partially_vaccinated` varchar(6) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `fully_vaccinated` varchar(6) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(8) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_hpi_quart_booster_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_hpi_quart_booster_archived`;
CREATE TABLE `covid_vacc_admin_by_hpi_quart_booster_archived` (
  `hpiquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `pfizer_doses` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses` varchar(8) DEFAULT NULL,
  `moderna_doses` varchar(5) DEFAULT NULL,
  `cumulative_moderna_doses` varchar(7) DEFAULT NULL,
  `jj_doses` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses` varchar(6) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age12pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_age5pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_totpop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age12_population` varchar(0) DEFAULT NULL,
  `age5_population` varchar(0) DEFAULT NULL,
  `tot_population` varchar(8) DEFAULT NULL,
  `booster_recip_count` varchar(5) DEFAULT NULL,
  `bivalent_booster_recip_count` varchar(5) DEFAULT NULL,
  `cumulative_booster_recip_count` varchar(7) DEFAULT NULL,
  `cumulative_bivalent_booster_recip_count` varchar(7) DEFAULT NULL,
  `booster_eligible_population` varchar(7) DEFAULT NULL,
  `bivalent_booster_eligible_population` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_hpi_quart_updated_vacc_archived`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_hpi_quart_updated_vacc_archived`;
CREATE TABLE `covid_vacc_admin_by_hpi_quart_updated_vacc_archived` (
  `hpiquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age12pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_age5pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_totpop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age12_population` varchar(0) DEFAULT NULL,
  `age5_population` varchar(0) DEFAULT NULL,
  `tot_population` varchar(8) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_hpi_quartile`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_hpi_quartile`;
CREATE TABLE `covid_vacc_admin_by_hpi_quartile` (
  `hpiquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_partially_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_age5pop_fully_vaccinated` varchar(0) DEFAULT NULL,
  `pct_totpop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(6) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age12pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_age5pop_at_least_one_dose` varchar(0) DEFAULT NULL,
  `pct_totpop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age12_population` varchar(0) DEFAULT NULL,
  `age5_population` varchar(0) DEFAULT NULL,
  `tot_population` varchar(8) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `cumulative_up_to_date_count` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_vem_quart`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_vem_quart`;
CREATE TABLE `covid_vacc_admin_by_vem_quart` (
  `vemquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `pct_age5pop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `pct_totpop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `pct_age5pop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `pct_totpop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(5) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age12pop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `pct_age5pop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `pct_totpop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age12_population` varchar(7) DEFAULT NULL,
  `age5_population` varchar(7) DEFAULT NULL,
  `tot_population` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_vem_quart_age_16`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_vem_quart_age_16`;
CREATE TABLE `covid_vacc_admin_by_vem_quart_age_16` (
  `vemquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `pfizer_doses` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses` varchar(7) DEFAULT NULL,
  `moderna_doses` varchar(5) DEFAULT NULL,
  `cumulative_moderna_doses` varchar(7) DEFAULT NULL,
  `jj_doses` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses` varchar(6) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age16pop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age16pop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(5) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age16pop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age16_population` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_admin_by_vem_quart_age_5`
--

DROP TABLE IF EXISTS `covid_vacc_admin_by_vem_quart_age_5`;
CREATE TABLE `covid_vacc_admin_by_vem_quart_age_5` (
  `vemquartile` varchar(1) DEFAULT NULL,
  `administered_date` varchar(10) DEFAULT NULL,
  `total_doses` varchar(6) DEFAULT NULL,
  `cumulative_total_doses` varchar(8) DEFAULT NULL,
  `pfizer_doses` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses` varchar(8) DEFAULT NULL,
  `moderna_doses` varchar(5) DEFAULT NULL,
  `cumulative_moderna_doses` varchar(7) DEFAULT NULL,
  `jj_doses` varchar(5) DEFAULT NULL,
  `cumulative_jj_doses` varchar(6) DEFAULT NULL,
  `partially_vaccinated` varchar(5) DEFAULT NULL,
  `total_partially_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `pct_age5pop_partially_vaccinated` varchar(8) DEFAULT NULL,
  `fully_vaccinated` varchar(5) DEFAULT NULL,
  `cumulative_fully_vaccinated` varchar(7) DEFAULT NULL,
  `pct_age12pop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `pct_age5pop_fully_vaccinated` varchar(8) DEFAULT NULL,
  `at_least_one_dose` varchar(5) DEFAULT NULL,
  `cumulative_at_least_one_dose` varchar(7) DEFAULT NULL,
  `pct_age12pop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `pct_age5pop_at_least_one_dose` varchar(8) DEFAULT NULL,
  `age12_population` varchar(7) DEFAULT NULL,
  `age5_population` varchar(7) DEFAULT NULL,
  `booster_recip_count` varchar(5) DEFAULT NULL,
  `cumulative_booster_recip_count` varchar(7) DEFAULT NULL,
  `booster_eligible_population` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_shipped_on_hand_archived`
--

DROP TABLE IF EXISTS `covid_vacc_shipped_on_hand_archived`;
CREATE TABLE `covid_vacc_shipped_on_hand_archived` (
  `date` varchar(10) DEFAULT NULL,
  `doses_shipped` varchar(7) DEFAULT NULL,
  `cumulative_doses_shipped` varchar(9) DEFAULT NULL,
  `doses_delivered` varchar(7) DEFAULT NULL,
  `cumulative_doses_delivered` varchar(11) DEFAULT NULL,
  `cdc_pharmacy_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_cdc_pharmacy_doses_delivered` varchar(10) DEFAULT NULL,
  `doses_on_hand` varchar(1) DEFAULT NULL,
  `pfizer_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses_shipped` varchar(8) DEFAULT NULL,
  `pfizer_doses_delivered` varchar(7) DEFAULT NULL,
  `cumulative_pfizer_doses_delivered` varchar(10) DEFAULT NULL,
  `pfizer_doses_on_hand` varchar(1) DEFAULT NULL,
  `moderna_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_moderna_doses_shipped` varchar(8) DEFAULT NULL,
  `moderna_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_moderna_doses_delivered` varchar(10) DEFAULT NULL,
  `moderna_doses_on_hand` varchar(1) DEFAULT NULL,
  `jj_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_jj_doses_shipped` varchar(7) DEFAULT NULL,
  `jj_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_jj_doses_delivered` varchar(9) DEFAULT NULL,
  `jj_doses_on_hand` varchar(1) DEFAULT NULL,
  `pfizer_pediatric_doses_shipped` varchar(1) DEFAULT NULL,
  `cumulative_pfizer_pediatric_doses_shipped` varchar(1) DEFAULT NULL,
  `pfizer_pediatric_doses_delivered` varchar(1) DEFAULT NULL,
  `cumulative_pfizer_pediatric_doses_delivered` varchar(3) DEFAULT NULL,
  `pfizer_pediatric_doses_on_hand` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `covid_vacc_shipped_on_hand_archived0`
--

DROP TABLE IF EXISTS `covid_vacc_shipped_on_hand_archived0`;
CREATE TABLE `covid_vacc_shipped_on_hand_archived0` (
  `date` varchar(10) DEFAULT NULL,
  `doses_shipped` varchar(7) DEFAULT NULL,
  `cumulative_doses_shipped` varchar(8) DEFAULT NULL,
  `doses_delivered` varchar(7) DEFAULT NULL,
  `cumulative_doses_delivered` varchar(10) DEFAULT NULL,
  `cdc_pharmacy_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_cdc_pharmacy_doses_delivered` varchar(10) DEFAULT NULL,
  `doses_on_hand` varchar(7) DEFAULT NULL,
  `pfizer_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_pfizer_doses_shipped` varchar(8) DEFAULT NULL,
  `pfizer_doses_delivered` varchar(7) DEFAULT NULL,
  `cumulative_pfizer_doses_delivered` varchar(10) DEFAULT NULL,
  `pfizer_doses_on_hand` varchar(7) DEFAULT NULL,
  `moderna_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_moderna_doses_shipped` varchar(8) DEFAULT NULL,
  `moderna_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_moderna_doses_delivered` varchar(10) DEFAULT NULL,
  `moderna_doses_on_hand` varchar(7) DEFAULT NULL,
  `jj_doses_shipped` varchar(6) DEFAULT NULL,
  `cumulative_jj_doses_shipped` varchar(7) DEFAULT NULL,
  `jj_doses_delivered` varchar(6) DEFAULT NULL,
  `cumulative_jj_doses_delivered` varchar(9) DEFAULT NULL,
  `jj_doses_on_hand` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2017`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2017`;
CREATE TABLE `cphs_approved_research_projects_2017` (
  `protocol_id` varchar(10) DEFAULT NULL,
  `pi_last_name` varchar(18) DEFAULT NULL,
  `pi_first_name` varchar(13) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_organization` varchar(75) DEFAULT NULL,
  `data_source` varchar(192) DEFAULT NULL,
  `project_title` varchar(251) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2018`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2018`;
CREATE TABLE `cphs_approved_research_projects_2018` (
  `project_site` varchar(59) DEFAULT NULL,
  `project_type` varchar(68) DEFAULT NULL,
  `type_of_activity` varchar(16) DEFAULT NULL,
  `pi` varchar(65) DEFAULT NULL,
  `institution` varchar(66) DEFAULT NULL,
  `title` varchar(776) DEFAULT NULL,
  `data_source` varchar(18) DEFAULT NULL,
  `affiliation_and_data_source` varchar(2946) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2019`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2019`;
CREATE TABLE `cphs_approved_research_projects_2019` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `pi_last_name` varchar(15) DEFAULT NULL,
  `pi_first_name` varchar(14) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_organization` varchar(66) DEFAULT NULL,
  `data_source` varchar(721) DEFAULT NULL,
  `project_title` varchar(776) DEFAULT NULL,
  `completed` varchar(10) DEFAULT NULL,
  `initial_approval` varchar(10) DEFAULT NULL,
  `latest_approval` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_20190`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_20190`;
CREATE TABLE `cphs_approved_research_projects_20190` (
  `id` varchar(3) DEFAULT NULL,
  `protocol_id` varchar(55) DEFAULT NULL,
  `pi_last_name` varchar(18) DEFAULT NULL,
  `pi_first_name` varchar(11) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_organization` varchar(64) DEFAULT NULL,
  `data_source` varchar(1616) DEFAULT NULL,
  `project_title` varchar(279) DEFAULT NULL,
  `completed` varchar(9) DEFAULT NULL,
  `initial_approval` varchar(10) DEFAULT NULL,
  `latest_approval` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2020`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2020`;
CREATE TABLE `cphs_approved_research_projects_2020` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `project_type` varchar(79) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_name` varchar(66) DEFAULT NULL,
  `pi_organization` varchar(66) DEFAULT NULL,
  `project_title` varchar(326) DEFAULT NULL,
  `data_source` varchar(725) DEFAULT NULL,
  `defined` varchar(10) DEFAULT NULL,
  `completed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_20200`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_20200`;
CREATE TABLE `cphs_approved_research_projects_20200` (
  `protocol_id` varchar(58) DEFAULT NULL,
  `project_type` varchar(96) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_name` varchar(70) DEFAULT NULL,
  `pi_organization` varchar(64) DEFAULT NULL,
  `project_title` varchar(329) DEFAULT NULL,
  `data_source` varchar(1611) DEFAULT NULL,
  `defined` varchar(9) DEFAULT NULL,
  `completed` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2021`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2021`;
CREATE TABLE `cphs_approved_research_projects_2021` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `project_type` varchar(78) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `name` varchar(66) DEFAULT NULL,
  `pi_organization` varchar(58) DEFAULT NULL,
  `project_title` varchar(275) DEFAULT NULL,
  `data_source` varchar(723) DEFAULT NULL,
  `defined` varchar(10) DEFAULT NULL,
  `completed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_20210`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_20210`;
CREATE TABLE `cphs_approved_research_projects_20210` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `project_type` varchar(79) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `name` varchar(66) DEFAULT NULL,
  `pi_organization` varchar(66) DEFAULT NULL,
  `project_title` varchar(290) DEFAULT NULL,
  `data_source` varchar(1622) DEFAULT NULL,
  `defined` varchar(9) DEFAULT NULL,
  `completed` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_20211`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_20211`;
CREATE TABLE `cphs_approved_research_projects_20211` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `project_type` varchar(79) DEFAULT NULL,
  `application_type` varchar(35) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `pi_organization` varchar(71) DEFAULT NULL,
  `project_title` varchar(287) DEFAULT NULL,
  `data_source` varchar(1609) DEFAULT NULL,
  `defined` varchar(9) DEFAULT NULL,
  `completed` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cphs_approved_research_projects_2022`
--

DROP TABLE IF EXISTS `cphs_approved_research_projects_2022`;
CREATE TABLE `cphs_approved_research_projects_2022` (
  `protocol_id` varchar(59) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `application_type` varchar(3) DEFAULT NULL,
  `pi_organization` varchar(66) DEFAULT NULL,
  `project_type` varchar(61) DEFAULT NULL,
  `data_source` varchar(1622) DEFAULT NULL,
  `project_title` varchar(260) DEFAULT NULL,
  `defined` varchar(9) DEFAULT NULL,
  `completed` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2021_regional_model_rates`
--

DROP TABLE IF EXISTS `cy_2021_regional_model_rates`;
CREATE TABLE `cy_2021_regional_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(14) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(20) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2021_two_plan_model_rates`
--

DROP TABLE IF EXISTS `cy_2021_two_plan_model_rates`;
CREATE TABLE `cy_2021_two_plan_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2022_regional_model_rates`
--

DROP TABLE IF EXISTS `cy_2022_regional_model_rates`;
CREATE TABLE `cy_2022_regional_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(29) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2022_two_plan_model_rates`
--

DROP TABLE IF EXISTS `cy_2022_two_plan_model_rates`;
CREATE TABLE `cy_2022_two_plan_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2023_regional_model_rates`
--

DROP TABLE IF EXISTS `cy_2023_regional_model_rates`;
CREATE TABLE `cy_2023_regional_model_rates` (
  `rating_period` varchar(12) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(9) DEFAULT NULL,
  `health_plan_name` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(39) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `cy_2023_two_plan_model_rates`
--

DROP TABLE IF EXISTS `cy_2023_two_plan_model_rates`;
CREATE TABLE `cy_2023_two_plan_model_rates` (
  `rating_period` varchar(10) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan_name` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(39) DEFAULT NULL,
  `lower_bound` varchar(12) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `data_for_map_of_counties_and_num_of_comm_supports_available`
--

DROP TABLE IF EXISTS `data_for_map_of_counties_and_num_of_comm_supports_available`;
CREATE TABLE `data_for_map_of_counties_and_num_of_comm_supports_available` (
  `objectid` varchar(2) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `totalservicesoffered` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `data_high_school_electronic_smoking_device_use_prevalence`
--

DROP TABLE IF EXISTS `data_high_school_electronic_smoking_device_use_prevalence`;
CREATE TABLE `data_high_school_electronic_smoking_device_use_prevalence` (
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `strata` varchar(14) DEFAULT NULL,
  `strata_name` varchar(23) DEFAULT NULL,
  `rate_pct` varchar(4) DEFAULT NULL,
  `lower_95pct_confidence_interval` varchar(4) DEFAULT NULL,
  `upper_95pct_confidence_interval` varchar(4) DEFAULT NULL,
  `number_of_respondents` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `data_high_school_tobacco_use_prevalence`
--

DROP TABLE IF EXISTS `data_high_school_tobacco_use_prevalence`;
CREATE TABLE `data_high_school_tobacco_use_prevalence` (
  `year` varchar(7) DEFAULT NULL,
  `comparison` varchar(36) DEFAULT NULL,
  `demographic` varchar(35) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `se` varchar(3) DEFAULT NULL,
  `lower95` varchar(4) DEFAULT NULL,
  `upper95` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `data_table_for_map_of_ecm_counties`
--

DROP TABLE IF EXISTS `data_table_for_map_of_ecm_counties`;
CREATE TABLE `data_table_for_map_of_ecm_counties` (
  `objectid` varchar(2) DEFAULT NULL,
  `statefp` varchar(2) DEFAULT NULL,
  `countyfp` varchar(3) DEFAULT NULL,
  `countyns` varchar(8) DEFAULT NULL,
  `geoid` varchar(5) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `namelsad` varchar(22) DEFAULT NULL,
  `shape_area` varchar(16) DEFAULT NULL,
  `shape_length` varchar(16) DEFAULT NULL,
  `ecmlaunchdate` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dds_consumers_by_diagnosis_and_regional_center`
--

DROP TABLE IF EXISTS `dds_consumers_by_diagnosis_and_regional_center`;
CREATE TABLE `dds_consumers_by_diagnosis_and_regional_center` (
  `period` varchar(7) DEFAULT NULL,
  `rc` varchar(19) DEFAULT NULL,
  `autism` varchar(5) DEFAULT NULL,
  `cp` varchar(4) DEFAULT NULL,
  `epilepsy` varchar(4) DEFAULT NULL,
  `id` varchar(5) DEFAULT NULL,
  `c5` varchar(4) DEFAULT NULL,
  `es` varchar(4) DEFAULT NULL,
  `total_pop` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dds_consumers_served_by_age_gender`
--

DROP TABLE IF EXISTS `dds_consumers_served_by_age_gender`;
CREATE TABLE `dds_consumers_served_by_age_gender` (
  `period` varchar(7) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `population` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dds_consumers_served_by_age_group_and_residence_type`
--

DROP TABLE IF EXISTS `dds_consumers_served_by_age_group_and_residence_type`;
CREATE TABLE `dds_consumers_served_by_age_group_and_residence_type` (
  `period` varchar(7) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `residence` varchar(26) DEFAULT NULL,
  `consumers` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dds_regionalcenters`
--

DROP TABLE IF EXISTS `dds_regionalcenters`;
CREATE TABLE `dds_regionalcenters` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid_1` varchar(2) DEFAULT NULL,
  `objectid` varchar(2) DEFAULT NULL,
  `reg_id` varchar(2) DEFAULT NULL,
  `name` varchar(41) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `tty` varchar(12) DEFAULT NULL,
  `early_start_intake` varchar(72) DEFAULT NULL,
  `website` varchar(35) DEFAULT NULL,
  `catchment_areas` varchar(155) DEFAULT NULL,
  `acronym` varchar(6) DEFAULT NULL
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
-- Table structure for table `deaths_by_month_statewide_final_1970_1978`
--

DROP TABLE IF EXISTS `deaths_by_month_statewide_final_1970_1978`;
CREATE TABLE `deaths_by_month_statewide_final_1970_1978` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(18) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_month_statewide_final_1979_1998`
--

DROP TABLE IF EXISTS `deaths_by_month_statewide_final_1979_1998`;
CREATE TABLE `deaths_by_month_statewide_final_1979_1998` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_month_statewide_final_1999_2013`
--

DROP TABLE IF EXISTS `deaths_by_month_statewide_final_1999_2013`;
CREATE TABLE `deaths_by_month_statewide_final_1999_2013` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(30) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_month_statewide_final_2014_2022`
--

DROP TABLE IF EXISTS `deaths_by_month_statewide_final_2014_2022`;
CREATE TABLE `deaths_by_month_statewide_final_2014_2022` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(36) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_month_statewide_provisional_2023_2024`
--

DROP TABLE IF EXISTS `deaths_by_month_statewide_provisional_2023_2024`;
CREATE TABLE `deaths_by_month_statewide_provisional_2023_2024` (
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(36) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_extract_date` varchar(10) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_year_statewide_final_1970_1978`
--

DROP TABLE IF EXISTS `deaths_by_year_statewide_final_1970_1978`;
CREATE TABLE `deaths_by_year_statewide_final_1970_1978` (
  `year` varchar(4) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(18) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_year_statewide_final_1979_1998`
--

DROP TABLE IF EXISTS `deaths_by_year_statewide_final_1979_1998`;
CREATE TABLE `deaths_by_year_statewide_final_1979_1998` (
  `year` varchar(4) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_year_statewide_final_1999_2013`
--

DROP TABLE IF EXISTS `deaths_by_year_statewide_final_1999_2013`;
CREATE TABLE `deaths_by_year_statewide_final_1999_2013` (
  `year` varchar(4) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(23) DEFAULT NULL,
  `strata_name` varchar(39) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `deaths_by_year_statewide_final_2014_2022`
--

DROP TABLE IF EXISTS `deaths_by_year_statewide_final_2014_2022`;
CREATE TABLE `deaths_by_year_statewide_final_2014_2022` (
  `year` varchar(4) DEFAULT NULL,
  `geography_type` varchar(10) DEFAULT NULL,
  `strata` varchar(23) DEFAULT NULL,
  `strata_name` varchar(49) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
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
-- Table structure for table `december_monthly_update_prescription_drug_wac_increases_a7eb8421`
--

DROP TABLE IF EXISTS `december_monthly_update_prescription_drug_wac_increases_a7eb8421`;
CREATE TABLE `december_monthly_update_prescription_drug_wac_increases_a7eb8421` (
  `manufacturer_name` varchar(138) DEFAULT NULL,
  `ndc_number` varchar(11) DEFAULT NULL,
  `effective_date` varchar(10) DEFAULT NULL,
  `history_effective_date` varchar(10) DEFAULT NULL,
  `wac_increase_amount` varchar(10) DEFAULT NULL,
  `wac_amount` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `december_monthly_update_prescription_drugs_introduced_t_241fd8d3`
--

DROP TABLE IF EXISTS `december_monthly_update_prescription_drugs_introduced_t_241fd8d3`;
CREATE TABLE `december_monthly_update_prescription_drugs_introduced_t_241fd8d3` (
  `manufacturer_name` varchar(37) DEFAULT NULL,
  `ndc_number` varchar(11) DEFAULT NULL,
  `drug_product_description` varchar(254) DEFAULT NULL,
  `date_introduced_to_market` varchar(10) DEFAULT NULL,
  `wac_at_introduction` varchar(9) DEFAULT NULL,
  `marketing_pricing_plan_description` varchar(4996) DEFAULT NULL,
  `marketing_pricing_plan_non_public_indicator` varchar(1) DEFAULT NULL,
  `estimated_number_of_patients` varchar(9) DEFAULT NULL,
  `breakthrough_therapy_indicator` varchar(1) DEFAULT NULL,
  `priority_review_indicator` varchar(1) DEFAULT NULL,
  `acquisition_date` varchar(10) DEFAULT NULL,
  `acquisition_price` varchar(11) DEFAULT NULL,
  `acquisition_price_non_public_indicator` varchar(1) DEFAULT NULL,
  `acquisition_price_comment` varchar(974) DEFAULT NULL,
  `general_comments` varchar(4994) DEFAULT NULL,
  `supporting_documents` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `demographic_profile_of_family_pact_clients`
--

DROP TABLE IF EXISTS `demographic_profile_of_family_pact_clients`;
CREATE TABLE `demographic_profile_of_family_pact_clients` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `language` varchar(7) DEFAULT NULL,
  `parity` varchar(6) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `race_ethnicity` varchar(31) DEFAULT NULL,
  `total_clients_served` varchar(7) DEFAULT NULL,
  `number_served` varchar(17) DEFAULT NULL,
  `percentage_served` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_2013_2022`
--

DROP TABLE IF EXISTS `dental_utilization_2013_2022`;
CREATE TABLE `dental_utilization_2013_2022` (
  `county` varchar(15) DEFAULT NULL,
  `ethnicity_group` varchar(35) DEFAULT NULL,
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(175) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(1) DEFAULT NULL,
  `users_annotation_description` varchar(38) DEFAULT NULL,
  `denominator_3_months_continuous_eligibility` varchar(7) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator_annotation_description` varchar(38) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(1) DEFAULT NULL,
  `utilization_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_by_provider_cy2018`
--

DROP TABLE IF EXISTS `dental_utilization_by_provider_cy2018`;
CREATE TABLE `dental_utilization_by_provider_cy2018` (
  `rendering_npi` varchar(10) DEFAULT NULL,
  `provider_legal_name` varchar(56) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(3) DEFAULT NULL,
  `provider_type` varchar(13) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `adv_user_cnt` varchar(5) DEFAULT NULL,
  `adv_user_annotation_code` varchar(1) DEFAULT NULL,
  `adv_svc_cnt` varchar(6) DEFAULT NULL,
  `adv_svc_annotation_code` varchar(1) DEFAULT NULL,
  `prev_user_cnt` varchar(5) DEFAULT NULL,
  `prev_user_annotation_code` varchar(1) DEFAULT NULL,
  `prev_svc_cnt` varchar(5) DEFAULT NULL,
  `prev_svc_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_user_cnt` varchar(5) DEFAULT NULL,
  `txmt_user_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_svc_cnt` varchar(6) DEFAULT NULL,
  `txmt_svc_annotation_code` varchar(1) DEFAULT NULL,
  `exam_user_cnt` varchar(5) DEFAULT NULL,
  `exam_user_annotation_code` varchar(1) DEFAULT NULL,
  `exam_svc_cnt` varchar(5) DEFAULT NULL,
  `exam_svc_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_by_provider_cy2019`
--

DROP TABLE IF EXISTS `dental_utilization_by_provider_cy2019`;
CREATE TABLE `dental_utilization_by_provider_cy2019` (
  `rendering_npi` varchar(10) DEFAULT NULL,
  `provider_legal_name` varchar(56) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(3) DEFAULT NULL,
  `provider_type` varchar(13) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `adv_user_cnt` varchar(5) DEFAULT NULL,
  `adv_user_annotation_code` varchar(1) DEFAULT NULL,
  `adv_svc_cnt` varchar(6) DEFAULT NULL,
  `adv_svc_annotation_code` varchar(1) DEFAULT NULL,
  `prev_user_cnt` varchar(5) DEFAULT NULL,
  `prev_user_annotation_code` varchar(1) DEFAULT NULL,
  `prev_svc_cnt` varchar(6) DEFAULT NULL,
  `prev_svc_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_user_cnt` varchar(5) DEFAULT NULL,
  `txmt_user_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_svc_cnt` varchar(6) DEFAULT NULL,
  `txmt_svc_annotation_code` varchar(1) DEFAULT NULL,
  `exam_user_cnt` varchar(5) DEFAULT NULL,
  `exam_user_annotation_code` varchar(1) DEFAULT NULL,
  `exam_svc_cnt` varchar(6) DEFAULT NULL,
  `exam_svc_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_by_provider_cy2020`
--

DROP TABLE IF EXISTS `dental_utilization_by_provider_cy2020`;
CREATE TABLE `dental_utilization_by_provider_cy2020` (
  `rendering_npi` varchar(10) DEFAULT NULL,
  `provider_legal_name` varchar(56) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(3) DEFAULT NULL,
  `provider_type` varchar(13) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `adv_user_cnt` varchar(6) DEFAULT NULL,
  `adv_user_annotation_code` varchar(1) DEFAULT NULL,
  `adv_svc_cnt` varchar(7) DEFAULT NULL,
  `adv_svc_annotation_code` varchar(1) DEFAULT NULL,
  `prev_user_cnt` varchar(6) DEFAULT NULL,
  `prev_user_annotation_code` varchar(1) DEFAULT NULL,
  `prev_svc_cnt` varchar(6) DEFAULT NULL,
  `prev_svc_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_user_cnt` varchar(6) DEFAULT NULL,
  `txmt_user_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_svc_cnt` varchar(7) DEFAULT NULL,
  `txmt_svc_annotation_code` varchar(1) DEFAULT NULL,
  `exam_user_cnt` varchar(6) DEFAULT NULL,
  `exam_user_annotation_code` varchar(1) DEFAULT NULL,
  `exam_svc_cnt` varchar(7) DEFAULT NULL,
  `exam_svc_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_by_provider_cy2021`
--

DROP TABLE IF EXISTS `dental_utilization_by_provider_cy2021`;
CREATE TABLE `dental_utilization_by_provider_cy2021` (
  `rendering_npi` varchar(10) DEFAULT NULL,
  `provider_legal_name` varchar(56) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(3) DEFAULT NULL,
  `provider_type` varchar(13) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `adv_user_cnt` varchar(6) DEFAULT NULL,
  `adv_user_annotation_code` varchar(1) DEFAULT NULL,
  `adv_svc_cnt` varchar(7) DEFAULT NULL,
  `adv_svc_annotation_code` varchar(1) DEFAULT NULL,
  `prev_user_cnt` varchar(6) DEFAULT NULL,
  `prev_user_annotation_code` varchar(1) DEFAULT NULL,
  `prev_svc_cnt` varchar(6) DEFAULT NULL,
  `prev_svc_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_user_cnt` varchar(5) DEFAULT NULL,
  `txmt_user_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_svc_cnt` varchar(6) DEFAULT NULL,
  `txmt_svc_annotation_code` varchar(1) DEFAULT NULL,
  `exam_user_cnt` varchar(6) DEFAULT NULL,
  `exam_user_annotation_code` varchar(1) DEFAULT NULL,
  `exam_svc_cnt` varchar(6) DEFAULT NULL,
  `exam_svc_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_by_provider_cy2022`
--

DROP TABLE IF EXISTS `dental_utilization_by_provider_cy2022`;
CREATE TABLE `dental_utilization_by_provider_cy2022` (
  `rendering_npi` varchar(10) DEFAULT NULL,
  `provider_legal_name` varchar(62) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `delivery_system` varchar(4) DEFAULT NULL,
  `provider_type` varchar(13) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `adv_user_cnt` varchar(5) DEFAULT NULL,
  `adv_user_annotation_code` varchar(1) DEFAULT NULL,
  `adv_svc_cnt` varchar(6) DEFAULT NULL,
  `adv_svc_annotation_code` varchar(1) DEFAULT NULL,
  `prev_user_cnt` varchar(5) DEFAULT NULL,
  `prev_user_annotation_code` varchar(1) DEFAULT NULL,
  `prev_svc_cnt` varchar(5) DEFAULT NULL,
  `prev_svc_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_user_cnt` varchar(4) DEFAULT NULL,
  `txmt_user_annotation_code` varchar(1) DEFAULT NULL,
  `txmt_svc_cnt` varchar(5) DEFAULT NULL,
  `txmt_svc_annotation_code` varchar(1) DEFAULT NULL,
  `exam_user_cnt` varchar(5) DEFAULT NULL,
  `exam_user_annotation_code` varchar(1) DEFAULT NULL,
  `exam_svc_cnt` varchar(5) DEFAULT NULL,
  `exam_svc_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_measures_and_sealant_data`
--

DROP TABLE IF EXISTS `dental_utilization_measures_and_sealant_data`;
CREATE TABLE `dental_utilization_measures_and_sealant_data` (
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(175) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(1) DEFAULT NULL,
  `users_annotation_description` varchar(38) DEFAULT NULL,
  `denominator_3_months_continuous_eligibility` varchar(9) DEFAULT NULL,
  `denominator_annotation_code` varchar(0) DEFAULT NULL,
  `denominator_annotation_description` varchar(0) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(1) DEFAULT NULL,
  `utilization_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_measures_and_sealant_data_by_county__5e7a1849`
--

DROP TABLE IF EXISTS `dental_utilization_measures_and_sealant_data_by_county__5e7a1849`;
CREATE TABLE `dental_utilization_measures_and_sealant_data_by_county__5e7a1849` (
  `county` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(175) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(1) DEFAULT NULL,
  `users_annotation_description` varchar(38) DEFAULT NULL,
  `denominator_3_months_continuous_eligibility` varchar(7) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator_annotation_description` varchar(38) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(1) DEFAULT NULL,
  `utilization_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dental_utilization_measures_and_sealant_data_by_ethnici_c2e533e8`
--

DROP TABLE IF EXISTS `dental_utilization_measures_and_sealant_data_by_ethnici_c2e533e8`;
CREATE TABLE `dental_utilization_measures_and_sealant_data_by_ethnici_c2e533e8` (
  `ethnicity_group` varchar(35) DEFAULT NULL,
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(175) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(1) DEFAULT NULL,
  `users_annotation_description` varchar(38) DEFAULT NULL,
  `denominator_3_months_continuous_eligibility` varchar(9) DEFAULT NULL,
  `denominator_annotation_code` varchar(0) DEFAULT NULL,
  `denominator_annotation_description` varchar(0) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(1) DEFAULT NULL,
  `utilization_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `department_of_child_support_services_case_overview_ffy__5ffad761`
--

DROP TABLE IF EXISTS `department_of_child_support_services_case_overview_ffy__5ffad761`;
CREATE TABLE `department_of_child_support_services_case_overview_ffy__5ffad761` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `case_type` varchar(25) DEFAULT NULL,
  `cases` varchar(6) DEFAULT NULL,
  `percentage` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `department_of_child_support_services_children_in_child__d77d1169`
--

DROP TABLE IF EXISTS `department_of_child_support_services_children_in_child__d77d1169`;
CREATE TABLE `department_of_child_support_services_children_in_child__d77d1169` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `open_cases` varchar(6) DEFAULT NULL,
  `children_in_child_support_cases` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `department_of_child_support_services_distributed_collec_3fa1fd81`
--

DROP TABLE IF EXISTS `department_of_child_support_services_distributed_collec_3fa1fd81`;
CREATE TABLE `department_of_child_support_services_distributed_collec_3fa1fd81` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `assistance_status` varchar(25) DEFAULT NULL,
  `amount` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `department_of_child_support_services_paternity_establis_a0f4646f`
--

DROP TABLE IF EXISTS `department_of_child_support_services_paternity_establis_a0f4646f`;
CREATE TABLE `department_of_child_support_services_paternity_establis_a0f4646f` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `children_with_paternity_established_during_federal_fiscal_year` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `department_of_rehabilitation_office_contact_information_2358bc92`
--

DROP TABLE IF EXISTS `department_of_rehabilitation_office_contact_information_2358bc92`;
CREATE TABLE `department_of_rehabilitation_office_contact_information_2358bc92` (
  `office` varchar(41) DEFAULT NULL,
  `address` varchar(49) DEFAULT NULL,
  `suite` varchar(17) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `languages_spoken_by_office_staff` varchar(17) DEFAULT NULL,
  `coordinates` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dept_state_hospitals_dept_wide_violence_data`
--

DROP TABLE IF EXISTS `dept_state_hospitals_dept_wide_violence_data`;
CREATE TABLE `dept_state_hospitals_dept_wide_violence_data` (
  `hospital` varchar(16) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `category` varchar(44) DEFAULT NULL,
  `sub_category_code` varchar(2) DEFAULT NULL,
  `physical_contact` varchar(29) DEFAULT NULL,
  `count_of_violent_incidents` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dept_state_hospitals_violence_patients_treated_by_year`
--

DROP TABLE IF EXISTS `dept_state_hospitals_violence_patients_treated_by_year`;
CREATE TABLE `dept_state_hospitals_violence_patients_treated_by_year` (
  `year` varchar(4) DEFAULT NULL,
  `patients_treated_by_case_number_by_year` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dept_state_hospitals_violence_total_patient_days`
--

DROP TABLE IF EXISTS `dept_state_hospitals_violence_total_patient_days`;
CREATE TABLE `dept_state_hospitals_violence_total_patient_days` (
  `hospital` varchar(16) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `legal_class` varchar(6) DEFAULT NULL,
  `total_patient_days` varchar(6) DEFAULT NULL
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
-- Table structure for table `dhcs_covid_19_reported_bh_facilities`
--

DROP TABLE IF EXISTS `dhcs_covid_19_reported_bh_facilities`;
CREATE TABLE `dhcs_covid_19_reported_bh_facilities` (
  `date` varchar(9) DEFAULT NULL,
  `facility_type` varchar(41) DEFAULT NULL,
  `facility_name` varchar(105) DEFAULT NULL,
  `license_number` varchar(11) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `staff_confirmed_covid_19_cumulative` varchar(4) DEFAULT NULL,
  `residents_clients_confirmed_covid_19_cumulative` varchar(4) DEFAULT NULL,
  `staff_covid_related_deaths_cumulative` varchar(1) DEFAULT NULL,
  `residents_clients_covid_related_deaths_cumulative` varchar(2) DEFAULT NULL,
  `annotaion_code` varchar(1) DEFAULT NULL,
  `annotation_code_description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dhcs_licensed_mental_health_rehabilitation_centers_mhrc_f3e73733`
--

DROP TABLE IF EXISTS `dhcs_licensed_mental_health_rehabilitation_centers_mhrc_f3e73733`;
CREATE TABLE `dhcs_licensed_mental_health_rehabilitation_centers_mhrc_f3e73733` (
  `county_code` varchar(6) DEFAULT NULL,
  `record_id` varchar(11) DEFAULT NULL,
  `legal_name` varchar(94) DEFAULT NULL,
  `facility_name` varchar(61) DEFAULT NULL,
  `physical_address` varchar(41) DEFAULT NULL,
  `physical_address_2` varchar(9) DEFAULT NULL,
  `mailing_address` varchar(41) DEFAULT NULL,
  `mailing_address_2` varchar(9) DEFAULT NULL,
  `physical_city` varchar(15) DEFAULT NULL,
  `mailing_city` varchar(15) DEFAULT NULL,
  `physical_state` varchar(2) DEFAULT NULL,
  `mailing_state` varchar(2) DEFAULT NULL,
  `physical_zip` varchar(5) DEFAULT NULL,
  `mailing_zip` varchar(5) DEFAULT NULL,
  `facility_phone` varchar(37) DEFAULT NULL,
  `type_of_application` varchar(8) DEFAULT NULL,
  `service_type` varchar(4) DEFAULT NULL,
  `client_patient_capacity` varchar(3) DEFAULT NULL,
  `expiration_date` varchar(10) DEFAULT NULL,
  `target_population` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `directory_of_service_providers`
--

DROP TABLE IF EXISTS `directory_of_service_providers`;
CREATE TABLE `directory_of_service_providers` (
  `county` varchar(22) DEFAULT NULL,
  `provider` varchar(115) DEFAULT NULL,
  `address` varchar(46) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(27) DEFAULT NULL,
  `website` varchar(84) DEFAULT NULL,
  `category` varchar(18) DEFAULT NULL,
  `type` varchar(56) DEFAULT NULL,
  `services` varchar(242) DEFAULT NULL,
  `latitude` varchar(18) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `location` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `disaster_healthcare_volunteers_top_10_medical_occupations_data`
--

DROP TABLE IF EXISTS `disaster_healthcare_volunteers_top_10_medical_occupations_data`;
CREATE TABLE `disaster_healthcare_volunteers_top_10_medical_occupations_data` (
  `year` varchar(4) DEFAULT NULL,
  `quarter` varchar(2) DEFAULT NULL,
  `rank_name` varchar(2) DEFAULT NULL,
  `occupation` varchar(32) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `disaster_healthcare_volunteers_volunteers_by_organization`
--

DROP TABLE IF EXISTS `disaster_healthcare_volunteers_volunteers_by_organization`;
CREATE TABLE `disaster_healthcare_volunteers_volunteers_by_organization` (
  `year` varchar(4) DEFAULT NULL,
  `quarter` varchar(2) DEFAULT NULL,
  `organization` varchar(52) DEFAULT NULL,
  `total_responders` varchar(5) DEFAULT NULL,
  `location` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `disproportionate_share_hospital_dsh_eligibility_for_sta_5db0344b`
--

DROP TABLE IF EXISTS `disproportionate_share_hospital_dsh_eligibility_for_sta_5db0344b`;
CREATE TABLE `disproportionate_share_hospital_dsh_eligibility_for_sta_5db0344b` (
  `hcai_id` varchar(9) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `hospital_name` varchar(79) DEFAULT NULL,
  `hospital_type` varchar(8) DEFAULT NULL,
  `medicaid_utilization_rates_mur` varchar(4) DEFAULT NULL,
  `low_income_percentages_liur` varchar(7) DEFAULT NULL,
  `mur_cutoff` varchar(4) DEFAULT NULL,
  `mean_of_mur` varchar(7) DEFAULT NULL,
  `standard_deviation_of_mur` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `dual_eligibility_in_the_california_medicare_population_by_county`
--

DROP TABLE IF EXISTS `dual_eligibility_in_the_california_medicare_population_by_county`;
CREATE TABLE `dual_eligibility_in_the_california_medicare_population_by_county` (
  `county` varchar(15) DEFAULT NULL,
  `number_of_dual_eligible_beneficiaries` varchar(11) DEFAULT NULL,
  `percentage_of_dual_eligible_beneficiaries` varchar(5) DEFAULT NULL,
  `medicare_only_beneficiaries` varchar(11) DEFAULT NULL,
  `percentage_of_medicare_only_beneficiaries` varchar(5) DEFAULT NULL,
  `total_medicare_beneficiaries` varchar(11) DEFAULT NULL
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
-- Table structure for table `ehr_incentive_program_payments_hospitals`
--

DROP TABLE IF EXISTS `ehr_incentive_program_payments_hospitals`;
CREATE TABLE `ehr_incentive_program_payments_hospitals` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(3) DEFAULT NULL,
  `provider_name` varchar(65) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `ccn` varchar(5) DEFAULT NULL,
  `business_street_address` varchar(63) DEFAULT NULL,
  `business_city` varchar(16) DEFAULT NULL,
  `business_county` varchar(15) DEFAULT NULL,
  `business_zip_code` varchar(5) DEFAULT NULL,
  `business_state_territory` varchar(10) DEFAULT NULL,
  `payment_year_number` varchar(1) DEFAULT NULL,
  `program_type` varchar(17) DEFAULT NULL,
  `medicaid_ep_hospital_type` varchar(20) DEFAULT NULL,
  `total_payments` varchar(11) DEFAULT NULL,
  `last_payment_criteria` varchar(3) DEFAULT NULL,
  `recent_disbursement_amount` varchar(11) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `last_program_year` varchar(4) DEFAULT NULL,
  `last_payment_year` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ehr_incentive_program_payments_providers`
--

DROP TABLE IF EXISTS `ehr_incentive_program_payments_providers`;
CREATE TABLE `ehr_incentive_program_payments_providers` (
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(5) DEFAULT NULL,
  `provider_n` varchar(37) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `medicaid_e` varchar(58) DEFAULT NULL,
  `specialty` varchar(38) DEFAULT NULL,
  `business_s` varchar(97) DEFAULT NULL,
  `business_c` varchar(22) DEFAULT NULL,
  `business_1` varchar(15) DEFAULT NULL,
  `business_z` varchar(5) DEFAULT NULL,
  `business_2` varchar(10) DEFAULT NULL,
  `program_ye` varchar(4) DEFAULT NULL,
  `payment_ye` varchar(4) DEFAULT NULL,
  `payment_1` varchar(1) DEFAULT NULL,
  `payment_cr` varchar(3) DEFAULT NULL,
  `payee_name` varchar(52) DEFAULT NULL,
  `payee_npi` varchar(10) DEFAULT NULL,
  `total_paym` varchar(8) DEFAULT NULL,
  `total_rece` varchar(8) DEFAULT NULL,
  `latitude` varchar(13) DEFAULT NULL,
  `longitude` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `elective_percutaneous_coronary_interventions_pcis_witho_5276f61f`
--

DROP TABLE IF EXISTS `elective_percutaneous_coronary_interventions_pcis_witho_5276f61f`;
CREATE TABLE `elective_percutaneous_coronary_interventions_pcis_witho_5276f61f` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital` varchar(55) DEFAULT NULL,
  `hospital_id` varchar(9) DEFAULT NULL,
  `performance_measure` varchar(27) DEFAULT NULL,
  `statewide_all_pci_cases` varchar(6) DEFAULT NULL,
  `statewide_elective_pcis` varchar(6) DEFAULT NULL,
  `statewide_adverse_events` varchar(5) DEFAULT NULL,
  `statewide_observedadverse_events_rate_pct` varchar(4) DEFAULT NULL,
  `hospital_total_pci_cases` varchar(3) DEFAULT NULL,
  `hospital_all_elective_pci_cases` varchar(3) DEFAULT NULL,
  `hospital_elective_pci_cases` varchar(3) DEFAULT NULL,
  `hospital_primary_pci_cases` varchar(3) DEFAULT NULL,
  `hospital_adverse_events` varchar(2) DEFAULT NULL,
  `hospital_observedadverse_events_rate_pct` varchar(4) DEFAULT NULL,
  `hospital_expected_adverse_events_rate_pct` varchar(4) DEFAULT NULL,
  `hospital_risk_adjusted_adverse_events_rate_pct_raaer` varchar(4) DEFAULT NULL,
  `latitude` varchar(8) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `eligible_individuals_enrolled_in_medi_cal_managed_care__8160266e`
--

DROP TABLE IF EXISTS `eligible_individuals_enrolled_in_medi_cal_managed_care__8160266e`;
CREATE TABLE `eligible_individuals_enrolled_in_medi_cal_managed_care__8160266e` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county_organized_health_system_cohs_health_plan` varchar(38) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `eligible_individuals_enrolled_in_medicare_savings_programs_msp`
--

DROP TABLE IF EXISTS `eligible_individuals_enrolled_in_medicare_savings_programs_msp`;
CREATE TABLE `eligible_individuals_enrolled_in_medicare_savings_programs_msp` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `aid_code` varchar(2) DEFAULT NULL,
  `aid_code_description` varchar(37) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `eligible_individuals_selecting_covered_california`
--

DROP TABLE IF EXISTS `eligible_individuals_selecting_covered_california`;
CREATE TABLE `eligible_individuals_selecting_covered_california` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `number_of_eligible_individuals_who_plan_selected` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `eligible_individuals_under_age_21_enrolled_in_medi_cal_by_county`
--

DROP TABLE IF EXISTS `eligible_individuals_under_age_21_enrolled_in_medi_cal_by_county`;
CREATE TABLE `eligible_individuals_under_age_21_enrolled_in_medi_cal_by_county` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `emergency_department_encounters_for_alcohol`
--

DROP TABLE IF EXISTS `emergency_department_encounters_for_alcohol`;
CREATE TABLE `emergency_department_encounters_for_alcohol` (
  `year` varchar(4) DEFAULT NULL,
  `geography` varchar(9) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `visittype` varchar(12) DEFAULT NULL,
  `dem_category` varchar(5) DEFAULT NULL,
  `dem_cat_desc` varchar(30) DEFAULT NULL,
  `dxgroup` varchar(43) DEFAULT NULL,
  `count` varchar(8) DEFAULT NULL,
  `total` varchar(8) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `emergency_department_volume_and_capacity_2021`
--

DROP TABLE IF EXISTS `emergency_department_volume_and_capacity_2021`;
CREATE TABLE `emergency_department_volume_and_capacity_2021` (
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facilityname2` varchar(79) DEFAULT NULL,
  `countyname` varchar(15) DEFAULT NULL,
  `system_name` varchar(33) DEFAULT NULL,
  `licensed_bed_size` varchar(7) DEFAULT NULL,
  `hospitalownership` varchar(14) DEFAULT NULL,
  `urbanruraldesi` varchar(8) DEFAULT NULL,
  `teachingdesignation` varchar(12) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `tot_ed_nmbvsts` varchar(6) DEFAULT NULL,
  `edstations` varchar(3) DEFAULT NULL,
  `eddxcount` varchar(6) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `primarycareshortagearea` varchar(3) DEFAULT NULL,
  `mentalhealthshortagearea` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `enforcement_actions_trend`
--

DROP TABLE IF EXISTS `enforcement_actions_trend`;
CREATE TABLE `enforcement_actions_trend` (
  `link` varchar(81) DEFAULT NULL,
  `organizationtype` varchar(13) DEFAULT NULL,
  `organizationname` varchar(78) DEFAULT NULL,
  `enforcementaction` varchar(30) DEFAULT NULL,
  `actiondate` varchar(10) DEFAULT NULL,
  `penaltyamount` varchar(13) DEFAULT NULL,
  `relatedparty` varchar(56) DEFAULT NULL,
  `violation1` varchar(20) DEFAULT NULL,
  `violation2` varchar(24) DEFAULT NULL,
  `violation3` varchar(22) DEFAULT NULL,
  `violation4` varchar(22) DEFAULT NULL
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
-- Table structure for table `ethnicity_of_applicants_for_insurance_affordability_programs`
--

DROP TABLE IF EXISTS `ethnicity_of_applicants_for_insurance_affordability_programs`;
CREATE TABLE `ethnicity_of_applicants_for_insurance_affordability_programs` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `ethnicity` varchar(50) DEFAULT NULL,
  `number_of_applicants` varchar(9) DEFAULT NULL,
  `annotation_code` varchar(3) DEFAULT NULL,
  `count_annotation_desc` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ethnicity_of_individuals_selecting_covered_california_q_1c27be73`
--

DROP TABLE IF EXISTS `ethnicity_of_individuals_selecting_covered_california_q_1c27be73`;
CREATE TABLE `ethnicity_of_individuals_selecting_covered_california_q_1c27be73` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `ethnicity` varchar(43) DEFAULT NULL,
  `number_of_eligible_individuals_who_plan_selected` varchar(7) DEFAULT NULL
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
-- Table structure for table `family_pact_adults_and_adolescents_receiving_an_iuc`
--

DROP TABLE IF EXISTS `family_pact_adults_and_adolescents_receiving_an_iuc`;
CREATE TABLE `family_pact_adults_and_adolescents_receiving_an_iuc` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `percentage_of_adult_female_clients_receiving_an_iuc` varchar(6) DEFAULT NULL,
  `percentage_of_adolescent_female_clients_receiving_an_iuc` varchar(6) DEFAULT NULL,
  `total_percentage_receiving_an_iuc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fy_2007_08`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fy_2007_08`;
CREATE TABLE `family_pact_client_demographics_by_county_fy_2007_08` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(16) DEFAULT NULL,
  `clients_served` varchar(7) DEFAULT NULL,
  `clients_served_pct` varchar(7) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescent_clients_served` varchar(6) DEFAULT NULL,
  `adolescent_clients_served_pct` varchar(3) DEFAULT NULL,
  `male_clients_served` varchar(6) DEFAULT NULL,
  `male_clients_served_pct` varchar(3) DEFAULT NULL,
  `asian_pi_filipino_clients_served` varchar(6) DEFAULT NULL,
  `asian_pi_filipino_clients_served_pct` varchar(3) DEFAULT NULL,
  `black_clients_served` varchar(6) DEFAULT NULL,
  `black_clients_served_pct` varchar(3) DEFAULT NULL,
  `latino_clients_served` varchar(7) DEFAULT NULL,
  `latino_clients_served_pct` varchar(3) DEFAULT NULL,
  `white_clients_served` varchar(6) DEFAULT NULL,
  `white_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_including_native_american_clients_served` varchar(5) DEFAULT NULL,
  `other_including_native_american_clients_served_pct` varchar(3) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `english_speaking_clients_served` varchar(6) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_language` varchar(5) DEFAULT NULL,
  `other_language_pct` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fy_2014_15_to_36052cd0`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fy_2014_15_to_36052cd0`;
CREATE TABLE `family_pact_client_demographics_by_county_fy_2014_15_to_36052cd0` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(15) DEFAULT NULL,
  `clients_served` varchar(7) DEFAULT NULL,
  `clients_served_pct` varchar(7) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescents_clients_served` varchar(6) DEFAULT NULL,
  `adolescents_clients_served_pct` varchar(6) DEFAULT NULL,
  `male_clients_served` varchar(6) DEFAULT NULL,
  `male_clients_served_pct` varchar(6) DEFAULT NULL,
  `latino_clients_served` varchar(6) DEFAULT NULL,
  `latino_clients_served_pct` varchar(6) DEFAULT NULL,
  `white_clients_served` varchar(6) DEFAULT NULL,
  `white_clients_served_pct` varchar(7) DEFAULT NULL,
  `african_american_clients_served` varchar(5) DEFAULT NULL,
  `african_american_black_clients_served_pct` varchar(7) DEFAULT NULL,
  `asian_pacific_islander_clients_served` varchar(5) DEFAULT NULL,
  `asian_pacific_islander_clients_served_pct` varchar(7) DEFAULT NULL,
  `other_including_native_american_clients_served` varchar(5) DEFAULT NULL,
  `other_including_native_american_clients_served_pct` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(7) DEFAULT NULL,
  `english_speaking_clients_served` varchar(6) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(6) DEFAULT NULL,
  `other_language` varchar(5) DEFAULT NULL,
  `other_language_pct` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fys_2003_04_to_2004_05`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fys_2003_04_to_2004_05`;
CREATE TABLE `family_pact_client_demographics_by_county_fys_2003_04_to_2004_05` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(16) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescent_clients_served` varchar(6) DEFAULT NULL,
  `adolescent_clients_served_pct` varchar(3) DEFAULT NULL,
  `male_clients_served` varchar(6) DEFAULT NULL,
  `male_clients_served_pct` varchar(3) DEFAULT NULL,
  `latino_clients_served` varchar(7) DEFAULT NULL,
  `latino_clients_served_pct` varchar(3) DEFAULT NULL,
  `white_clients_served` varchar(6) DEFAULT NULL,
  `white_clients_served_pct` varchar(3) DEFAULT NULL,
  `african_american_clients_served` varchar(5) DEFAULT NULL,
  `african_american_clients_served_pct` varchar(3) DEFAULT NULL,
  `asian_filipino_and_pacific_islander_clients_served` varchar(6) DEFAULT NULL,
  `asian_filipino_and_pacific_islander_clients_served_pct` varchar(3) DEFAULT NULL,
  `native_american_and_other_clients_served` varchar(5) DEFAULT NULL,
  `native_american_and_other_clients_served_pct` varchar(3) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `english_speaking_clients_served` varchar(6) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_language` varchar(5) DEFAULT NULL,
  `other_language_pct` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fys_2005_06_to_2006_07`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fys_2005_06_to_2006_07`;
CREATE TABLE `family_pact_client_demographics_by_county_fys_2005_06_to_2006_07` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(16) DEFAULT NULL,
  `clients_served` varchar(7) DEFAULT NULL,
  `clients_served_pct` varchar(7) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescent_clients_served` varchar(6) DEFAULT NULL,
  `adolescent_clients_served_pct` varchar(3) DEFAULT NULL,
  `male_clients_served` varchar(6) DEFAULT NULL,
  `male_clients_served_pct` varchar(3) DEFAULT NULL,
  `latino_clients_served` varchar(7) DEFAULT NULL,
  `latino_clients_served_pct` varchar(3) DEFAULT NULL,
  `white_clients_served` varchar(6) DEFAULT NULL,
  `white_clients_served_pct` varchar(3) DEFAULT NULL,
  `african_american_clients_served` varchar(5) DEFAULT NULL,
  `african_american_clients_served_pct` varchar(3) DEFAULT NULL,
  `asian_fillipino_and_pacific_islander_clients_served` varchar(6) DEFAULT NULL,
  `asian_fillipino_and_pacific_islander_clients_served_pct` varchar(3) DEFAULT NULL,
  `native_american_and_other_clients_served` varchar(5) DEFAULT NULL,
  `native_american_and_other_clients_served_pct` varchar(3) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `english_speaking_clients_served` varchar(6) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_language` varchar(5) DEFAULT NULL,
  `other_language_pct` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fys_2008_09_to_2013_14`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fys_2008_09_to_2013_14`;
CREATE TABLE `family_pact_client_demographics_by_county_fys_2008_09_to_2013_14` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(15) DEFAULT NULL,
  `clients_served` varchar(7) DEFAULT NULL,
  `clients_served_pct` varchar(7) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescent_clients_served` varchar(6) DEFAULT NULL,
  `adolescent_clients_served_pct` varchar(3) DEFAULT NULL,
  `male_clients_served` varchar(6) DEFAULT NULL,
  `male_clients_served_pct` varchar(3) DEFAULT NULL,
  `latino_clients_served` varchar(7) DEFAULT NULL,
  `latino_clients_served_pct` varchar(3) DEFAULT NULL,
  `white_clients_served` varchar(6) DEFAULT NULL,
  `white_clients_served_pct` varchar(3) DEFAULT NULL,
  `african_american_clients_served` varchar(6) DEFAULT NULL,
  `african_american_clients_served_pct` varchar(3) DEFAULT NULL,
  `asian_pacific_islander_clients_served` varchar(6) DEFAULT NULL,
  `asian_pacific_islander_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_including_native_american_clients_served` varchar(5) DEFAULT NULL,
  `other_including_native_american_clients_served_pct` varchar(3) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `english_speaking_clients_served` varchar(7) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(3) DEFAULT NULL,
  `other_language` varchar(5) DEFAULT NULL,
  `other_language_pct` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_client_demographics_by_county_fys_2014_15_t_cfd94203`
--

DROP TABLE IF EXISTS `family_pact_client_demographics_by_county_fys_2014_15_t_cfd94203`;
CREATE TABLE `family_pact_client_demographics_by_county_fys_2014_15_t_cfd94203` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `client_county` varchar(15) DEFAULT NULL,
  `clients_served` varchar(9) DEFAULT NULL,
  `clients_served_pct` varchar(6) DEFAULT NULL,
  `average_age_of_clients_served` varchar(4) DEFAULT NULL,
  `adolescents_clients_served` varchar(7) DEFAULT NULL,
  `adolescents_clients_served_pct` varchar(6) DEFAULT NULL,
  `male_clients_served` varchar(7) DEFAULT NULL,
  `male_clients_served_pct` varchar(6) DEFAULT NULL,
  `latino_clients_served` varchar(7) DEFAULT NULL,
  `latino_clients_served_pct` varchar(6) DEFAULT NULL,
  `white_clients_served` varchar(7) DEFAULT NULL,
  `white_clients_served_pct` varchar(7) DEFAULT NULL,
  `african_american_clients_served` varchar(6) DEFAULT NULL,
  `african_american_black_clients_served_pct` varchar(7) DEFAULT NULL,
  `asian_pacific_islander_clients_served` varchar(6) DEFAULT NULL,
  `asian_pacific_islander_clients_served_pct` varchar(7) DEFAULT NULL,
  `other_including_native_american_clients_served` varchar(6) DEFAULT NULL,
  `other_including_native_american_clients_served_pct` varchar(6) DEFAULT NULL,
  `spanish_speaking_clients_served` varchar(7) DEFAULT NULL,
  `spanish_speaking_clients_served_pct` varchar(7) DEFAULT NULL,
  `english_speaking_clients_served` varchar(7) DEFAULT NULL,
  `english_speaking_clients_served_pct` varchar(6) DEFAULT NULL,
  `other_language` varchar(6) DEFAULT NULL,
  `other_language_pct` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_clients_served_by_service_type_combination__61494e38`
--

DROP TABLE IF EXISTS `family_pact_clients_served_by_service_type_combination__61494e38`;
CREATE TABLE `family_pact_clients_served_by_service_type_combination__61494e38` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `service_type` varchar(54) DEFAULT NULL,
  `number_of_clients` varchar(9) DEFAULT NULL,
  `percentage_of_each_service_type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_female_clients_by_method_tier_and_race_ethnicity`
--

DROP TABLE IF EXISTS `family_pact_female_clients_by_method_tier_and_race_ethnicity`;
CREATE TABLE `family_pact_female_clients_by_method_tier_and_race_ethnicity` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `method_dispensed_by_tier` varchar(46) DEFAULT NULL,
  `total_percentage_dispensed` varchar(3) DEFAULT NULL,
  `latina` varchar(3) DEFAULT NULL,
  `white` varchar(3) DEFAULT NULL,
  `african_american` varchar(3) DEFAULT NULL,
  `asian_pacific_islander` varchar(3) DEFAULT NULL,
  `other` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_providers_clients_and_reimbursement_by_coun_1a4f1c78`
--

DROP TABLE IF EXISTS `family_pact_providers_clients_and_reimbursement_by_coun_1a4f1c78`;
CREATE TABLE `family_pact_providers_clients_and_reimbursement_by_coun_1a4f1c78` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `provider_county` varchar(15) DEFAULT NULL,
  `enrolled_private_sector_providers` varchar(5) DEFAULT NULL,
  `enrolled_public_sector_providers` varchar(5) DEFAULT NULL,
  `total` varchar(5) DEFAULT NULL,
  `percentage` varchar(7) DEFAULT NULL,
  `participating_pharmacies` varchar(5) DEFAULT NULL,
  `clients_served` varchar(10) DEFAULT NULL,
  `percentage_of_clients_served` varchar(10) DEFAULT NULL,
  `reimbursement_amount` varchar(16) DEFAULT NULL,
  `reimbursement_percentage` varchar(7) DEFAULT NULL,
  `average_reimbursement_per_client` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_providers_clients_and_reimbursement_by_coun_b4638429`
--

DROP TABLE IF EXISTS `family_pact_providers_clients_and_reimbursement_by_coun_b4638429`;
CREATE TABLE `family_pact_providers_clients_and_reimbursement_by_coun_b4638429` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `provider_county` varchar(15) DEFAULT NULL,
  `enrolled_private_sector_providers` varchar(4) DEFAULT NULL,
  `enrolled_public_sector_providers` varchar(3) DEFAULT NULL,
  `total` varchar(4) DEFAULT NULL,
  `percentage` varchar(7) DEFAULT NULL,
  `participating_pharmacies` varchar(4) DEFAULT NULL,
  `clients_served` varchar(7) DEFAULT NULL,
  `percentage_of_clients_served` varchar(7) DEFAULT NULL,
  `reimbursement_amount` varchar(13) DEFAULT NULL,
  `reimbursement_percentage` varchar(7) DEFAULT NULL,
  `average_reimbursement_per_client_served` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_providers_profile_cy_2019`
--

DROP TABLE IF EXISTS `family_pact_providers_profile_cy_2019`;
CREATE TABLE `family_pact_providers_profile_cy_2019` (
  `provider_number` varchar(10) DEFAULT NULL,
  `npi_provider_number` varchar(10) DEFAULT NULL,
  `owner_number` varchar(1) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_business_legal_name` varchar(28) DEFAULT NULL,
  `enrollment_status_effective_date` varchar(9) DEFAULT NULL,
  `provider_type_code` varchar(37) DEFAULT NULL,
  `provider_type_code_desc` varchar(43) DEFAULT NULL,
  `provider_license_number` varchar(9) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `provider_specialty_code_desc` varchar(55) DEFAULT NULL,
  `out_of_state_ind` varchar(1) DEFAULT NULL,
  `out_of_state_ind_desc` varchar(17) DEFAULT NULL,
  `provider_address_county_code` varchar(2) DEFAULT NULL,
  `provider_address_county_code_description` varchar(15) DEFAULT NULL,
  `attention_line` varchar(24) DEFAULT NULL,
  `provider_address_line1` varchar(24) DEFAULT NULL,
  `provider_address_line2` varchar(24) DEFAULT NULL,
  `provider_address_city` varchar(17) DEFAULT NULL,
  `provider_address_state` varchar(2) DEFAULT NULL,
  `provider_address_zip` varchar(5) DEFAULT NULL,
  `provider_address_latitude` varchar(9) DEFAULT NULL,
  `provider_address_longitude` varchar(11) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `tract_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_providers_profile_cy_2021_2022`
--

DROP TABLE IF EXISTS `family_pact_providers_profile_cy_2021_2022`;
CREATE TABLE `family_pact_providers_profile_cy_2021_2022` (
  `provider_number` varchar(10) DEFAULT NULL,
  `npi_provider_number` varchar(10) DEFAULT NULL,
  `owner_number` varchar(1) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_business_legal_name` varchar(28) DEFAULT NULL,
  `enrollment_status_effective_date` varchar(9) DEFAULT NULL,
  `provider_type_code` varchar(3) DEFAULT NULL,
  `provider_type_code_desc` varchar(54) DEFAULT NULL,
  `provider_license_number` varchar(9) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `provider_specialty_code_desc` varchar(42) DEFAULT NULL,
  `out_of_state_ind` varchar(1) DEFAULT NULL,
  `out_of_state_ind_desc` varchar(17) DEFAULT NULL,
  `provider_address_county_code` varchar(2) DEFAULT NULL,
  `provider_address_county_desc` varchar(15) DEFAULT NULL,
  `attention_line` varchar(24) DEFAULT NULL,
  `provider_address_line1` varchar(24) DEFAULT NULL,
  `provider_address_line2` varchar(24) DEFAULT NULL,
  `provider_address_city` varchar(17) DEFAULT NULL,
  `provider_address_state` varchar(2) DEFAULT NULL,
  `provider_address_zip` varchar(9) DEFAULT NULL,
  `provider_address_latitude` varchar(9) DEFAULT NULL,
  `provider_address_longitude` varchar(11) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `tract_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_providers_profile_cys_2020_2021`
--

DROP TABLE IF EXISTS `family_pact_providers_profile_cys_2020_2021`;
CREATE TABLE `family_pact_providers_profile_cys_2020_2021` (
  `provider_number` varchar(10) DEFAULT NULL,
  `npi_provider_number` varchar(10) DEFAULT NULL,
  `owner_number` varchar(1) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_business_legal_name` varchar(28) DEFAULT NULL,
  `enrollment_status_effective_date` varchar(9) DEFAULT NULL,
  `provider_type_code` varchar(3) DEFAULT NULL,
  `provider_type_code_desc` varchar(54) DEFAULT NULL,
  `provider_license_number` varchar(9) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `provider_specialty_code_desc` varchar(51) DEFAULT NULL,
  `out_of_state_ind` varchar(1) DEFAULT NULL,
  `out_of_state_ind_desc` varchar(17) DEFAULT NULL,
  `provider_address_county_code` varchar(2) DEFAULT NULL,
  `provider_address_county_desc` varchar(15) DEFAULT NULL,
  `attention_line` varchar(24) DEFAULT NULL,
  `provider_address_line1` varchar(24) DEFAULT NULL,
  `provider_address_line2` varchar(24) DEFAULT NULL,
  `provider_address_city` varchar(17) DEFAULT NULL,
  `provider_address_state` varchar(2) DEFAULT NULL,
  `provider_address_zip` varchar(10) DEFAULT NULL,
  `provider_phone_number` varchar(14) DEFAULT NULL,
  `provider_address_latitude` varchar(9) DEFAULT NULL,
  `provider_address_longitude` varchar(11) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `tract_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_reimbursement_by_service_type`
--

DROP TABLE IF EXISTS `family_pact_reimbursement_by_service_type`;
CREATE TABLE `family_pact_reimbursement_by_service_type` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `categories_of_service_by_provider_type` varchar(25) DEFAULT NULL,
  `number_of_clients_served` varchar(9) DEFAULT NULL,
  `reimbursement_amount` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `family_pact_sexually_transmitted_infection_test_volume__1e3420c9`
--

DROP TABLE IF EXISTS `family_pact_sexually_transmitted_infection_test_volume__1e3420c9`;
CREATE TABLE `family_pact_sexually_transmitted_infection_test_volume__1e3420c9` (
  `fiscal_years_fy` varchar(4) DEFAULT NULL,
  `sti_tests_male` varchar(7) DEFAULT NULL,
  `sti_tests_female` varchar(9) DEFAULT NULL,
  `total_sti_tests` varchar(9) DEFAULT NULL
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
-- Table structure for table `female_family_pact_clients_by_age`
--

DROP TABLE IF EXISTS `female_family_pact_clients_by_age`;
CREATE TABLE `female_family_pact_clients_by_age` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `female_clients_19_years_old_or_younger` varchar(7) DEFAULT NULL,
  `female_clients_20_years_old_or_older` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ffs_provider_specialty_reference_table`
--

DROP TABLE IF EXISTS `ffs_provider_specialty_reference_table`;
CREATE TABLE `ffs_provider_specialty_reference_table` (
  `objectid` varchar(2) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `description` varchar(76) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ffs_provider_type_reference_table`
--

DROP TABLE IF EXISTS `ffs_provider_type_reference_table`;
CREATE TABLE `ffs_provider_type_reference_table` (
  `objectid` varchar(2) DEFAULT NULL,
  `provider_type_code` varchar(3) DEFAULT NULL,
  `description` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `final_deaths_by_year_by_zip_code_1989_1998`
--

DROP TABLE IF EXISTS `final_deaths_by_year_by_zip_code_1989_1998`;
CREATE TABLE `final_deaths_by_year_by_zip_code_1989_1998` (
  `year` varchar(4) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(5) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `final_deaths_by_year_by_zip_code_1999_2008`
--

DROP TABLE IF EXISTS `final_deaths_by_year_by_zip_code_1999_2008`;
CREATE TABLE `final_deaths_by_year_by_zip_code_1999_2008` (
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
-- Table structure for table `final_deaths_by_year_by_zip_code_2009_2018`
--

DROP TABLE IF EXISTS `final_deaths_by_year_by_zip_code_2009_2018`;
CREATE TABLE `final_deaths_by_year_by_zip_code_2009_2018` (
  `year` varchar(4) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `final_deaths_by_year_by_zip_code_2019_2022`
--

DROP TABLE IF EXISTS `final_deaths_by_year_by_zip_code_2019_2022`;
CREATE TABLE `final_deaths_by_year_by_zip_code_2019_2022` (
  `year` varchar(4) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `geography_type` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(17) DEFAULT NULL,
  `cause` varchar(3) DEFAULT NULL,
  `cause_desc` varchar(53) DEFAULT NULL,
  `icd_revision` varchar(6) DEFAULT NULL,
  `count` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_desc` varchar(38) DEFAULT NULL,
  `data_revision_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `food_stamp_program_report`
--

DROP TABLE IF EXISTS `food_stamp_program_report`;
CREATE TABLE `food_stamp_program_report` (
  `date` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `county_code` varchar(2) DEFAULT NULL,
  `sfy` varchar(7) DEFAULT NULL,
  `ffy` varchar(4) DEFAULT NULL,
  `consortium` varchar(6) DEFAULT NULL,
  `cell_1` varchar(7) DEFAULT NULL,
  `cell_2` varchar(5) DEFAULT NULL,
  `cell_3` varchar(4) DEFAULT NULL,
  `cell_4` varchar(9) DEFAULT NULL,
  `cell_5` varchar(6) DEFAULT NULL,
  `cell_6` varchar(6) DEFAULT NULL,
  `cell_15` varchar(9) DEFAULT NULL,
  `cell_16` varchar(6) DEFAULT NULL,
  `cell_17` varchar(6) DEFAULT NULL,
  `cell_7` varchar(7) DEFAULT NULL,
  `cell_8` varchar(9) DEFAULT NULL,
  `cell_18` varchar(9) DEFAULT NULL,
  `cell_9` varchar(6) DEFAULT NULL,
  `cell_10` varchar(5) DEFAULT NULL,
  `cell_11` varchar(6) DEFAULT NULL,
  `cell_12` varchar(6) DEFAULT NULL,
  `cell_19` varchar(6) DEFAULT NULL,
  `cell_20` varchar(6) DEFAULT NULL,
  `cell_13` varchar(5) DEFAULT NULL,
  `cell_14` varchar(6) DEFAULT NULL,
  `cell_21` varchar(6) DEFAULT NULL,
  `cell_22` varchar(6) DEFAULT NULL,
  `cell_23` varchar(7) DEFAULT NULL,
  `cell_24` varchar(5) DEFAULT NULL,
  `cell_25` varchar(9) DEFAULT NULL,
  `cell_26` varchar(9) DEFAULT NULL,
  `cell_27` varchar(5) DEFAULT NULL,
  `cell_28` varchar(12) DEFAULT NULL,
  `cell_29` varchar(10) DEFAULT NULL,
  `cell_30` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `former_foster_youth_enrolled_in_medi_cal_by_county_and_by_age`
--

DROP TABLE IF EXISTS `former_foster_youth_enrolled_in_medi_cal_by_county_and_by_age`;
CREATE TABLE `former_foster_youth_enrolled_in_medi_cal_by_county_and_by_age` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `record_count` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `former_foster_youth_enrolled_in_medi_cal_statewide`
--

DROP TABLE IF EXISTS `former_foster_youth_enrolled_in_medi_cal_statewide`;
CREATE TABLE `former_foster_youth_enrolled_in_medi_cal_statewide` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `total` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `four_quarter_financial_summary_hospital_utilization_cha_8ad35212`
--

DROP TABLE IF EXISTS `four_quarter_financial_summary_hospital_utilization_cha_8ad35212`;
CREATE TABLE `four_quarter_financial_summary_hospital_utilization_cha_8ad35212` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `type_of_ownership` varchar(11) DEFAULT NULL,
  `hospital_type` varchar(29) DEFAULT NULL,
  `teaching` varchar(8) DEFAULT NULL,
  `small_rural` varchar(11) DEFAULT NULL,
  `average_licensed_beds` varchar(4) DEFAULT NULL,
  `average_available_beds` varchar(4) DEFAULT NULL,
  `average_staffed_beds` varchar(4) DEFAULT NULL,
  `bad_debts` varchar(13) DEFAULT NULL,
  `charity_care` varchar(13) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `four_quarter_summary_hospital_utilization_operating_rev_8d520f6e`
--

DROP TABLE IF EXISTS `four_quarter_summary_hospital_utilization_operating_rev_8d520f6e`;
CREATE TABLE `four_quarter_summary_hospital_utilization_operating_rev_8d520f6e` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `type_of_ownership` varchar(11) DEFAULT NULL,
  `hospital_type` varchar(29) DEFAULT NULL,
  `teaching` varchar(8) DEFAULT NULL,
  `small_rural` varchar(5) DEFAULT NULL,
  `licensed_beds` varchar(4) DEFAULT NULL,
  `available_beds` varchar(4) DEFAULT NULL,
  `staffed_beds` varchar(4) DEFAULT NULL,
  `pretax_net_income` varchar(10) DEFAULT NULL,
  `other_operating_rev` varchar(13) DEFAULT NULL,
  `total_operating_rev` varchar(14) DEFAULT NULL,
  `total_margin` varchar(5) DEFAULT NULL,
  `operating_margin` varchar(6) DEFAULT NULL,
  `location` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `four_quarter_summary_hospital_utilization_patient_days__cc5d9c36`
--

DROP TABLE IF EXISTS `four_quarter_summary_hospital_utilization_patient_days__cc5d9c36`;
CREATE TABLE `four_quarter_summary_hospital_utilization_patient_days__cc5d9c36` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `type_of_ownership` varchar(11) DEFAULT NULL,
  `hospital_type` varchar(29) DEFAULT NULL,
  `teaching` varchar(8) DEFAULT NULL,
  `small_rural` varchar(5) DEFAULT NULL,
  `licensed_beds` varchar(6) DEFAULT NULL,
  `available_beds` varchar(6) DEFAULT NULL,
  `staffed_beds` varchar(17) DEFAULT NULL,
  `patient_days_by_payer` varchar(10) DEFAULT NULL,
  `total_patient_days` varchar(6) DEFAULT NULL,
  `total_patient_days_percent` varchar(5) DEFAULT NULL,
  `payer` varchar(30) DEFAULT NULL,
  `ltc_patient_days` varchar(6) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `fourth_quarter_summary_hospital_utilization_discharges__8c1addb8`
--

DROP TABLE IF EXISTS `fourth_quarter_summary_hospital_utilization_discharges__8c1addb8`;
CREATE TABLE `fourth_quarter_summary_hospital_utilization_discharges__8c1addb8` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `type_of_ownership` varchar(11) DEFAULT NULL,
  `hospital_type` varchar(29) DEFAULT NULL,
  `teaching` varchar(8) DEFAULT NULL,
  `small_rural` varchar(5) DEFAULT NULL,
  `licensed_beds` varchar(4) DEFAULT NULL,
  `available_beds` varchar(4) DEFAULT NULL,
  `staffed_beds` varchar(4) DEFAULT NULL,
  `discharge_by_payer` varchar(5) DEFAULT NULL,
  `total_discharges` varchar(5) DEFAULT NULL,
  `discharge_payer_percent` varchar(5) DEFAULT NULL,
  `payer` varchar(31) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `fourth_quarter_summary_hospital_utilization_net_patient_faf45c5f`
--

DROP TABLE IF EXISTS `fourth_quarter_summary_hospital_utilization_net_patient_faf45c5f`;
CREATE TABLE `fourth_quarter_summary_hospital_utilization_net_patient_faf45c5f` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `type_of_ownership` varchar(11) DEFAULT NULL,
  `hospital_type` varchar(29) DEFAULT NULL,
  `teaching` varchar(8) DEFAULT NULL,
  `small_rural` varchar(5) DEFAULT NULL,
  `licensed_beds` varchar(4) DEFAULT NULL,
  `available_beds` varchar(4) DEFAULT NULL,
  `staffed_beds` varchar(4) DEFAULT NULL,
  `total_by_payer` varchar(14) DEFAULT NULL,
  `total_net_patient_rev` varchar(14) DEFAULT NULL,
  `net_patient_rev_payer_percent` varchar(6) DEFAULT NULL,
  `payer` varchar(30) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `friendship_line_california_calls_in_response_to_covid_19`
--

DROP TABLE IF EXISTS `friendship_line_california_calls_in_response_to_covid_19`;
CREATE TABLE `friendship_line_california_calls_in_response_to_covid_19` (
  `county` varchar(15) DEFAULT NULL,
  `date_start` varchar(9) DEFAULT NULL,
  `date_end` varchar(9) DEFAULT NULL,
  `number_received` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `fruit_and_vegetable_consumption_in_california_residents_d7a06fda`
--

DROP TABLE IF EXISTS `fruit_and_vegetable_consumption_in_california_residents_d7a06fda`;
CREATE TABLE `fruit_and_vegetable_consumption_in_california_residents_d7a06fda` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(18) DEFAULT NULL,
  `category` varchar(22) DEFAULT NULL,
  `type` varchar(35) DEFAULT NULL,
  `five_or_more_servings_of_fruits_and_vegetables_pct` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `geography_crosswalk`
--

DROP TABLE IF EXISTS `geography_crosswalk`;
CREATE TABLE `geography_crosswalk` (
  `census_tract` varchar(11) DEFAULT NULL,
  `aland` varchar(11) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `mssa_name` varchar(153) DEFAULT NULL,
  `mssa_type` varchar(8) DEFAULT NULL,
  `rn_area_id` varchar(2) DEFAULT NULL,
  `rn_area_name` varchar(36) DEFAULT NULL
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
-- Table structure for table `hcp_flu_vacc_by_county_2016_2017`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_county_2016_2017`;
CREATE TABLE `hcp_flu_vacc_by_county_2016_2017` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vax` varchar(116) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `mask_required` varchar(3) DEFAULT NULL,
  `all_health_care_personnel_hcp_percent_vaccinated` varchar(2) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020__ge_81pct_in_2016_2017` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hcp_flu_vacc_by_county_2017_2018`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_county_2017_2018`;
CREATE TABLE `hcp_flu_vacc_by_county_2017_2018` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vax` varchar(116) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `mask_required` varchar(3) DEFAULT NULL,
  `hcp_percent_vaccinated` varchar(2) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020_84pct_in_2017_18` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hcp_flu_vacc_by_county_2018_2019`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_county_2018_2019`;
CREATE TABLE `hcp_flu_vacc_by_county_2018_2019` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vaccination` varchar(125) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `mask_required` varchar(3) DEFAULT NULL,
  `number_of_hospitals` varchar(2) DEFAULT NULL,
  `hcp_total_number_vaccinated` varchar(6) DEFAULT NULL,
  `hcp_total_number_working` varchar(6) DEFAULT NULL,
  `hcp_percent_vaccinated` varchar(2) DEFAULT NULL,
  `emp_number_vaccinated` varchar(6) DEFAULT NULL,
  `emp_number_working` varchar(6) DEFAULT NULL,
  `emp_percent_vaccinated` varchar(2) DEFAULT NULL,
  `cont_number_vaccinated` varchar(5) DEFAULT NULL,
  `cont_number_working` varchar(5) DEFAULT NULL,
  `cont_percent_vaccinated` varchar(3) DEFAULT NULL,
  `lip_number_vaccinated` varchar(5) DEFAULT NULL,
  `lip_number_working` varchar(5) DEFAULT NULL,
  `lip_percent_vaccinated` varchar(2) DEFAULT NULL,
  `studvol_number_vaccinated` varchar(5) DEFAULT NULL,
  `studvol_number_working` varchar(5) DEFAULT NULL,
  `studvol_percent_vaccinated` varchar(3) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020_ge_87pct_in_2018_19` varchar(3) DEFAULT NULL,
  `notes` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hcp_flu_vacc_by_hosp_county_2016_2017`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_hosp_county_2016_2017`;
CREATE TABLE `hcp_flu_vacc_by_hosp_county_2016_2017` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vax` varchar(116) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(67) DEFAULT NULL,
  `all_health_care_personnel_hcp_percent_vaccinated` varchar(3) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020_81pct_in_2016_2017` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hcp_flu_vacc_by_hosp_county_2017_2018`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_hosp_county_2017_2018`;
CREATE TABLE `hcp_flu_vacc_by_hosp_county_2017_2018` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vax` varchar(125) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `hcp_percent_vaccinated` varchar(3) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020_ge_84pct_in_2017_18` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hcp_flu_vacc_by_hosp_county_2018_2019`
--

DROP TABLE IF EXISTS `hcp_flu_vacc_by_hosp_county_2018_2019`;
CREATE TABLE `hcp_flu_vacc_by_hosp_county_2018_2019` (
  `influenza_season` varchar(7) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `cdph_hai_hcp_flu_vaccination` varchar(125) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(66) DEFAULT NULL,
  `hospital_type` varchar(37) DEFAULT NULL,
  `hcp_total_number_vaccinated` varchar(5) DEFAULT NULL,
  `hcp_total_number_working` varchar(5) DEFAULT NULL,
  `hcp_percent_vaccinated` varchar(2) DEFAULT NULL,
  `emp_number_vaccinated` varchar(5) DEFAULT NULL,
  `emp_number_working` varchar(5) DEFAULT NULL,
  `emp_percent_vaccinated` varchar(3) DEFAULT NULL,
  `lip_number_vaccinated` varchar(4) DEFAULT NULL,
  `lip_number_working` varchar(4) DEFAULT NULL,
  `lip_percent_vaccinated` varchar(3) DEFAULT NULL,
  `cont_number_vaccinated` varchar(4) DEFAULT NULL,
  `cont_number_working` varchar(4) DEFAULT NULL,
  `cont_percent_vaccinated` varchar(3) DEFAULT NULL,
  `studvol_number_vaccinated` varchar(4) DEFAULT NULL,
  `studvol_number_working` varchar(4) DEFAULT NULL,
  `studvol_percent_vaccinated` varchar(3) DEFAULT NULL,
  `on_track_to_achieve_90pct_by_2020_ge_87pct_in_2018_19` varchar(3) DEFAULT NULL,
  `notes` varchar(22) DEFAULT NULL
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
-- Table structure for table `healthcare_payments_data_hpd_fee_for_service_drug_costs_b088f6d6`
--

DROP TABLE IF EXISTS `healthcare_payments_data_hpd_fee_for_service_drug_costs_b088f6d6`;
CREATE TABLE `healthcare_payments_data_hpd_fee_for_service_drug_costs_b088f6d6` (
  `top25type` varchar(9) DEFAULT NULL,
  `payer_type` varchar(10) DEFAULT NULL,
  `brand_generic` varchar(16) DEFAULT NULL,
  `rank_name` varchar(2) DEFAULT NULL,
  `national_drug_code` varchar(11) DEFAULT NULL,
  `drug_name` varchar(29) DEFAULT NULL,
  `numberofprescriptions` varchar(7) DEFAULT NULL,
  `numberofindividuals` varchar(7) DEFAULT NULL,
  `totalcost` varchar(12) DEFAULT NULL,
  `costperprescription` varchar(8) DEFAULT NULL,
  `outofpocketmedian` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `healthy_places_index_hpi_diagnosis_group_by_setting_and_efd436e1`
--

DROP TABLE IF EXISTS `healthy_places_index_hpi_diagnosis_group_by_setting_and_efd436e1`;
CREATE TABLE `healthy_places_index_hpi_diagnosis_group_by_setting_and_efd436e1` (
  `year` varchar(4) DEFAULT NULL,
  `hpi_percentile_ranking` varchar(29) DEFAULT NULL,
  `encounter_setting` varchar(9) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `category_description` varchar(29) DEFAULT NULL,
  `diagnosis_group` varchar(23) DEFAULT NULL,
  `residence` varchar(12) DEFAULT NULL,
  `count` varchar(7) DEFAULT NULL
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
-- Table structure for table `hospital_annual_utilization_data_machine_readable_format`
--

DROP TABLE IF EXISTS `hospital_annual_utilization_data_machine_readable_format`;
CREATE TABLE `hospital_annual_utilization_data_machine_readable_format` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `fac_name` varchar(83) DEFAULT NULL,
  `fac_address_one` varchar(32) DEFAULT NULL,
  `fac_address_two` varchar(11) DEFAULT NULL,
  `fac_city` varchar(19) DEFAULT NULL,
  `fac_zipcode` varchar(10) DEFAULT NULL,
  `fac_phone` varchar(18) DEFAULT NULL,
  `fac_admin_name` varchar(63) DEFAULT NULL,
  `fac_oper_curryr` varchar(3) DEFAULT NULL,
  `beg_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `parent_name` varchar(64) DEFAULT NULL,
  `parent_address_one` varchar(45) DEFAULT NULL,
  `parent_address_two` varchar(44) DEFAULT NULL,
  `parent_city` varchar(16) DEFAULT NULL,
  `parent_state` varchar(2) DEFAULT NULL,
  `parent_zip_9` varchar(10) DEFAULT NULL,
  `report_prep_name` varchar(27) DEFAULT NULL,
  `lic_status` varchar(8) DEFAULT NULL,
  `lic_status_date` varchar(10) DEFAULT NULL,
  `lic_orig_date` varchar(10) DEFAULT NULL,
  `report_status` varchar(0) DEFAULT NULL,
  `mgt_company` varchar(0) DEFAULT NULL,
  `trauma_ctr` varchar(25) DEFAULT NULL,
  `teach_hosp` varchar(3) DEFAULT NULL,
  `mcal_provider_no` varchar(9) DEFAULT NULL,
  `mcare_provider_no` varchar(6) DEFAULT NULL,
  `aclaims_no` varchar(9) DEFAULT NULL,
  `assembly_dist` varchar(2) DEFAULT NULL,
  `senate_dist` varchar(2) DEFAULT NULL,
  `congress_dist` varchar(2) DEFAULT NULL,
  `cens_tract` varchar(10) DEFAULT NULL,
  `med_svc_study_area` varchar(8) DEFAULT NULL,
  `laco_svc_plan_area` varchar(19) DEFAULT NULL,
  `health_svc_area` varchar(26) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `license_no` varchar(9) DEFAULT NULL,
  `facility_level` varchar(22) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `type_lic` varchar(37) DEFAULT NULL,
  `type_cntrl` varchar(45) DEFAULT NULL,
  `type_svc_principal` varchar(34) DEFAULT NULL,
  `measure_variable` varchar(7) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `response` varchar(560) DEFAULT NULL,
  `dates` varchar(10) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL
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
-- Table structure for table `hospital_char_list_for_border_providers`
--

DROP TABLE IF EXISTS `hospital_char_list_for_border_providers`;
CREATE TABLE `hospital_char_list_for_border_providers` (
  `name` varchar(35) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `designated_nicu_as_defined_by_dhcs` varchar(2) DEFAULT NULL,
  `remote_rural` varchar(3) DEFAULT NULL,
  `sfy_19_20_cost_to_charge_ratio` varchar(6) DEFAULT NULL,
  `ffy_2019_wage_index_values` varchar(6) DEFAULT NULL,
  `ffy_2019_wage_index_value_adjusted_for_ca_neutrality_factor` varchar(6) DEFAULT NULL,
  `sfy_19_20_unadjusted_statewide_base_rate` varchar(7) DEFAULT NULL,
  `sfy_19_20_wage_adjusted_statewide_base_rate` varchar(7) DEFAULT NULL
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
-- Table structure for table `hospital_ed_disp_by_county`
--

DROP TABLE IF EXISTS `hospital_ed_disp_by_county`;
CREATE TABLE `hospital_ed_disp_by_county` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `disp1` varchar(41) DEFAULT NULL,
  `encounters` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_ed_encounters_by_facility`
--

DROP TABLE IF EXISTS `hospital_ed_encounters_by_facility`;
CREATE TABLE `hospital_ed_encounters_by_facility` (
  `year` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `er_service_level_desc` varchar(13) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_ed_expected_payer`
--

DROP TABLE IF EXISTS `hospital_ed_expected_payer`;
CREATE TABLE `hospital_ed_expected_payer` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `payer1` varchar(51) DEFAULT NULL,
  `encounters` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_ed_race`
--

DROP TABLE IF EXISTS `hospital_ed_race`;
CREATE TABLE `hospital_ed_race` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `race_grp1` varchar(38) DEFAULT NULL,
  `encounters` varchar(7) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_ed_sex`
--

DROP TABLE IF EXISTS `hospital_ed_sex`;
CREATE TABLE `hospital_ed_sex` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `serv_y` varchar(4) DEFAULT NULL,
  `gender` varchar(21) DEFAULT NULL,
  `encounters` varchar(7) DEFAULT NULL,
  `annotationcode` varchar(0) DEFAULT NULL,
  `annotationdesc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_encounters_for_behavioral_health`
--

DROP TABLE IF EXISTS `hospital_encounters_for_behavioral_health`;
CREATE TABLE `hospital_encounters_for_behavioral_health` (
  `year` varchar(4) DEFAULT NULL,
  `geography` varchar(9) DEFAULT NULL,
  `pattype` varchar(9) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `cat_desc` varchar(32) DEFAULT NULL,
  `dxgroup` varchar(62) DEFAULT NULL,
  `count` varchar(7) DEFAULT NULL,
  `total` varchar(8) DEFAULT NULL,
  `percent` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_encounters_for_homeless_by_expected_payer`
--

DROP TABLE IF EXISTS `hospital_encounters_for_homeless_by_expected_payer`;
CREATE TABLE `hospital_encounters_for_homeless_by_expected_payer` (
  `encountertype` varchar(2) DEFAULT NULL,
  `demographic` varchar(9) DEFAULT NULL,
  `demographicvalue` varchar(29) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `homeless` varchar(9) DEFAULT NULL,
  `all_values` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_encounters_for_homeless_by_facility`
--

DROP TABLE IF EXISTS `hospital_encounters_for_homeless_by_facility`;
CREATE TABLE `hospital_encounters_for_homeless_by_facility` (
  `encountertype` varchar(26) DEFAULT NULL,
  `hospitalcounty` varchar(15) DEFAULT NULL,
  `oshpd_id` varchar(6) DEFAULT NULL,
  `facilityname` varchar(79) DEFAULT NULL,
  `system_name` varchar(33) DEFAULT NULL,
  `ownership` varchar(10) DEFAULT NULL,
  `urban_rural` varchar(14) DEFAULT NULL,
  `teaching` varchar(12) DEFAULT NULL,
  `licensedbedsize` varchar(7) DEFAULT NULL,
  `primarycareshortagearea` varchar(3) DEFAULT NULL,
  `mentalhealthshortagearea` varchar(3) DEFAULT NULL,
  `homelessindicator` varchar(12) DEFAULT NULL,
  `demographic` varchar(5) DEFAULT NULL,
  `demographicvalue` varchar(29) DEFAULT NULL,
  `encounters` varchar(6) DEFAULT NULL,
  `totalencounters` varchar(6) DEFAULT NULL,
  `percent` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_admission_source_by__f82e8de9`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_admission_source_by__f82e8de9`;
CREATE TABLE `hospital_inpatient_characteristics_admission_source_by__f82e8de9` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `srcsite1` varchar(42) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_disposition_by_patie_8cc398e6`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_disposition_by_patie_8cc398e6`;
CREATE TABLE `hospital_inpatient_characteristics_disposition_by_patie_8cc398e6` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `disp1` varchar(69) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_expected_payer_by_pa_44918e82`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_expected_payer_by_pa_44918e82`;
CREATE TABLE `hospital_inpatient_characteristics_expected_payer_by_pa_44918e82` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `pay_cat1` varchar(23) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_mdc_by_patient_count_481a6c1d`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_mdc_by_patient_count_481a6c1d`;
CREATE TABLE `hospital_inpatient_characteristics_mdc_by_patient_count_481a6c1d` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `mdc` varchar(2) DEFAULT NULL,
  `mdc_desc` varchar(65) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_ms_drg_by_patient_co_fb872b63`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_ms_drg_by_patient_co_fb872b63`;
CREATE TABLE `hospital_inpatient_characteristics_ms_drg_by_patient_co_fb872b63` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `msdrg` varchar(3) DEFAULT NULL,
  `msdrgcode` varchar(149) DEFAULT NULL,
  `discharges` varchar(5) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_race_group_by_patien_8fafca4c`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_race_group_by_patien_8fafca4c`;
CREATE TABLE `hospital_inpatient_characteristics_race_group_by_patien_8fafca4c` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `race_grp1` varchar(38) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_sex_by_patient_count_4f631a3c`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_sex_by_patient_count_4f631a3c`;
CREATE TABLE `hospital_inpatient_characteristics_sex_by_patient_count_4f631a3c` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `sex` varchar(23) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_inpatient_characteristics_type_of_care_by_pati_18db01dc`
--

DROP TABLE IF EXISTS `hospital_inpatient_characteristics_type_of_care_by_pati_18db01dc`;
CREATE TABLE `hospital_inpatient_characteristics_type_of_care_by_pati_18db01dc` (
  `patcnty1` varchar(21) DEFAULT NULL,
  `dsch_yr` varchar(4) DEFAULT NULL,
  `typcare1` varchar(33) DEFAULT NULL,
  `discharges` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_perf_ratings_for_artery_bypass_surgery_2011_2018`
--

DROP TABLE IF EXISTS `hospital_perf_ratings_for_artery_bypass_surgery_2011_2018`;
CREATE TABLE `hospital_perf_ratings_for_artery_bypass_surgery_2011_2018` (
  `year` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(77) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `performance_measure` varchar(32) DEFAULT NULL,
  `num_of_cases` varchar(6) DEFAULT NULL,
  `num_of_adverse_events` varchar(5) DEFAULT NULL,
  `risk_adjusted_rate` varchar(6) DEFAULT NULL,
  `performance_rating` varchar(15) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_perf_ratings_for_artery_bypass_surgery_2018_2022`
--

DROP TABLE IF EXISTS `hospital_perf_ratings_for_artery_bypass_surgery_2018_2022`;
CREATE TABLE `hospital_perf_ratings_for_artery_bypass_surgery_2018_2022` (
  `year` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(87) DEFAULT NULL,
  `hospital_id` varchar(9) DEFAULT NULL,
  `performance_measure` varchar(35) DEFAULT NULL,
  `total_statewide_cabg_cases` varchar(6) DEFAULT NULL,
  `total_statewide_cabg_cases_for_performance_measure_reporting` varchar(6) DEFAULT NULL,
  `statewide_adverse_events` varchar(5) DEFAULT NULL,
  `statewide_adverse_events_rate_pct` varchar(5) DEFAULT NULL,
  `total_hospital_cabg_cases` varchar(5) DEFAULT NULL,
  `total_hospital_cabg_cases_for_performance_measure_reporting` varchar(5) DEFAULT NULL,
  `hospital_adverse_events` varchar(3) DEFAULT NULL,
  `hospital_observed_adverse_events_rate_pct` varchar(6) DEFAULT NULL,
  `hospital_expected_adverse_events_rate_pct` varchar(5) DEFAULT NULL,
  `hospital_risk_adjusted_adverse_events_rate_pct_raaer` varchar(5) DEFAULT NULL,
  `hospital_lower_95pct_ci_for_raaer` varchar(5) DEFAULT NULL,
  `hospital_upper_95pct_ci_for_raaer` varchar(6) DEFAULT NULL,
  `performance_rating` varchar(15) DEFAULT NULL,
  `longitude` varchar(7) DEFAULT NULL,
  `latitude` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_performance_ratings_01`
--

DROP TABLE IF EXISTS `hospital_performance_ratings_01`;
CREATE TABLE `hospital_performance_ratings_01` (
  `county` varchar(12) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `performance_measure` varchar(33) DEFAULT NULL,
  `risk_adjusted_rate` varchar(9) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(8) DEFAULT NULL,
  `type_of_report` varchar(3) DEFAULT NULL,
  `hospital_ratings` varchar(11) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL,
  `num_of_adverse_events` varchar(3) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `cnt_worse` varchar(1) DEFAULT NULL,
  `cnt_better` varchar(1) DEFAULT NULL,
  `rating` varchar(27) DEFAULT NULL,
  `procedure_condition` varchar(9) DEFAULT NULL,
  `performance_measure2` varchar(38) DEFAULT NULL,
  `hospital` varchar(85) DEFAULT NULL,
  `system_name_name` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_performance_ratings_02`
--

DROP TABLE IF EXISTS `hospital_performance_ratings_02`;
CREATE TABLE `hospital_performance_ratings_02` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital` varchar(85) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `system_name_name` varchar(33) DEFAULT NULL,
  `type_of_report` varchar(12) DEFAULT NULL,
  `performance_measure` varchar(27) DEFAULT NULL,
  `num_of_adverse_events` varchar(3) DEFAULT NULL,
  `num_of_cases` varchar(4) DEFAULT NULL,
  `risk_adjusted_rate` varchar(9) DEFAULT NULL,
  `hospital_ratings` varchar(11) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_profitability_2009_2013`
--

DROP TABLE IF EXISTS `hospital_profitability_2009_2013`;
CREATE TABLE `hospital_profitability_2009_2013` (
  `year` varchar(4) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(63) DEFAULT NULL,
  `begin_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `type_of_control` varchar(11) DEFAULT NULL,
  `income_statement_item` varchar(16) DEFAULT NULL,
  `income_statement_amount` varchar(12) DEFAULT NULL,
  `amount_per_adjusted_patient_day` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_ratings_for_aortic_valve_replacement_procedures`
--

DROP TABLE IF EXISTS `hospital_ratings_for_aortic_valve_replacement_procedures`;
CREATE TABLE `hospital_ratings_for_aortic_valve_replacement_procedures` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_system` varchar(33) DEFAULT NULL,
  `hospital` varchar(85) DEFAULT NULL,
  `hospital_id` varchar(9) DEFAULT NULL,
  `performance_measure` varchar(33) DEFAULT NULL,
  `total_statewide_tavr_cases` varchar(5) DEFAULT NULL,
  `statewide_adverse_events` varchar(3) DEFAULT NULL,
  `statewide_observed_adverse_event_rate` varchar(4) DEFAULT NULL,
  `total_hospital_tavr_cases` varchar(3) DEFAULT NULL,
  `hospital_adverse_events` varchar(2) DEFAULT NULL,
  `hospital_observed_adverse_event_rate` varchar(4) DEFAULT NULL,
  `hospital_expected_adverse_event_rate` varchar(4) DEFAULT NULL,
  `hospital_risk_adjusted_adverse_event_rate` varchar(4) DEFAULT NULL,
  `hospital_lower_95pct_ci_for_raaer` varchar(4) DEFAULT NULL,
  `hospital_upper_95pct_ci_for_raaer` varchar(5) DEFAULT NULL,
  `performance_rating` varchar(7) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_staffing_2009_2013`
--

DROP TABLE IF EXISTS `hospital_staffing_2009_2013`;
CREATE TABLE `hospital_staffing_2009_2013` (
  `year` varchar(4) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(63) DEFAULT NULL,
  `begin_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `type_of_control` varchar(11) DEFAULT NULL,
  `hours_type` varchar(36) DEFAULT NULL,
  `productive_hours` varchar(9) DEFAULT NULL,
  `productive_hours_per_adjusted_patient_day` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospital_utilization_trends`
--

DROP TABLE IF EXISTS `hospital_utilization_trends`;
CREATE TABLE `hospital_utilization_trends` (
  `setting` varchar(20) DEFAULT NULL,
  `system_name` varchar(33) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `date` varchar(6) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hospitalization_counts_and_rates_of_selected_adverse_ho_f567d310`
--

DROP TABLE IF EXISTS `hospitalization_counts_and_rates_of_selected_adverse_ho_f567d310`;
CREATE TABLE `hospitalization_counts_and_rates_of_selected_adverse_ho_f567d310` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `psi` varchar(2) DEFAULT NULL,
  `psidescription` varchar(54) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `population` varchar(12) DEFAULT NULL,
  `obsrate` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hpd_measures_data_2018_2021`
--

DROP TABLE IF EXISTS `hpd_measures_data_2018_2021`;
CREATE TABLE `hpd_measures_data_2018_2021` (
  `reporting_year` varchar(4) DEFAULT NULL,
  `age_band` varchar(5) DEFAULT NULL,
  `assigned_sex_at_birth` varchar(6) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `county_name_plus_spa` varchar(24) DEFAULT NULL,
  `covered_california_region` varchar(41) DEFAULT NULL,
  `payer_type` varchar(10) DEFAULT NULL,
  `measure_id` varchar(2) DEFAULT NULL,
  `measure_numerator` varchar(8) DEFAULT NULL,
  `measure_denominator` varchar(7) DEFAULT NULL,
  `measure_scaling_factor` varchar(5) DEFAULT NULL,
  `suppression_ind` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `hpd_measures_measure_descriptions`
--

DROP TABLE IF EXISTS `hpd_measures_measure_descriptions`;
CREATE TABLE `hpd_measures_measure_descriptions` (
  `measure_id` varchar(2) DEFAULT NULL,
  `measure_name` varchar(66) DEFAULT NULL,
  `measure_category` varchar(17) DEFAULT NULL,
  `measure_description` varchar(240) DEFAULT NULL,
  `numerator_definition` varchar(177) DEFAULT NULL,
  `denominator_definition` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `immunizations_in_child_care_2013_15_to_2015_16`
--

DROP TABLE IF EXISTS `immunizations_in_child_care_2013_15_to_2015_16`;
CREATE TABLE `immunizations_in_child_care_2013_15_to_2015_16` (
  `school_year` varchar(9) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_type` varchar(10) DEFAULT NULL,
  `city` varchar(22) DEFAULT NULL,
  `facility_name` varchar(87) DEFAULT NULL,
  `enrollment` varchar(4) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `category` varchar(33) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `immunizations_in_child_care_2016_17_to_2019_20_academic_years`
--

DROP TABLE IF EXISTS `immunizations_in_child_care_2016_17_to_2019_20_academic_years`;
CREATE TABLE `immunizations_in_child_care_2016_17_to_2019_20_academic_years` (
  `school_year` varchar(9) DEFAULT NULL,
  `facility_number` varchar(9) DEFAULT NULL,
  `facility_name` varchar(53) DEFAULT NULL,
  `city` varchar(22) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_type` varchar(10) DEFAULT NULL,
  `enrollment` varchar(4) DEFAULT NULL,
  `reported` varchar(1) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `percent` varchar(2) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_count_desc` varchar(136) DEFAULT NULL,
  `annotation_percent_desc` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `in_hospital_mortality_trends_by_diagnosis_type`
--

DROP TABLE IF EXISTS `in_hospital_mortality_trends_by_diagnosis_type`;
CREATE TABLE `in_hospital_mortality_trends_by_diagnosis_type` (
  `category` varchar(44) DEFAULT NULL,
  `setting` varchar(20) DEFAULT NULL,
  `diagnosis` varchar(32) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `date` varchar(6) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `in_hospital_mortality_trends_by_health_category`
--

DROP TABLE IF EXISTS `in_hospital_mortality_trends_by_health_category`;
CREATE TABLE `in_hospital_mortality_trends_by_health_category` (
  `date` varchar(7) DEFAULT NULL,
  `category` varchar(44) DEFAULT NULL,
  `setting` varchar(20) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `in_hospital_mortality_trends_by_secondary_diagnosis`
--

DROP TABLE IF EXISTS `in_hospital_mortality_trends_by_secondary_diagnosis`;
CREATE TABLE `in_hospital_mortality_trends_by_secondary_diagnosis` (
  `category` varchar(44) DEFAULT NULL,
  `setting` varchar(20) DEFAULT NULL,
  `diagnosis` varchar(32) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `date` varchar(7) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `independent_medical_review_imr_determinations_trend`
--

DROP TABLE IF EXISTS `independent_medical_review_imr_determinations_trend`;
CREATE TABLE `independent_medical_review_imr_determinations_trend` (
  `referenceid` varchar(10) DEFAULT NULL,
  `reportyear` varchar(4) DEFAULT NULL,
  `diagnosiscategory` varchar(20) DEFAULT NULL,
  `diagnosissubcategory` varchar(34) DEFAULT NULL,
  `treatmentcategory` varchar(29) DEFAULT NULL,
  `treatmentsubcategory` varchar(27) DEFAULT NULL,
  `determination` varchar(34) DEFAULT NULL,
  `type` varchar(28) DEFAULT NULL,
  `agerange` varchar(8) DEFAULT NULL,
  `patientgender` varchar(6) DEFAULT NULL,
  `imrtype` varchar(9) DEFAULT NULL,
  `daystoreview` varchar(3) DEFAULT NULL,
  `daystoadopt` varchar(3) DEFAULT NULL,
  `findings` varchar(7033) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `individuals_under_age_21_enrolled_in_medi_cal_by_delivery_system`
--

DROP TABLE IF EXISTS `individuals_under_age_21_enrolled_in_medi_cal_by_delivery_system`;
CREATE TABLE `individuals_under_age_21_enrolled_in_medi_cal_by_delivery_system` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `delivery_system` varchar(15) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL
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
-- Table structure for table `infectious_diseases_by_county_year_and_sex`
--

DROP TABLE IF EXISTS `infectious_diseases_by_county_year_and_sex`;
CREATE TABLE `infectious_diseases_by_county_year_and_sex` (
  `disease` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `cases` varchar(5) DEFAULT NULL,
  `population` varchar(8) DEFAULT NULL,
  `rate` varchar(6) DEFAULT NULL,
  `lower_95_ci` varchar(7) DEFAULT NULL,
  `upper_95_ci` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `information_assistance_calls_in_response_to_covid_19`
--

DROP TABLE IF EXISTS `information_assistance_calls_in_response_to_covid_19`;
CREATE TABLE `information_assistance_calls_in_response_to_covid_19` (
  `planning_and_service_area` varchar(2) DEFAULT NULL,
  `weekstartdate` varchar(9) DEFAULT NULL,
  `weekenddate` varchar(9) DEFAULT NULL,
  `inbound_calls` varchar(4) DEFAULT NULL,
  `outbound_calls` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `inhospitalbirthsby_agegroup`
--

DROP TABLE IF EXISTS `inhospitalbirthsby_agegroup`;
CREATE TABLE `inhospitalbirthsby_agegroup` (
  `year` varchar(4) DEFAULT NULL,
  `patcnty` varchar(15) DEFAULT NULL,
  `agegrp` varchar(51) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL
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
-- Table structure for table `insurance_affordability_programs_applications_received__4e2dd9c4`
--

DROP TABLE IF EXISTS `insurance_affordability_programs_applications_received__4e2dd9c4`;
CREATE TABLE `insurance_affordability_programs_applications_received__4e2dd9c4` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `submission_channel` varchar(9) DEFAULT NULL,
  `number_of_applications` varchar(9) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `insurance_affordability_programs_applications_received__5aa42088`
--

DROP TABLE IF EXISTS `insurance_affordability_programs_applications_received__5aa42088`;
CREATE TABLE `insurance_affordability_programs_applications_received__5aa42088` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `submission_channel` varchar(9) DEFAULT NULL,
  `number_of_applications` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `insurance_affordability_programs_eligibility_appeals`
--

DROP TABLE IF EXISTS `insurance_affordability_programs_eligibility_appeals`;
CREATE TABLE `insurance_affordability_programs_eligibility_appeals` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(8) DEFAULT NULL,
  `program` varchar(33) DEFAULT NULL,
  `eligibility_action_appealed` varchar(25) DEFAULT NULL,
  `number_of_actions_appealed` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `insurance_affordability_programs_eligibility_appeals_he_ad8e25ad`
--

DROP TABLE IF EXISTS `insurance_affordability_programs_eligibility_appeals_he_ad8e25ad`;
CREATE TABLE `insurance_affordability_programs_eligibility_appeals_he_ad8e25ad` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(8) DEFAULT NULL,
  `program` varchar(29) DEFAULT NULL,
  `eligibility_appeals_hearing_results` varchar(19) DEFAULT NULL,
  `number_of_hearing_results` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `count_annotation_desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `ischemic_stroke_30_day_mortality_and_30_day_readmission_353fe671`
--

DROP TABLE IF EXISTS `ischemic_stroke_30_day_mortality_and_30_day_readmission_353fe671`;
CREATE TABLE `ischemic_stroke_30_day_mortality_and_30_day_readmission_353fe671` (
  `year` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(67) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `measure` varchar(18) DEFAULT NULL,
  `risk_adjusted_rate` varchar(5) DEFAULT NULL,
  `num_of_deaths_readmissions` varchar(5) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL,
  `hospital_ratings` varchar(11) DEFAULT NULL,
  `location_1` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `katie_a_county_fiscal_year_data`
--

DROP TABLE IF EXISTS `katie_a_county_fiscal_year_data`;
CREATE TABLE `katie_a_county_fiscal_year_data` (
  `rpt_date` varchar(10) DEFAULT NULL,
  `rpt_yr` varchar(6) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `svc_desc` varchar(27) DEFAULT NULL,
  `amount` varchar(13) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `amount_type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `katie_a_statewide_monthly_data`
--

DROP TABLE IF EXISTS `katie_a_statewide_monthly_data`;
CREATE TABLE `katie_a_statewide_monthly_data` (
  `rpt_date` varchar(10) DEFAULT NULL,
  `rpt_yr` varchar(6) DEFAULT NULL,
  `ooc_check` varchar(3) DEFAULT NULL,
  `month` varchar(9) DEFAULT NULL,
  `month_type` varchar(20) DEFAULT NULL,
  `svc_desc` varchar(12) DEFAULT NULL,
  `amount` varchar(8) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL,
  `amount_type` varchar(13) DEFAULT NULL,
  `unnamed_9` varchar(0) DEFAULT NULL,
  `unnamed_10` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `key_characteristics_of_californians_age_60_and_over`
--

DROP TABLE IF EXISTS `key_characteristics_of_californians_age_60_and_over`;
CREATE TABLE `key_characteristics_of_californians_age_60_and_over` (
  `year` varchar(4) DEFAULT NULL,
  `planning_and_service_area` varchar(2) DEFAULT NULL,
  `county` varchar(18) DEFAULT NULL,
  `key_characteristics_category` varchar(20) DEFAULT NULL,
  `number_of_persons_age_60_and_over` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_and_certified_healthcare_facilities`
--

DROP TABLE IF EXISTS `licensed_and_certified_healthcare_facilities`;
CREATE TABLE `licensed_and_certified_healthcare_facilities` (
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `licensed_certified` varchar(35) DEFAULT NULL,
  `flag` varchar(16) DEFAULT NULL,
  `t18_19` varchar(13) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `fac_status_type_code` varchar(4) DEFAULT NULL,
  `aspen_facid` varchar(16) DEFAULT NULL,
  `ccn` varchar(10) DEFAULT NULL,
  `terminat_sw` varchar(1) DEFAULT NULL,
  `participation_date` varchar(22) DEFAULT NULL,
  `approval_date` varchar(22) DEFAULT NULL,
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
  `initial_license_date` varchar(22) DEFAULT NULL,
  `license_effective_date` varchar(22) DEFAULT NULL,
  `license_expiration_date` varchar(22) DEFAULT NULL,
  `entity_type_description` varchar(25) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `location` varchar(27) DEFAULT NULL,
  `oshpd_id` varchar(0) DEFAULT NULL,
  `cclho_code` varchar(2) DEFAULT NULL,
  `cclho_name` varchar(15) DEFAULT NULL,
  `fips_county_code` varchar(5) DEFAULT NULL,
  `birthing_facility_flag` varchar(3) DEFAULT NULL,
  `trauma_ped_ctr` varchar(12) DEFAULT NULL,
  `trauma_ctr` varchar(9) DEFAULT NULL,
  `type_of_care` varchar(26) DEFAULT NULL,
  `critical_access_hospital` varchar(1) DEFAULT NULL,
  `data_date` varchar(22) DEFAULT NULL,
  `objectid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_and_certified_healthcare_facility_bed_types_and_counts`
--

DROP TABLE IF EXISTS `licensed_and_certified_healthcare_facility_bed_types_and_counts`;
CREATE TABLE `licensed_and_certified_healthcare_facility_bed_types_and_counts` (
  `facid` varchar(9) DEFAULT NULL,
  `facname` varchar(87) DEFAULT NULL,
  `fac_fdr` varchar(44) DEFAULT NULL,
  `bed_capacity_type` varchar(43) DEFAULT NULL,
  `bed_capacity` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_and_certified_healthcare_facility_services`
--

DROP TABLE IF EXISTS `licensed_and_certified_healthcare_facility_services`;
CREATE TABLE `licensed_and_certified_healthcare_facility_services` (
  `facid` varchar(9) DEFAULT NULL,
  `facname` varchar(85) DEFAULT NULL,
  `fac_type_code` varchar(10) DEFAULT NULL,
  `fac_fdr` varchar(44) DEFAULT NULL,
  `service_type_code` varchar(3) DEFAULT NULL,
  `service_type_name` varchar(53) DEFAULT NULL,
  `service_other_name` varchar(50) DEFAULT NULL,
  `is_offsite_service` varchar(1) DEFAULT NULL,
  `offsite_name` varchar(51) DEFAULT NULL,
  `offsite_address1` varchar(50) DEFAULT NULL,
  `offsite_city` varchar(20) DEFAULT NULL,
  `offsite_state` varchar(2) DEFAULT NULL,
  `offsite_zip` varchar(10) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `longitude` varchar(11) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `location` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_bed_classification_and_designations_trends`
--

DROP TABLE IF EXISTS `licensed_bed_classification_and_designations_trends`;
CREATE TABLE `licensed_bed_classification_and_designations_trends` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(53) DEFAULT NULL,
  `licensed_bed_classification` varchar(42) DEFAULT NULL,
  `license_bed_designation` varchar(43) DEFAULT NULL,
  `licensed_bed_day` varchar(6) DEFAULT NULL,
  `discharges` varchar(5) DEFAULT NULL,
  `census_day` varchar(6) DEFAULT NULL,
  `intra_hospital_transfer_from_critical_care` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensed_driving_under_the_influence_provider_directory`
--

DROP TABLE IF EXISTS `licensed_driving_under_the_influence_provider_directory`;
CREATE TABLE `licensed_driving_under_the_influence_provider_directory` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(3) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `dui_license_number` varchar(10) DEFAULT NULL,
  `facility_name` varchar(89) DEFAULT NULL,
  `facility_address` varchar(49) DEFAULT NULL,
  `facility_city` varchar(19) DEFAULT NULL,
  `facility_zip` varchar(5) DEFAULT NULL,
  `fop` varchar(1) DEFAULT NULL,
  `f18_mo` varchar(1) DEFAULT NULL,
  `f30_mo` varchar(1) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `fax_number` varchar(14) DEFAULT NULL,
  `e_mail_website` varchar(39) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `countyname` varchar(22) DEFAULT NULL
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
-- Table structure for table `licensed_narcotic_treatment_programs`
--

DROP TABLE IF EXISTS `licensed_narcotic_treatment_programs`;
CREATE TABLE `licensed_narcotic_treatment_programs` (
  `x` varchar(14) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(3) DEFAULT NULL,
  `county` varchar(2) DEFAULT NULL,
  `licensee` varchar(65) DEFAULT NULL,
  `license_` varchar(9) DEFAULT NULL,
  `dba` varchar(45) DEFAULT NULL,
  `otp_ca10` varchar(6) DEFAULT NULL,
  `address` varchar(71) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `program_zip` varchar(5) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `total_slots` varchar(4) DEFAULT NULL,
  `operating_hours` varchar(37) DEFAULT NULL,
  `dispensing_hours` varchar(73) DEFAULT NULL,
  `weekend_hours` varchar(56) DEFAULT NULL,
  `weekend_dispensing_hours` varchar(56) DEFAULT NULL,
  `program_director` varchar(23) DEFAULT NULL,
  `medical_director` varchar(42) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `countyname` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `licensing_and_certification_district_offices_california`
--

DROP TABLE IF EXISTS `licensing_and_certification_district_offices_california`;
CREATE TABLE `licensing_and_certification_district_offices_california` (
  `district_number` varchar(22) DEFAULT NULL,
  `counties_served` varchar(130) DEFAULT NULL,
  `district_name` varchar(114) DEFAULT NULL,
  `dm` varchar(18) DEFAULT NULL,
  `admin` varchar(34) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_tf` varchar(14) DEFAULT NULL,
  `fax` varchar(31) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(11) DEFAULT NULL,
  `location` varchar(24) DEFAULT NULL
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
-- Table structure for table `location_age_and_experience_of_paramedics_and_emts_lice_68e09f11`
--

DROP TABLE IF EXISTS `location_age_and_experience_of_paramedics_and_emts_lice_68e09f11`;
CREATE TABLE `location_age_and_experience_of_paramedics_and_emts_lice_68e09f11` (
  `county` varchar(15) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `license_type` varchar(12) DEFAULT NULL,
  `license_status` varchar(6) DEFAULT NULL,
  `age_group` varchar(7) DEFAULT NULL,
  `expiration_year` varchar(4) DEFAULT NULL,
  `experience_in_years` varchar(2) DEFAULT NULL,
  `certified_by` varchar(54) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `location` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `long_term_care_facility_profitability`
--

DROP TABLE IF EXISTS `long_term_care_facility_profitability`;
CREATE TABLE `long_term_care_facility_profitability` (
  `year` varchar(4) DEFAULT NULL,
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `beg_date` varchar(22) DEFAULT NULL,
  `end_date` varchar(22) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `type_cntrl` varchar(14) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `tot_hc_rev` varchar(12) DEFAULT NULL,
  `tot_hc_exp` varchar(12) DEFAULT NULL,
  `nonhc_net` varchar(13) DEFAULT NULL,
  `inc_tax` varchar(11) DEFAULT NULL,
  `ext_item` varchar(12) DEFAULT NULL,
  `net_income` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `long_term_care_facility_staffing`
--

DROP TABLE IF EXISTS `long_term_care_facility_staffing`;
CREATE TABLE `long_term_care_facility_staffing` (
  `year` varchar(4) DEFAULT NULL,
  `fac_no` varchar(9) DEFAULT NULL,
  `fac_name` varchar(61) DEFAULT NULL,
  `beg_date` varchar(22) DEFAULT NULL,
  `end_date` varchar(22) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `type_cntrl` varchar(14) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `prdhr_mgt` varchar(5) DEFAULT NULL,
  `prdhr_rn` varchar(5) DEFAULT NULL,
  `prdhr_lvn` varchar(6) DEFAULT NULL,
  `prdhr_na` varchar(6) DEFAULT NULL,
  `prdhr_tsp` varchar(6) DEFAULT NULL,
  `prdhr_psy` varchar(5) DEFAULT NULL,
  `prdhr_oth` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `long_term_care_ombudsman_complaints_in_residential_care_570c3c31`
--

DROP TABLE IF EXISTS `long_term_care_ombudsman_complaints_in_residential_care_570c3c31`;
CREATE TABLE `long_term_care_ombudsman_complaints_in_residential_care_570c3c31` (
  `federal_fiscal_year` varchar(4) DEFAULT NULL,
  `long_term_care_ombudsman_program` varchar(9) DEFAULT NULL,
  `major_complaint_category` varchar(1) DEFAULT NULL,
  `major_complaint_category_name` varchar(64) DEFAULT NULL,
  `number_of_complaints_received` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `long_term_care_ombudsman_complaints_in_skilled_nursing__2547ccd9`
--

DROP TABLE IF EXISTS `long_term_care_ombudsman_complaints_in_skilled_nursing__2547ccd9`;
CREATE TABLE `long_term_care_ombudsman_complaints_in_skilled_nursing__2547ccd9` (
  `federal_fiscal_year` varchar(4) DEFAULT NULL,
  `long_term_care_ombudsman_program` varchar(9) DEFAULT NULL,
  `major_complaint_category` varchar(1) DEFAULT NULL,
  `major_complaint_category_name` varchar(62) DEFAULT NULL,
  `number_of_complaints_received` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `low_very_low_birthweight_by_county`
--

DROP TABLE IF EXISTS `low_very_low_birthweight_by_county`;
CREATE TABLE `low_very_low_birthweight_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `birthweight_type` varchar(20) DEFAULT NULL,
  `total_births` varchar(6) DEFAULT NULL,
  `events` varchar(5) DEFAULT NULL,
  `percent` varchar(11) DEFAULT NULL,
  `lower_95pct_ci` varchar(10) DEFAULT NULL,
  `upper_95pct_ci` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `low_very_low_birthweight_by_race_ethnicity`
--

DROP TABLE IF EXISTS `low_very_low_birthweight_by_race_ethnicity`;
CREATE TABLE `low_very_low_birthweight_by_race_ethnicity` (
  `year` varchar(4) DEFAULT NULL,
  `race_ethnicity` varchar(22) DEFAULT NULL,
  `birthweight_type` varchar(20) DEFAULT NULL,
  `total_births` varchar(6) DEFAULT NULL,
  `events` varchar(5) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(4) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `major_diagnostic_categories_summary`
--

DROP TABLE IF EXISTS `major_diagnostic_categories_summary`;
CREATE TABLE `major_diagnostic_categories_summary` (
  `discharge_yr` varchar(4) DEFAULT NULL,
  `oshpd_id` varchar(6) DEFAULT NULL,
  `facility_name` varchar(60) DEFAULT NULL,
  `hospital_county` varchar(15) DEFAULT NULL,
  `hospital_zip` varchar(5) DEFAULT NULL,
  `typecare` varchar(70) DEFAULT NULL,
  `adjusted_length_of_stay` varchar(5) DEFAULT NULL,
  `mdc` varchar(65) DEFAULT NULL,
  `payer` varchar(73) DEFAULT NULL,
  `discharges` varchar(4) DEFAULT NULL,
  `valid_charges` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_age`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_age`;
CREATE TABLE `managed_care_pref_mon_dashboard_age` (
  `month` varchar(6) DEFAULT NULL,
  `measure_category` varchar(19) DEFAULT NULL,
  `measure_type` varchar(49) DEFAULT NULL,
  `age_group` varchar(10) DEFAULT NULL,
  `count` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_ethnicity`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_ethnicity`;
CREATE TABLE `managed_care_pref_mon_dashboard_ethnicity` (
  `month` varchar(6) DEFAULT NULL,
  `measure_category` varchar(19) DEFAULT NULL,
  `measure_type` varchar(49) DEFAULT NULL,
  `ethnicity_grouping` varchar(41) DEFAULT NULL,
  `count` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_grievance_demographics`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_grievance_demographics`;
CREATE TABLE `managed_care_pref_mon_dashboard_grievance_demographics` (
  `quarter` varchar(6) DEFAULT NULL,
  `measure_category` varchar(10) DEFAULT NULL,
  `measure_type` varchar(41) DEFAULT NULL,
  `grievances_per_1_000_member_months` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_grievance_type`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_grievance_type`;
CREATE TABLE `managed_care_pref_mon_dashboard_grievance_type` (
  `quarter` varchar(6) DEFAULT NULL,
  `grievance_type_roll_up` varchar(18) DEFAULT NULL,
  `grievance_type` varchar(76) DEFAULT NULL,
  `grievances_paces` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_hedis`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_hedis`;
CREATE TABLE `managed_care_pref_mon_dashboard_hedis` (
  `hedis_reporting_year` varchar(4) DEFAULT NULL,
  `reporting_unit` varchar(33) DEFAULT NULL,
  `aqfs` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_population`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_population`;
CREATE TABLE `managed_care_pref_mon_dashboard_population` (
  `month` varchar(6) DEFAULT NULL,
  `measure_category` varchar(19) DEFAULT NULL,
  `measure_type` varchar(49) DEFAULT NULL,
  `population_type` varchar(8) DEFAULT NULL,
  `count` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_provider_ratios`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_provider_ratios`;
CREATE TABLE `managed_care_pref_mon_dashboard_provider_ratios` (
  `plan_parent_reporting_name` varchar(21) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `pcps_per_2_000_members` varchar(3) DEFAULT NULL,
  `physicians_per_1_200_members` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `managed_care_pref_mon_dashboard_sex`
--

DROP TABLE IF EXISTS `managed_care_pref_mon_dashboard_sex`;
CREATE TABLE `managed_care_pref_mon_dashboard_sex` (
  `month` varchar(6) DEFAULT NULL,
  `measure_category` varchar(19) DEFAULT NULL,
  `measure_type` varchar(49) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `count` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mcna_population_points_with_t_d_standards`
--

DROP TABLE IF EXISTS `mcna_population_points_with_t_d_standards`;
CREATE TABLE `mcna_population_points_with_t_d_standards` (
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(18) DEFAULT NULL,
  `objectid` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `county_zip` varchar(21) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `census_tract` varchar(5) DEFAULT NULL,
  `census_block_group` varchar(1) DEFAULT NULL,
  `all_plan` varchar(47) DEFAULT NULL,
  `county_size_type` varchar(6) DEFAULT NULL,
  `people_sq_mi` varchar(9) DEFAULT NULL,
  `tt_hospitals` varchar(2) DEFAULT NULL,
  `dt_hospitals` varchar(2) DEFAULT NULL,
  `tt_adult_pcp` varchar(2) DEFAULT NULL,
  `dt_adult_pcp` varchar(2) DEFAULT NULL,
  `tt_pediatric_pcp` varchar(2) DEFAULT NULL,
  `dt_pediatric_pcp` varchar(2) DEFAULT NULL,
  `tt_ob_gyn_primary` varchar(2) DEFAULT NULL,
  `dt_ob_gyn_primary` varchar(2) DEFAULT NULL,
  `tt_ob_gyn_specialty` varchar(2) DEFAULT NULL,
  `dt_ob_gyn_specialty` varchar(2) DEFAULT NULL,
  `tt_adult_cardiology_interventi` varchar(2) DEFAULT NULL,
  `dt_adult_cardiology_interventi` varchar(2) DEFAULT NULL,
  `tt_adult_dermatology` varchar(2) DEFAULT NULL,
  `dt_adult_dermatology` varchar(2) DEFAULT NULL,
  `tt_adult_endocrinology` varchar(2) DEFAULT NULL,
  `dt_adult_endocrinology` varchar(2) DEFAULT NULL,
  `tt_adult_ent_otolaryngology` varchar(2) DEFAULT NULL,
  `dt_adult_ent_otolaryngology` varchar(2) DEFAULT NULL,
  `tt_adult_gastroenterology` varchar(2) DEFAULT NULL,
  `dt_adult_gastroenterology` varchar(2) DEFAULT NULL,
  `tt_adult_general_surgery` varchar(2) DEFAULT NULL,
  `dt_adult_general_surgery` varchar(2) DEFAULT NULL,
  `tt_adult_hematology` varchar(2) DEFAULT NULL,
  `dt_adult_hematology` varchar(2) DEFAULT NULL,
  `tt_adult_hiv_aids_infectious_d` varchar(2) DEFAULT NULL,
  `dt_adult_hiv_aids_infectious_d` varchar(2) DEFAULT NULL,
  `tt_adult_mental_health_outpati` varchar(2) DEFAULT NULL,
  `dt_adult_mental_health_outpati` varchar(2) DEFAULT NULL,
  `tt_adult_nephrology` varchar(2) DEFAULT NULL,
  `dt_adult_nephrology` varchar(2) DEFAULT NULL,
  `tt_adult_neurology` varchar(2) DEFAULT NULL,
  `dt_adult_neurology` varchar(2) DEFAULT NULL,
  `tt_adult_oncology` varchar(2) DEFAULT NULL,
  `dt_adult_oncology` varchar(2) DEFAULT NULL,
  `tt_adult_ophthalmology` varchar(2) DEFAULT NULL,
  `dt_adult_ophthalmology` varchar(2) DEFAULT NULL,
  `tt_adult_orthopedic_surgery` varchar(2) DEFAULT NULL,
  `dt_adult_orthopedic_surgery` varchar(2) DEFAULT NULL,
  `tt_adult_physical_medicine_and` varchar(2) DEFAULT NULL,
  `dt_adult_physical_medicine_and` varchar(2) DEFAULT NULL,
  `tt_adult_psychiatry` varchar(2) DEFAULT NULL,
  `dt_adult_psychiatry` varchar(2) DEFAULT NULL,
  `tt_adult_pulmonology` varchar(2) DEFAULT NULL,
  `dt_adult_pulmonology` varchar(2) DEFAULT NULL,
  `tt_pediatric_cardiology_interv` varchar(2) DEFAULT NULL,
  `dt_pediatric_cardiology_interv` varchar(2) DEFAULT NULL,
  `tt_pediatric_dermatology` varchar(2) DEFAULT NULL,
  `dt_pediatric_dermatology` varchar(2) DEFAULT NULL,
  `tt_pediatric_endocrinology` varchar(2) DEFAULT NULL,
  `dt_pediatric_endocrinology` varchar(2) DEFAULT NULL,
  `tt_pediatric_ent_otolaryngolog` varchar(2) DEFAULT NULL,
  `dt_pediatric_ent_otolaryngolog` varchar(2) DEFAULT NULL,
  `tt_pediatric_gastroenterology` varchar(2) DEFAULT NULL,
  `dt_pediatric_gastroenterology` varchar(2) DEFAULT NULL,
  `tt_pediatric_general_surgery` varchar(2) DEFAULT NULL,
  `dt_pediatric_general_surgery` varchar(2) DEFAULT NULL,
  `tt_pediatric_hematology` varchar(2) DEFAULT NULL,
  `dt_pediatric_hematology` varchar(2) DEFAULT NULL,
  `tt_pediatric_hiv_aids_infectio` varchar(2) DEFAULT NULL,
  `dt_pediatric_hiv_aids_infectio` varchar(2) DEFAULT NULL,
  `tt_pediatric_mental_health_out` varchar(2) DEFAULT NULL,
  `dt_pediatric_mental_health_out` varchar(2) DEFAULT NULL,
  `tt_pediatric_nephrology` varchar(2) DEFAULT NULL,
  `dt_pediatric_nephrology` varchar(2) DEFAULT NULL,
  `tt_pediatric_neurology` varchar(2) DEFAULT NULL,
  `dt_pediatric_neurology` varchar(2) DEFAULT NULL,
  `tt_pediatric_ophthalmology` varchar(2) DEFAULT NULL,
  `dt_pediatric_ophthalmology` varchar(2) DEFAULT NULL,
  `tt_pediatric_orthopedic_surger` varchar(2) DEFAULT NULL,
  `dt_pediatric_orthopedic_surger` varchar(2) DEFAULT NULL,
  `tt_pediatric_physical_medicine` varchar(2) DEFAULT NULL,
  `dt_pediatric_physical_medicine` varchar(2) DEFAULT NULL,
  `tt_pediatric_psychiatry` varchar(2) DEFAULT NULL,
  `dt_pediatric_psychiatry` varchar(2) DEFAULT NULL,
  `tt_pediatric_pulmonology` varchar(2) DEFAULT NULL,
  `dt_pediatric_pulmonology` varchar(2) DEFAULT NULL,
  `tt_pediatric_oncology` varchar(2) DEFAULT NULL,
  `dt_pediatric_oncology` varchar(0) DEFAULT NULL,
  `loc_code_gcode` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mcna_t_d_standards_by_county`
--

DROP TABLE IF EXISTS `mcna_t_d_standards_by_county`;
CREATE TABLE `mcna_t_d_standards_by_county` (
  `objectid` varchar(2) DEFAULT NULL,
  `state_fips` varchar(2) DEFAULT NULL,
  `county_fips` varchar(3) DEFAULT NULL,
  `county_cd` varchar(2) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `county_size_type` varchar(6) DEFAULT NULL,
  `people_per_sq_mile` varchar(9) DEFAULT NULL,
  `time_threshold_hospitals` varchar(2) DEFAULT NULL,
  `distance_threshold_hospitals` varchar(2) DEFAULT NULL,
  `time_threshold_adult_pcp` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_pcp` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_pcp` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_pc` varchar(2) DEFAULT NULL,
  `time_threshold_ob_gyn_primary` varchar(2) DEFAULT NULL,
  `distance_threshold_ob_gyn_prima` varchar(2) DEFAULT NULL,
  `time_threshold_ob_gyn_specialty` varchar(2) DEFAULT NULL,
  `distance_threshold_ob_gyn_speci` varchar(2) DEFAULT NULL,
  `time_threshold_adult_cardiology` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_cardio` varchar(2) DEFAULT NULL,
  `time_threshold_adult_dermatolog` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_dermat` varchar(2) DEFAULT NULL,
  `time_threshold_adult_endocrinol` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_endocr` varchar(2) DEFAULT NULL,
  `time_threshold_adult_ent_otolar` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_ent_ot` varchar(2) DEFAULT NULL,
  `time_threshold_adult_gastroente` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_gastro` varchar(2) DEFAULT NULL,
  `time_threshold_adult_general_su` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_genera` varchar(2) DEFAULT NULL,
  `time_threshold_adult_hematology` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_hemato` varchar(2) DEFAULT NULL,
  `time_threshold_adult_hiv_aids_i` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_hiv_ai` varchar(2) DEFAULT NULL,
  `time_threshold_adult_mental_hea` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_mental` varchar(2) DEFAULT NULL,
  `time_threshold_adult_nephrology` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_nephro` varchar(2) DEFAULT NULL,
  `time_threshold_adult_neurology` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_neurol` varchar(2) DEFAULT NULL,
  `time_threshold_adult_oncology` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_oncolo` varchar(2) DEFAULT NULL,
  `time_threshold_adult_ophthalmol` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_ophtha` varchar(2) DEFAULT NULL,
  `time_threshold_adult_orthopedic` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_orthop` varchar(2) DEFAULT NULL,
  `time_threshold_adult_physical_m` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_physic` varchar(2) DEFAULT NULL,
  `time_threshold_adult_psychiatry` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_psychi` varchar(2) DEFAULT NULL,
  `time_threshold_adult_pulmonolog` varchar(2) DEFAULT NULL,
  `distance_threshold_adult_pulmon` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_cardio` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ca` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_dermat` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_de` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_endocr` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_en` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_ent_ot` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_1` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_gastro` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ga` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_genera` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ge` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_hemato` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_he` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_hiv_ai` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_hi` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_mental` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_me` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_nephro` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ne` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_neurol` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_2` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_ophtha` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_op` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_orthop` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_or` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_physic` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ph` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_psychi` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_ps` varchar(2) DEFAULT NULL,
  `time_threshold_pediatric_pulmon` varchar(2) DEFAULT NULL,
  `distance_threshold_pediatric_pu` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `measurable_hospital_acquired_conditions_composite_patie_7d8794fc`
--

DROP TABLE IF EXISTS `measurable_hospital_acquired_conditions_composite_patie_7d8794fc`;
CREATE TABLE `measurable_hospital_acquired_conditions_composite_patie_7d8794fc` (
  `year` varchar(4) DEFAULT NULL,
  `psi_composite_rate` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(4) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL,
  `software_version` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_annual_renewals_by_county`
--

DROP TABLE IF EXISTS `medi_cal_annual_renewals_by_county`;
CREATE TABLE `medi_cal_annual_renewals_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `renewal_due_month` varchar(8) DEFAULT NULL,
  `renewal_processing_timeframe` varchar(30) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `saws` varchar(7) DEFAULT NULL,
  `eligibility_financial_method` varchar(8) DEFAULT NULL,
  `renewals_due` varchar(7) DEFAULT NULL,
  `renewals_completed` varchar(7) DEFAULT NULL,
  `renewals_completed_by_due_date` varchar(7) DEFAULT NULL,
  `continued_medi_cal_eligibility` varchar(7) DEFAULT NULL,
  `auto_ex_parte` varchar(7) DEFAULT NULL,
  `manual_ex_parte` varchar(5) DEFAULT NULL,
  `discontinued__failure_to_respond` varchar(6) DEFAULT NULL,
  `discontinued__over_income_magi__over_property_non_magi` varchar(5) DEFAULT NULL,
  `discontinued__other_reasons` varchar(6) DEFAULT NULL,
  `reinstated` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_code_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_births_by_cy_aid_cat_and_select_birth_chars`
--

DROP TABLE IF EXISTS `medi_cal_births_by_cy_aid_cat_and_select_birth_chars`;
CREATE TABLE `medi_cal_births_by_cy_aid_cat_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `aid_category` varchar(40) DEFAULT NULL,
  `grouper` varchar(27) DEFAULT NULL,
  `birth_characteristic` varchar(33) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_dental_fee_for_service_ffs_monthly_provider_en_f25db601`
--

DROP TABLE IF EXISTS `medi_cal_dental_fee_for_service_ffs_monthly_provider_en_f25db601`;
CREATE TABLE `medi_cal_dental_fee_for_service_ffs_monthly_provider_en_f25db601` (
  `month_year` varchar(14) DEFAULT NULL,
  `rendering_providers` varchar(19) DEFAULT NULL,
  `active_service_offices` varchar(22) DEFAULT NULL,
  `safety_net_clinics` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_dental_fee_for_service_provider_listing`
--

DROP TABLE IF EXISTS `medi_cal_dental_fee_for_service_provider_listing`;
CREATE TABLE `medi_cal_dental_fee_for_service_provider_listing` (
  `objectid` varchar(5) DEFAULT NULL,
  `provider_npi` varchar(10) DEFAULT NULL,
  `billing_provider_number` varchar(10) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_legal_name` varchar(28) DEFAULT NULL,
  `enrollment_status_effective_date` varchar(22) DEFAULT NULL,
  `provider_type_code` varchar(2) DEFAULT NULL,
  `provider_type_code_desc` varchar(43) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `provider_specialty_code_desc` varchar(77) DEFAULT NULL,
  `provider_language_code` varchar(1) DEFAULT NULL,
  `provider_language_code_desc` varchar(10) DEFAULT NULL,
  `billing_provider_address_attention_line` varchar(28) DEFAULT NULL,
  `billing_provider_address_1` varchar(24) DEFAULT NULL,
  `billing_provider_address_2` varchar(24) DEFAULT NULL,
  `billing_provider_city` varchar(17) DEFAULT NULL,
  `billing_provider_state` varchar(2) DEFAULT NULL,
  `billing_provider_zip` varchar(5) DEFAULT NULL,
  `provider_county_code` varchar(2) DEFAULT NULL,
  `provider_county_desc` varchar(15) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_enrollment_by_eligibility_group`
--

DROP TABLE IF EXISTS `medi_cal_enrollment_by_eligibility_group`;
CREATE TABLE `medi_cal_enrollment_by_eligibility_group` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(8) DEFAULT NULL,
  `eligibility_group` varchar(14) DEFAULT NULL,
  `number_of_enrollees` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_fpact_provider_listing`
--

DROP TABLE IF EXISTS `medi_cal_fpact_provider_listing`;
CREATE TABLE `medi_cal_fpact_provider_listing` (
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(4) DEFAULT NULL,
  `rec_id` varchar(36) DEFAULT NULL,
  `provider_source` varchar(5) DEFAULT NULL,
  `provider_number` varchar(15) DEFAULT NULL,
  `owner_number` varchar(1) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_name` varchar(35) DEFAULT NULL,
  `business_name` varchar(35) DEFAULT NULL,
  `enroll_stat_effective_dt` varchar(13) DEFAULT NULL,
  `fi_category_of_service_cd` varchar(3) DEFAULT NULL,
  `fi_category_of_service` varchar(44) DEFAULT NULL,
  `enroll_stat_cd` varchar(1) DEFAULT NULL,
  `fi_provider_type_cd` varchar(3) DEFAULT NULL,
  `fi_provider_type` varchar(54) DEFAULT NULL,
  `address_attention` varchar(24) DEFAULT NULL,
  `address` varchar(24) DEFAULT NULL,
  `address2` varchar(24) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `zip_4` varchar(4) DEFAULT NULL,
  `dhcs_county_cd` varchar(2) DEFAULT NULL,
  `fips_county_cd` varchar(5) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `countyname` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_support_annual_data`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_support_annual_data`;
CREATE TABLE `medi_cal_long_term_services_and_support_annual_data` (
  `measure_sort` varchar(2) DEFAULT NULL,
  `measure_code` varchar(37) DEFAULT NULL,
  `measure_label` varchar(172) DEFAULT NULL,
  `2017_value_value` varchar(13) DEFAULT NULL,
  `2018_value_value` varchar(13) DEFAULT NULL,
  `2019_value_value` varchar(13) DEFAULT NULL,
  `2020_value_value` varchar(13) DEFAULT NULL,
  `2021_value_value` varchar(13) DEFAULT NULL,
  `2022_value_value` varchar(10) DEFAULT NULL,
  `absolute_change` varchar(13) DEFAULT NULL,
  `percent_change` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_support_annual_data_archived`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_support_annual_data_archived`;
CREATE TABLE `medi_cal_long_term_services_and_support_annual_data_archived` (
  `measure_sort` varchar(2) DEFAULT NULL,
  `measure_code` varchar(37) DEFAULT NULL,
  `measure_label` varchar(145) DEFAULT NULL,
  `2017_value_value` varchar(10) DEFAULT NULL,
  `2018_value_value` varchar(10) DEFAULT NULL,
  `2019_value_value` varchar(10) DEFAULT NULL,
  `2020_value_value` varchar(10) DEFAULT NULL,
  `2021_value_value` varchar(10) DEFAULT NULL,
  `absolute_change` varchar(8) DEFAULT NULL,
  `percent_change` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(39) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `hedis_reporting_county` varchar(3) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(50) DEFAULT NULL,
  `value` varchar(13) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2017`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2017`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2017` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(9) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2018`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2018`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2018` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(9) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2019`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2019`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2019` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(9) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2020`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2020`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2020` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(9) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2021`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2021`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2021` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(9) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_2022`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_2022`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_2022` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_parent` varchar(38) DEFAULT NULL,
  `measure` varchar(38) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(17) DEFAULT NULL,
  `value` varchar(10) DEFAULT NULL,
  `data_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_long_term_services_and_supports_data_archived`
--

DROP TABLE IF EXISTS `medi_cal_long_term_services_and_supports_data_archived`;
CREATE TABLE `medi_cal_long_term_services_and_supports_data_archived` (
  `measure_sort` varchar(5) DEFAULT NULL,
  `measure` varchar(37) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `dimension` varchar(23) DEFAULT NULL,
  `dimension_detail` varchar(39) DEFAULT NULL,
  `value` varchar(8) DEFAULT NULL,
  `value_type` varchar(7) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medi_cal_managed_care_enrollment_report`
--

DROP TABLE IF EXISTS `medi_cal_managed_care_enrollment_report`;
CREATE TABLE `medi_cal_managed_care_enrollment_report` (
  `enrollment_month` varchar(7) DEFAULT NULL,
  `plan_type` varchar(31) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `plan_name` varchar(55) DEFAULT NULL,
  `count_of_enrollees` varchar(11) DEFAULT NULL,
  `count_of_enrollees_annotation_code` varchar(4) DEFAULT NULL,
  `count_of_enrollees_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medicaid_eligibility_by_aid_code`
--

DROP TABLE IF EXISTS `medicaid_eligibility_by_aid_code`;
CREATE TABLE `medicaid_eligibility_by_aid_code` (
  `aid_code` varchar(2) DEFAULT NULL,
  `aid_code_name` varchar(172) DEFAULT NULL,
  `benefits` varchar(36) DEFAULT NULL,
  `eligibility_group` varchar(171) DEFAULT NULL,
  `short_description` varchar(293) DEFAULT NULL,
  `group_code` varchar(32) DEFAULT NULL,
  `type_name` varchar(12) DEFAULT NULL,
  `federal_category` varchar(17) DEFAULT NULL,
  `medicaid_or_chip` varchar(8) DEFAULT NULL,
  `social_security_act_citation` varchar(96) DEFAULT NULL,
  `code_of_federal_regulations_citation` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medicaid_eligibility_by_aid_code_change_log`
--

DROP TABLE IF EXISTS `medicaid_eligibility_by_aid_code_change_log`;
CREATE TABLE `medicaid_eligibility_by_aid_code_change_log` (
  `date` varchar(10) DEFAULT NULL,
  `tmsis_change_description` varchar(931) DEFAULT NULL
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
-- Table structure for table `medical_managed_care_provider_listing`
--

DROP TABLE IF EXISTS `medical_managed_care_provider_listing`;
CREATE TABLE `medical_managed_care_provider_listing` (
  `x` varchar(17) DEFAULT NULL,
  `y` varchar(16) DEFAULT NULL,
  `objectid` varchar(7) DEFAULT NULL,
  `managedcareplan` varchar(44) DEFAULT NULL,
  `subnetwork` varchar(53) DEFAULT NULL,
  `plancode` varchar(3) DEFAULT NULL,
  `recordtype` varchar(8) DEFAULT NULL,
  `npi` varchar(10) DEFAULT NULL,
  `facilityname` varchar(60) DEFAULT NULL,
  `lastname` varchar(33) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `taxonomy` varchar(10) DEFAULT NULL,
  `mcnaprovidergroup` varchar(34) DEFAULT NULL,
  `mcnaprovidertype` varchar(36) DEFAULT NULL,
  `facilitytype` varchar(49) DEFAULT NULL,
  `licensuretype` varchar(3) DEFAULT NULL,
  `primarycare` varchar(1) DEFAULT NULL,
  `specialist` varchar(1) DEFAULT NULL,
  `seeschildren` varchar(3) DEFAULT NULL,
  `telehealth` varchar(3) DEFAULT NULL,
  `bhindicator` varchar(16) DEFAULT NULL,
  `address` varchar(48) DEFAULT NULL,
  `address2` varchar(55) DEFAULT NULL,
  `city` varchar(22) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `zip_4` varchar(5) DEFAULT NULL,
  `longitude` varchar(17) DEFAULT NULL,
  `latitude` varchar(16) DEFAULT NULL,
  `dhcscountycode` varchar(2) DEFAULT NULL,
  `fipscd` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medical_service_study_area_data_dictionary`
--

DROP TABLE IF EXISTS `medical_service_study_area_data_dictionary`;
CREATE TABLE `medical_service_study_area_data_dictionary` (
  `field_name` varchar(11) DEFAULT NULL,
  `data_type` varchar(6) DEFAULT NULL,
  `description` varchar(127) DEFAULT NULL,
  `fid` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medical_service_study_areas`
--

DROP TABLE IF EXISTS `medical_service_study_areas`;
CREATE TABLE `medical_service_study_areas` (
  `fid` varchar(4) DEFAULT NULL,
  `statefp` varchar(2) DEFAULT NULL,
  `countyfp` varchar(3) DEFAULT NULL,
  `countynm` varchar(15) DEFAULT NULL,
  `tractce` varchar(6) DEFAULT NULL,
  `geoid` varchar(11) DEFAULT NULL,
  `aland` varchar(11) DEFAULT NULL,
  `awater` varchar(10) DEFAULT NULL,
  `asqmi` varchar(16) DEFAULT NULL,
  `intptlat` varchar(11) DEFAULT NULL,
  `intptlon` varchar(12) DEFAULT NULL,
  `mssaid` varchar(8) DEFAULT NULL,
  `mssanm` varchar(153) DEFAULT NULL,
  `definition` varchar(8) DEFAULT NULL,
  `totalpovpo` varchar(5) DEFAULT NULL,
  `shape_area` varchar(16) DEFAULT NULL,
  `shape_length` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medicare_advantage_enrollment_among_californias_dual_me_39415ec7`
--

DROP TABLE IF EXISTS `medicare_advantage_enrollment_among_californias_dual_me_39415ec7`;
CREATE TABLE `medicare_advantage_enrollment_among_californias_dual_me_39415ec7` (
  `county` varchar(15) DEFAULT NULL,
  `dual_eligible_beneficiaries_enrolled_in_an_ma_plan` varchar(9) DEFAULT NULL,
  `percentage_of_dual_eligibles_in_an_ma_plan` varchar(5) DEFAULT NULL,
  `dual_eligible_beneficiaries_enrolled_in_original_medicare` varchar(9) DEFAULT NULL,
  `percentage_of_duals_in_original_medicare` varchar(5) DEFAULT NULL,
  `total_dual_eligible_beneficiaries` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medicare_advantage_enrollment_among_californias_medicar_c71574c8`
--

DROP TABLE IF EXISTS `medicare_advantage_enrollment_among_californias_medicar_c71574c8`;
CREATE TABLE `medicare_advantage_enrollment_among_californias_medicar_c71574c8` (
  `county` varchar(15) DEFAULT NULL,
  `dual_eligible_beneficiaries_enrolled_in_an_ma_plan` varchar(11) DEFAULT NULL,
  `percentage_of_medicare_only_beneficiaries_in_an_ma_plan` varchar(5) DEFAULT NULL,
  `total_original_medicare_beneficiaries` varchar(11) DEFAULT NULL,
  `percentage_of_medicare_only_beneficiaries_in_original_medicare` varchar(5) DEFAULT NULL,
  `total_of_medicare_only_beneficiaries` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medication_assisted_treatment_in_medi_cal_for_opioid_us_12eabaab`
--

DROP TABLE IF EXISTS `medication_assisted_treatment_in_medi_cal_for_opioid_us_12eabaab`;
CREATE TABLE `medication_assisted_treatment_in_medi_cal_for_opioid_us_12eabaab` (
  `county` varchar(18) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `quarter` varchar(2) DEFAULT NULL,
  `medication_assisted_treatment` varchar(17) DEFAULT NULL,
  `beneficiaries` varchar(5) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `medication_assisted_treatment_in_medi_cal_for_opioid_us_9c83665c`
--

DROP TABLE IF EXISTS `medication_assisted_treatment_in_medi_cal_for_opioid_us_9c83665c`;
CREATE TABLE `medication_assisted_treatment_in_medi_cal_for_opioid_us_9c83665c` (
  `county` varchar(18) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `medication_assisted_treatment` varchar(17) DEFAULT NULL,
  `beneficiaries` varchar(5) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `annotation` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL,
  `date_of_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mental_health_residential_programs`
--

DROP TABLE IF EXISTS `mental_health_residential_programs`;
CREATE TABLE `mental_health_residential_programs` (
  `type` varchar(5) DEFAULT NULL,
  `licensee` varchar(59) DEFAULT NULL,
  `program_name` varchar(63) DEFAULT NULL,
  `type_of_application` varchar(9) DEFAULT NULL,
  `licensing_department` varchar(4) DEFAULT NULL,
  `beds` varchar(3) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `facility_address` varchar(83) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `certificate_number` varchar(15) DEFAULT NULL
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
-- Table structure for table `month_of_elig_age_group_and_sex_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_age_group_and_sex_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_age_group_and_sex_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_aid_category_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_aid_category_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_aid_category_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(21) DEFAULT NULL,
  `aid_category` varchar(37) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_of_data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_delvry_sys_and_health_plan_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_delvry_sys_and_health_plan_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_delvry_sys_and_health_plan_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_delivery_system` varchar(15) DEFAULT NULL,
  `health_plan` varchar(57) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_dual_status_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_dual_status_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_dual_status_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(19) DEFAULT NULL,
  `dual_status` varchar(9) DEFAULT NULL,
  `total_eligibles` varchar(12) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_of_data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_medicare_status_and_age_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_medicare_status_and_age_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_medicare_status_and_age_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `dual_status` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_primary_lang_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_primary_lang_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_primary_lang_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `month_of_elig_race_ethnic_and_age_by_county_medi_cal_elig`
--

DROP TABLE IF EXISTS `month_of_elig_race_ethnic_and_age_by_county_medi_cal_elig`;
CREATE TABLE `month_of_elig_race_ethnic_and_age_by_county_medi_cal_elig` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(15) DEFAULT NULL,
  `ethnicity` varchar(15) DEFAULT NULL,
  `total_eligibles` varchar(10) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(38) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_data` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mortality_following_hip_fracture_repair_in_california_hospitals`
--

DROP TABLE IF EXISTS `mortality_following_hip_fracture_repair_in_california_hospitals`;
CREATE TABLE `mortality_following_hip_fracture_repair_in_california_hospitals` (
  `year` varchar(9) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(67) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL,
  `num_of_deaths` varchar(4) DEFAULT NULL,
  `observed_rate` varchar(5) DEFAULT NULL,
  `expected_rate` varchar(4) DEFAULT NULL,
  `risk_adjusted_mortality_rate` varchar(5) DEFAULT NULL,
  `hospital_ratings` varchar(11) DEFAULT NULL,
  `location` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_bsi_in_hospitals_2021`
--

DROP TABLE IF EXISTS `mrsa_bsi_in_hospitals_2021`;
CREATE TABLE `mrsa_bsi_in_hospitals_2021` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(63) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `hospital_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(67) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_bsi_in_hospitals_2022`
--

DROP TABLE IF EXISTS `mrsa_bsi_in_hospitals_2022`;
CREATE TABLE `mrsa_bsi_in_hospitals_2022` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `hospital_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_bsi_in_hospitals_2023`
--

DROP TABLE IF EXISTS `mrsa_bsi_in_hospitals_2023`;
CREATE TABLE `mrsa_bsi_in_hospitals_2023` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `hospital_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `met_2020_goal` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_bsi_in_january_through_june_2020_updated_annually`
--

DROP TABLE IF EXISTS `mrsa_bsi_in_january_through_june_2020_updated_annually`;
CREATE TABLE `mrsa_bsi_in_january_through_june_2020_updated_annually` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_bsi_in_july_through_december_2020_updated_annually`
--

DROP TABLE IF EXISTS `mrsa_bsi_in_july_through_december_2020_updated_annually`;
CREATE TABLE `mrsa_bsi_in_july_through_december_2020_updated_annually` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(5) DEFAULT NULL,
  `months` varchar(1) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2013`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2013`;
CREATE TABLE `mrsa_in_hospitals_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `facility_name2` varchar(63) DEFAULT NULL,
  `facility_name3` varchar(56) DEFAULT NULL,
  `facid1` varchar(9) DEFAULT NULL,
  `facid2` varchar(9) DEFAULT NULL,
  `facid3` varchar(9) DEFAULT NULL,
  `county` varchar(22) DEFAULT NULL,
  `infection_count` varchar(2) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_95pct_ci_lower_limit` varchar(4) DEFAULT NULL,
  `sir_95pct_ci_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(12) DEFAULT NULL,
  `notes` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2014`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2014`;
CREATE TABLE `mrsa_in_hospitals_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(69) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `predicted_cases` varchar(5) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(12) DEFAULT NULL,
  `notes` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2015`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2015`;
CREATE TABLE `mrsa_in_hospitals_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(67) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `predicted_cases` varchar(5) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(13) DEFAULT NULL,
  `notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2016`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2016`;
CREATE TABLE `mrsa_in_hospitals_2016` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(82) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_category` varchar(82) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(5) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2017`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2017`;
CREATE TABLE `mrsa_in_hospitals_2017` (
  `year` varchar(8) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(31) DEFAULT NULL,
  `hospital_type` varchar(54) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(7) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(5) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `on_track` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2018`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2018`;
CREATE TABLE `mrsa_in_hospitals_2018` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(82) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(82) DEFAULT NULL,
  `hospital_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track_toward_2020_goal_0_70_2018` varchar(3) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_hospitals_2019`
--

DROP TABLE IF EXISTS `mrsa_in_hospitals_2019`;
CREATE TABLE `mrsa_in_hospitals_2019` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(77) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `hospital_category_riskadjustment` varchar(67) DEFAULT NULL,
  `facility_type` varchar(67) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `infections_predicted` varchar(6) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `sir` varchar(4) DEFAULT NULL,
  `sir_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `sir_ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `on_track` varchar(3) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `sir_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_long_term_acute_care_2013`
--

DROP TABLE IF EXISTS `mrsa_in_long_term_acute_care_2013`;
CREATE TABLE `mrsa_in_long_term_acute_care_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_name` varchar(56) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `incidence_rate` varchar(4) DEFAULT NULL,
  `95pct_confidence_interval_lower_limit` varchar(4) DEFAULT NULL,
  `95pct_confidence_interval_upper_limit` varchar(5) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(12) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_long_term_acute_care_2014`
--

DROP TABLE IF EXISTS `mrsa_in_long_term_acute_care_2014`;
CREATE TABLE `mrsa_in_long_term_acute_care_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(52) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `incidence_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(4) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(12) DEFAULT NULL,
  `notes` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_long_term_acute_care_2015`
--

DROP TABLE IF EXISTS `mrsa_in_long_term_acute_care_2015`;
CREATE TABLE `mrsa_in_long_term_acute_care_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(11) DEFAULT NULL,
  `facility_name1` varchar(54) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(13) DEFAULT NULL,
  `notes` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_rehabilitation_acute_care_2013`
--

DROP TABLE IF EXISTS `mrsa_in_rehabilitation_acute_care_2013`;
CREATE TABLE `mrsa_in_rehabilitation_acute_care_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_name` varchar(56) DEFAULT NULL,
  `facid` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `cases` varchar(1) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `incidence_rate` varchar(1) DEFAULT NULL,
  `95pct_confidence_interval_lower_limit` varchar(1) DEFAULT NULL,
  `95pct_confidence_interval_upper_limit` varchar(5) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(12) DEFAULT NULL,
  `notes` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_rehabilitation_acute_care_2014`
--

DROP TABLE IF EXISTS `mrsa_in_rehabilitation_acute_care_2014`;
CREATE TABLE `mrsa_in_rehabilitation_acute_care_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(48) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `cases` varchar(1) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `incidence_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(12) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `mrsa_in_rehabilitation_acute_care_2015`
--

DROP TABLE IF EXISTS `mrsa_in_rehabilitation_acute_care_2015`;
CREATE TABLE `mrsa_in_rehabilitation_acute_care_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(76) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(58) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_onset_cases` varchar(1) DEFAULT NULL,
  `patient_days` varchar(5) DEFAULT NULL,
  `hospital_onset_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(5) DEFAULT NULL,
  `comparison` varchar(13) DEFAULT NULL,
  `notes` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `multi_year_medi_cal_dental_measures_data_by_age_groups__8326097c`
--

DROP TABLE IF EXISTS `multi_year_medi_cal_dental_measures_data_by_age_groups__8326097c`;
CREATE TABLE `multi_year_medi_cal_dental_measures_data_by_age_groups__8326097c` (
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(113) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(0) DEFAULT NULL,
  `users_annotation_description` varchar(0) DEFAULT NULL,
  `denominator` varchar(9) DEFAULT NULL,
  `denominator_annotation_code` varchar(0) DEFAULT NULL,
  `denominator_annotation_description` varchar(0) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(0) DEFAULT NULL,
  `utilization_annotation_description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `multi_year_medi_cal_dental_measures_data_by_county_and__7a43c761`
--

DROP TABLE IF EXISTS `multi_year_medi_cal_dental_measures_data_by_county_and__7a43c761`;
CREATE TABLE `multi_year_medi_cal_dental_measures_data_by_county_and__7a43c761` (
  `county` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(7) DEFAULT NULL,
  `measure` varchar(113) DEFAULT NULL,
  `age_filter` varchar(9) DEFAULT NULL,
  `users` varchar(7) DEFAULT NULL,
  `users_annotation_code` varchar(1) DEFAULT NULL,
  `users_annotation_description` varchar(38) DEFAULT NULL,
  `denominator` varchar(7) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator_annotation_description` varchar(38) DEFAULT NULL,
  `utilization_pct` varchar(6) DEFAULT NULL,
  `utilization_annotation_code` varchar(1) DEFAULT NULL,
  `utilization_annotation_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `near_drowning_by_age_group`
--

DROP TABLE IF EXISTS `near_drowning_by_age_group`;
CREATE TABLE `near_drowning_by_age_group` (
  `period` varchar(7) DEFAULT NULL,
  `agegrp` varchar(10) DEFAULT NULL,
  `consumers` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `near_drowning_by_residence_type`
--

DROP TABLE IF EXISTS `near_drowning_by_residence_type`;
CREATE TABLE `near_drowning_by_residence_type` (
  `period` varchar(7) DEFAULT NULL,
  `reside` varchar(28) DEFAULT NULL,
  `consumers` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `newly_eligible_individuals_by_insurance_affordability_p_8c140869`
--

DROP TABLE IF EXISTS `newly_eligible_individuals_by_insurance_affordability_p_8c140869`;
CREATE TABLE `newly_eligible_individuals_by_insurance_affordability_p_8c140869` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `program` varchar(35) DEFAULT NULL,
  `number_of_eligible_individuals_who_plan_selected` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `newly_eligible_individuals_enrolled_in_medi_cal_managed_0e702054`
--

DROP TABLE IF EXISTS `newly_eligible_individuals_enrolled_in_medi_cal_managed_0e702054`;
CREATE TABLE `newly_eligible_individuals_enrolled_in_medi_cal_managed_0e702054` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `medi_cal_managed_care_health_plan` varchar(27) DEFAULT NULL,
  `enrollment_type` varchar(7) DEFAULT NULL,
  `number_of_newly_eligible_individuals` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `newly_medicare_eligible_age_and_gender`
--

DROP TABLE IF EXISTS `newly_medicare_eligible_age_and_gender`;
CREATE TABLE `newly_medicare_eligible_age_and_gender` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `age_group` varchar(8) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_and_percentage_of_sexually_transmitted_infection_118d8291`
--

DROP TABLE IF EXISTS `number_and_percentage_of_sexually_transmitted_infection_118d8291`;
CREATE TABLE `number_and_percentage_of_sexually_transmitted_infection_118d8291` (
  `fiscal_years_fy` varchar(4) DEFAULT NULL,
  `sti_test_type` varchar(26) DEFAULT NULL,
  `number_of_sti_tests_provided` varchar(9) DEFAULT NULL,
  `percentage_of_sti_tests_provided` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_cancer_surgeries_volume_performed_in_californ_08432765`
--

DROP TABLE IF EXISTS `number_of_cancer_surgeries_volume_performed_in_californ_08432765`;
CREATE TABLE `number_of_cancer_surgeries_volume_performed_in_californ_08432765` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `surgery` varchar(9) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `hospital` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_family_pact_clients_provided_sterilization_se_f4f9ee03`
--

DROP TABLE IF EXISTS `number_of_family_pact_clients_provided_sterilization_se_f4f9ee03`;
CREATE TABLE `number_of_family_pact_clients_provided_sterilization_se_f4f9ee03` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `sterilization_services` varchar(19) DEFAULT NULL,
  `number_of_clients` varchar(20) DEFAULT NULL,
  `percentage_change` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_family_pact_clients_served_with_family_planni_9b8288cf`
--

DROP TABLE IF EXISTS `number_of_family_pact_clients_served_with_family_planni_9b8288cf`;
CREATE TABLE `number_of_family_pact_clients_served_with_family_planni_9b8288cf` (
  `fiscal_year_fy` varchar(4) DEFAULT NULL,
  `number_of_clients_served` varchar(7) DEFAULT NULL,
  `contraceptive_method` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_individuals_transitioned_from_covered_califor_04af0d5a`
--

DROP TABLE IF EXISTS `number_of_individuals_transitioned_from_covered_califor_04af0d5a`;
CREATE TABLE `number_of_individuals_transitioned_from_covered_califor_04af0d5a` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `number_of_individuals_transitioned_from_qhp_to_medi_cal` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0`
--

DROP TABLE IF EXISTS `number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0`;
CREATE TABLE `number_of_selected_inpatient_medical_procedures_in_cali_1a9ed5e0` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_name` varchar(80) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_name` varchar(38) DEFAULT NULL,
  `volume` varchar(5) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `location` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_selected_inpatient_medical_procedures_in_cali_6c6615af`
--

DROP TABLE IF EXISTS `number_of_selected_inpatient_medical_procedures_in_cali_6c6615af`;
CREATE TABLE `number_of_selected_inpatient_medical_procedures_in_cali_6c6615af` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(79) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_name` varchar(38) DEFAULT NULL,
  `volume` varchar(5) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `number_of_weight_loss_surgeries_performed_in_california_1c367c9d`
--

DROP TABLE IF EXISTS `number_of_weight_loss_surgeries_performed_in_california_1c367c9d`;
CREATE TABLE `number_of_weight_loss_surgeries_performed_in_california_1c367c9d` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `hospital` varchar(80) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `surgery` varchar(8) DEFAULT NULL,
  `num_of_cases` varchar(5) DEFAULT NULL,
  `location_1` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `obesity_in_california_2012_and_2013`
--

DROP TABLE IF EXISTS `obesity_in_california_2012_and_2013`;
CREATE TABLE `obesity_in_california_2012_and_2013` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(18) DEFAULT NULL,
  `category` varchar(22) DEFAULT NULL,
  `type` varchar(35) DEFAULT NULL,
  `obese_pct` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `older_ae_50_and_over_population_by_county`
--

DROP TABLE IF EXISTS `older_ae_50_and_over_population_by_county`;
CREATE TABLE `older_ae_50_and_over_population_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(8) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `older_americans_act_title_iiic_1_nutrition_services_con_2cddfb7f`
--

DROP TABLE IF EXISTS `older_americans_act_title_iiic_1_nutrition_services_con_2cddfb7f`;
CREATE TABLE `older_americans_act_title_iiic_1_nutrition_services_con_2cddfb7f` (
  `year` varchar(4) DEFAULT NULL,
  `planning_and_service_area` varchar(2) DEFAULT NULL,
  `participant_key_characteristics_category` varchar(19) DEFAULT NULL,
  `participant_key_characteristics_sub_category` varchar(35) DEFAULT NULL,
  `number_of_participants` varchar(5) DEFAULT NULL,
  `notes` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `older_americans_act_title_iiic_2_nutrition_services_hom_f517466d`
--

DROP TABLE IF EXISTS `older_americans_act_title_iiic_2_nutrition_services_hom_f517466d`;
CREATE TABLE `older_americans_act_title_iiic_2_nutrition_services_hom_f517466d` (
  `year` varchar(4) DEFAULT NULL,
  `planning_and_service_area` varchar(2) DEFAULT NULL,
  `participant_key_characteristics_category` varchar(19) DEFAULT NULL,
  `participant_key_characteristics_sub_category` varchar(38) DEFAULT NULL,
  `number_of_participants` varchar(4) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL
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
-- Table structure for table `outpatient_influenza_like_illness_surveillance_data_by__9bfd4d40`
--

DROP TABLE IF EXISTS `outpatient_influenza_like_illness_surveillance_data_by__9bfd4d40`;
CREATE TABLE `outpatient_influenza_like_illness_surveillance_data_by__9bfd4d40` (
  `season` varchar(9) DEFAULT NULL,
  `date_code` varchar(6) DEFAULT NULL,
  `weekending` varchar(10) DEFAULT NULL,
  `region` varchar(14) DEFAULT NULL,
  `total_ili` varchar(4) DEFAULT NULL,
  `total_patients_seen` varchar(5) DEFAULT NULL,
  `percent_ili` varchar(5) DEFAULT NULL,
  `number_providers_reporting` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2015`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2015`;
CREATE TABLE `pace_rates_calendar_year_2015` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `rate` varchar(11) DEFAULT NULL,
  `awop` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2016`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2016`;
CREATE TABLE `pace_rates_calendar_year_2016` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `rate` varchar(11) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2017`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2017`;
CREATE TABLE `pace_rates_calendar_year_2017` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `rate` varchar(12) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2018`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2018`;
CREATE TABLE `pace_rates_calendar_year_2018` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2019`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2019`;
CREATE TABLE `pace_rates_calendar_year_2019` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL,
  `awop` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2020`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2020`;
CREATE TABLE `pace_rates_calendar_year_2020` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2021`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2021`;
CREATE TABLE `pace_rates_calendar_year_2021` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(7) DEFAULT NULL,
  `upper_bound` varchar(8) DEFAULT NULL,
  `awop` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2022`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2022`;
CREATE TABLE `pace_rates_calendar_year_2022` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(9) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL,
  `awop` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2023`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2023`;
CREATE TABLE `pace_rates_calendar_year_2023` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(36) DEFAULT NULL,
  `category_of_aid` varchar(34) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(12) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `pace_rates_calendar_year_2024`
--

DROP TABLE IF EXISTS `pace_rates_calendar_year_2024`;
CREATE TABLE `pace_rates_calendar_year_2024` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `pace_organization` varchar(51) DEFAULT NULL,
  `category_of_aid` varchar(34) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(12) DEFAULT NULL,
  `awop` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_age`
--

DROP TABLE IF EXISTS `patient_demographics_age`;
CREATE TABLE `patient_demographics_age` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `grouping_name` varchar(9) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_citizenship_status`
--

DROP TABLE IF EXISTS `patient_demographics_citizenship_status`;
CREATE TABLE `patient_demographics_citizenship_status` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `citizenship_status` varchar(7) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_counts_by_hospital`
--

DROP TABLE IF EXISTS `patient_demographics_counts_by_hospital`;
CREATE TABLE `patient_demographics_counts_by_hospital` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `hospital` varchar(18) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_education`
--

DROP TABLE IF EXISTS `patient_demographics_education`;
CREATE TABLE `patient_demographics_education` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `education` varchar(21) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_ethnicity`
--

DROP TABLE IF EXISTS `patient_demographics_ethnicity`;
CREATE TABLE `patient_demographics_ethnicity` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `ethnicity` varchar(13) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_language_at_home`
--

DROP TABLE IF EXISTS `patient_demographics_language_at_home`;
CREATE TABLE `patient_demographics_language_at_home` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `language_spoken_at_home` varchar(13) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_level_of_care`
--

DROP TABLE IF EXISTS `patient_demographics_level_of_care`;
CREATE TABLE `patient_demographics_level_of_care` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `level_of_care` varchar(11) DEFAULT NULL,
  `count_of_caseid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_marital_status`
--

DROP TABLE IF EXISTS `patient_demographics_marital_status`;
CREATE TABLE `patient_demographics_marital_status` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `marital_status` varchar(18) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_region`
--

DROP TABLE IF EXISTS `patient_demographics_region`;
CREATE TABLE `patient_demographics_region` (
  `years` varchar(4) DEFAULT NULL,
  `region` varchar(21) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patient_demographics_sex`
--

DROP TABLE IF EXISTS `patient_demographics_sex`;
CREATE TABLE `patient_demographics_sex` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `patient_counts` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `patients_leaving_california_hospitals_against_medical_advice`
--

DROP TABLE IF EXISTS `patients_leaving_california_hospitals_against_medical_advice`;
CREATE TABLE `patients_leaving_california_hospitals_against_medical_advice` (
  `category` varchar(20) DEFAULT NULL,
  `subcategory` varchar(44) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `pct_ama_discharges` varchar(6) DEFAULT NULL,
  `pct_ama_discharges_gt_1x` varchar(5) DEFAULT NULL,
  `all_discharges` varchar(7) DEFAULT NULL,
  `ama_discharges` varchar(5) DEFAULT NULL,
  `ama_discharges_more_than_once` varchar(5) DEFAULT NULL
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
-- Table structure for table `pcs_quarterly_received_claims`
--

DROP TABLE IF EXISTS `pcs_quarterly_received_claims`;
CREATE TABLE `pcs_quarterly_received_claims` (
  `qtr` varchar(1) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `plan_name` varchar(78) DEFAULT NULL,
  `provider_type` varchar(36) DEFAULT NULL,
  `nature_of_complaint` varchar(27) DEFAULT NULL,
  `number_of_claims_received` varchar(3) DEFAULT NULL
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
  `ind_ind_condition` varchar(24) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `num_events` varchar(3) DEFAULT NULL,
  `num_cases` varchar(6) DEFAULT NULL,
  `hospital_rating` varchar(11) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `percent_of_all_family_pact_clients_served_with_sexually_b6c058fc`
--

DROP TABLE IF EXISTS `percent_of_all_family_pact_clients_served_with_sexually_b6c058fc`;
CREATE TABLE `percent_of_all_family_pact_clients_served_with_sexually_b6c058fc` (
  `fiscal_years_fy` varchar(4) DEFAULT NULL,
  `sti_test_type` varchar(26) DEFAULT NULL,
  `number_of_sti_tests_provided` varchar(9) DEFAULT NULL,
  `percentage_of_sti_tests_provided` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(0) DEFAULT NULL,
  `annotation_description` varchar(0) DEFAULT NULL
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
-- Table structure for table `percentage_of_fpact_clients_tested_for_selected_stis_by_sex`
--

DROP TABLE IF EXISTS `percentage_of_fpact_clients_tested_for_selected_stis_by_sex`;
CREATE TABLE `percentage_of_fpact_clients_tested_for_selected_stis_by_sex` (
  `fiscal_year` varchar(4) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `chlamydia` varchar(3) DEFAULT NULL,
  `gonorrhea` varchar(3) DEFAULT NULL,
  `syphilis` varchar(3) DEFAULT NULL,
  `hiv` varchar(3) DEFAULT NULL
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
-- Table structure for table `percentage_of_physically_fit_students_lghc_indicator_8`
--

DROP TABLE IF EXISTS `percentage_of_physically_fit_students_lghc_indicator_8`;
CREATE TABLE `percentage_of_physically_fit_students_lghc_indicator_8` (
  `lghc_indicator_name` varchar(12) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `strata` varchar(4) DEFAULT NULL,
  `strata_name` varchar(35) DEFAULT NULL,
  `geography` varchar(22) DEFAULT NULL,
  `grade_lev` varchar(7) DEFAULT NULL,
  `numerator` varchar(8) DEFAULT NULL,
  `denominator` varchar(8) DEFAULT NULL,
  `percent` varchar(5) DEFAULT NULL,
  `lci` varchar(6) DEFAULT NULL,
  `uci` varchar(6) DEFAULT NULL,
  `stardard_error` varchar(5) DEFAULT NULL,
  `rse` varchar(5) DEFAULT NULL,
  `warning` varchar(1) DEFAULT NULL
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
-- Table structure for table `performance_dashboard_children_and_youth_demographics`
--

DROP TABLE IF EXISTS `performance_dashboard_children_and_youth_demographics`;
CREATE TABLE `performance_dashboard_children_and_youth_demographics` (
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
-- Table structure for table `performance_dashboard_children_and_youth_snapshot_report`
--

DROP TABLE IF EXISTS `performance_dashboard_children_and_youth_snapshot_report`;
CREATE TABLE `performance_dashboard_children_and_youth_snapshot_report` (
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
  `arriving_and_exit_ct` varchar(5) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(5) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_demographics_report_children_and__567aec94`
--

DROP TABLE IF EXISTS `performance_dashboard_demographics_report_children_and__567aec94`;
CREATE TABLE `performance_dashboard_demographics_report_children_and__567aec94` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `demo_grp` varchar(17) DEFAULT NULL,
  `total_ct` varchar(5) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `smhs1_ct` varchar(5) DEFAULT NULL,
  `smhs1_ct_annot` varchar(1) DEFAULT NULL,
  `smhs5_ct` varchar(5) DEFAULT NULL,
  `smhs5_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_demographics_report_children_and__fec5c4e6`
--

DROP TABLE IF EXISTS `performance_dashboard_demographics_report_children_and__fec5c4e6`;
CREATE TABLE `performance_dashboard_demographics_report_children_and__fec5c4e6` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `demo_grp` varchar(17) DEFAULT NULL,
  `total_ct` varchar(6) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL,
  `smhs1_ct` varchar(5) DEFAULT NULL,
  `smhs1_ct_annot` varchar(1) DEFAULT NULL,
  `smhs5_ct` varchar(5) DEFAULT NULL,
  `smhs5_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_snapshot_report_children_and_yout_a7e2b1a5`
--

DROP TABLE IF EXISTS `performance_dashboard_snapshot_report_children_and_yout_a7e2b1a5`;
CREATE TABLE `performance_dashboard_snapshot_report_children_and_yout_a7e2b1a5` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(4) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(4) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(5) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(5) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(4) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(5) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_snapshot_report_children_and_yout_da905695`
--

DROP TABLE IF EXISTS `performance_dashboard_snapshot_report_children_and_yout_da905695`;
CREATE TABLE `performance_dashboard_snapshot_report_children_and_yout_da905695` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `arrivals_ct` varchar(5) DEFAULT NULL,
  `arrivals_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_2yr_ct` varchar(4) DEFAULT NULL,
  `svc_cont_2yr_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_ct` varchar(4) DEFAULT NULL,
  `svc_cont_ct_annot` varchar(1) DEFAULT NULL,
  `exiting_ct` varchar(4) DEFAULT NULL,
  `exiting_ct_annot` varchar(1) DEFAULT NULL,
  `arriving_and_exit_ct` varchar(5) DEFAULT NULL,
  `arriving_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `svc_cont_and_exit_ct` varchar(4) DEFAULT NULL,
  `svc_cont_and_exit_ct_annot` varchar(1) DEFAULT NULL,
  `total_ct` varchar(5) DEFAULT NULL,
  `total_ct_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_time_to_step_down_report_children_428412b7`
--

DROP TABLE IF EXISTS `performance_dashboard_time_to_step_down_report_children_428412b7`;
CREATE TABLE `performance_dashboard_time_to_step_down_report_children_428412b7` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `less7_ct` varchar(4) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(3) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(3) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(2) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(4) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_time_to_step_down_report_children_95b76619`
--

DROP TABLE IF EXISTS `performance_dashboard_time_to_step_down_report_children_95b76619`;
CREATE TABLE `performance_dashboard_time_to_step_down_report_children_95b76619` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `less7_ct` varchar(4) DEFAULT NULL,
  `less7_ct_annot` varchar(1) DEFAULT NULL,
  `between_8and30_ct` varchar(3) DEFAULT NULL,
  `between_8and30_ct_annot` varchar(1) DEFAULT NULL,
  `more30_ct` varchar(3) DEFAULT NULL,
  `more30_ct_annot` varchar(1) DEFAULT NULL,
  `no_step_ct` varchar(2) DEFAULT NULL,
  `no_step_ct_annot` varchar(1) DEFAULT NULL,
  `min_days` varchar(3) DEFAULT NULL,
  `max_days` varchar(3) DEFAULT NULL,
  `mean_days` varchar(11) DEFAULT NULL,
  `median_days` varchar(4) DEFAULT NULL,
  `bene_count` varchar(4) DEFAULT NULL,
  `bene_count_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_utilization_of_smhs_report_childr_5109f5b3`
--

DROP TABLE IF EXISTS `performance_dashboard_utilization_of_smhs_report_childr_5109f5b3`;
CREATE TABLE `performance_dashboard_utilization_of_smhs_report_childr_5109f5b3` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `svc_desc` varchar(27) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `performance_dashboard_utilization_of_smhs_report_childr_7a24ed6a`
--

DROP TABLE IF EXISTS `performance_dashboard_utilization_of_smhs_report_childr_7a24ed6a`;
CREATE TABLE `performance_dashboard_utilization_of_smhs_report_childr_7a24ed6a` (
  `population_name` varchar(24) DEFAULT NULL,
  `fiscal_year` varchar(4) DEFAULT NULL,
  `svc_desc` varchar(27) DEFAULT NULL,
  `unit_type` varchar(13) DEFAULT NULL,
  `amount` varchar(11) DEFAULT NULL,
  `amount_annot` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `physician_survey_patient_care_activity_by_address_of_re_01613117`
--

DROP TABLE IF EXISTS `physician_survey_patient_care_activity_by_address_of_re_01613117`;
CREATE TABLE `physician_survey_patient_care_activity_by_address_of_re_01613117` (
  `addressofrecordzipcode` varchar(12) DEFAULT NULL,
  `snapshotdate` varchar(8) DEFAULT NULL,
  `patientcareactivity` varchar(11) DEFAULT NULL,
  `countoflicensees` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `physician_survey_primary_area_of_practice_by_address_of_477aaff6`
--

DROP TABLE IF EXISTS `physician_survey_primary_area_of_practice_by_address_of_477aaff6`;
CREATE TABLE `physician_survey_primary_area_of_practice_by_address_of_477aaff6` (
  `addressofrecordzipcode` varchar(12) DEFAULT NULL,
  `snapshotdate` varchar(8) DEFAULT NULL,
  `primaryareaofpractice` varchar(36) DEFAULT NULL,
  `countoflicensees` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `physician_survey_telemedicine_activity_by_address_of_re_2e0e4f72`
--

DROP TABLE IF EXISTS `physician_survey_telemedicine_activity_by_address_of_re_2e0e4f72`;
CREATE TABLE `physician_survey_telemedicine_activity_by_address_of_re_2e0e4f72` (
  `addressofrecordzipcode` varchar(12) DEFAULT NULL,
  `snapshotdate` varchar(8) DEFAULT NULL,
  `telemedicineactivity` varchar(11) DEFAULT NULL,
  `countoflicensees` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `physician_survey_years_licensed_by_address_of_record_zip_code`
--

DROP TABLE IF EXISTS `physician_survey_years_licensed_by_address_of_record_zip_code`;
CREATE TABLE `physician_survey_years_licensed_by_address_of_record_zip_code` (
  `addressofrecordzipcode` varchar(12) DEFAULT NULL,
  `snapshotdate` varchar(8) DEFAULT NULL,
  `yearslicensed` varchar(11) DEFAULT NULL,
  `countoflicensees` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `population_distribution_for_medi_cal_enrollees_by_share_31fd316e`
--

DROP TABLE IF EXISTS `population_distribution_for_medi_cal_enrollees_by_share_31fd316e`;
CREATE TABLE `population_distribution_for_medi_cal_enrollees_by_share_31fd316e` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(6) DEFAULT NULL,
  `population_category` varchar(37) DEFAULT NULL,
  `share_of_cost_status` varchar(9) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `preterm_and_very_preterm_births_by_county`
--

DROP TABLE IF EXISTS `preterm_and_very_preterm_births_by_county`;
CREATE TABLE `preterm_and_very_preterm_births_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `birth_type` varchar(19) DEFAULT NULL,
  `total_births` varchar(6) DEFAULT NULL,
  `events` varchar(5) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(3) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `preterm_and_very_preterm_births_by_race_ethnicity`
--

DROP TABLE IF EXISTS `preterm_and_very_preterm_births_by_race_ethnicity`;
CREATE TABLE `preterm_and_very_preterm_births_by_race_ethnicity` (
  `year` varchar(4) DEFAULT NULL,
  `race_ethnicity` varchar(16) DEFAULT NULL,
  `birth_type` varchar(19) DEFAULT NULL,
  `total_births` varchar(6) DEFAULT NULL,
  `events` varchar(5) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_care_shortage_area_pcsa`
--

DROP TABLE IF EXISTS `primary_care_shortage_area_pcsa`;
CREATE TABLE `primary_care_shortage_area_pcsa` (
  `fid` varchar(3) DEFAULT NULL,
  `objectid` varchar(3) DEFAULT NULL,
  `unit_count` varchar(2) DEFAULT NULL,
  `cnty_fips` varchar(3) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `definition` varchar(8) DEFAULT NULL,
  `area_sqmi` varchar(13) DEFAULT NULL,
  `mssa_count` varchar(15) DEFAULT NULL,
  `mssa_name` varchar(153) DEFAULT NULL,
  `total_popu` varchar(6) DEFAULT NULL,
  `est_physic` varchar(5) DEFAULT NULL,
  `est_fnppa` varchar(5) DEFAULT NULL,
  `est_provid` varchar(6) DEFAULT NULL,
  `provider_r` varchar(7) DEFAULT NULL,
  `score_prov` varchar(1) DEFAULT NULL,
  `pop_100fpl` varchar(5) DEFAULT NULL,
  `pct_100fpl` varchar(5) DEFAULT NULL,
  `score_pove` varchar(1) DEFAULT NULL,
  `score_tota` varchar(2) DEFAULT NULL,
  `pcsa` varchar(3) DEFAULT NULL,
  `effective` varchar(22) DEFAULT NULL,
  `shape_area` varchar(16) DEFAULT NULL,
  `shape_length` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_care_shortage_areas`
--

DROP TABLE IF EXISTS `primary_care_shortage_areas`;
CREATE TABLE `primary_care_shortage_areas` (
  `mssa_county` varchar(15) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `mssa_name` varchar(153) DEFAULT NULL,
  `total_population` varchar(6) DEFAULT NULL,
  `est_physicians` varchar(5) DEFAULT NULL,
  `est_fnppa` varchar(5) DEFAULT NULL,
  `est_providers` varchar(6) DEFAULT NULL,
  `provider_ratio` varchar(7) DEFAULT NULL,
  `score_provider_ratio` varchar(1) DEFAULT NULL,
  `pop_100fpl` varchar(5) DEFAULT NULL,
  `pct_100fpl` varchar(5) DEFAULT NULL,
  `score_poverty` varchar(1) DEFAULT NULL,
  `score_total` varchar(2) DEFAULT NULL,
  `pcsa` varchar(3) DEFAULT NULL,
  `effective_date` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_care_shortage_areas_pcsa`
--

DROP TABLE IF EXISTS `primary_care_shortage_areas_pcsa`;
CREATE TABLE `primary_care_shortage_areas_pcsa` (
  `mssa_county` varchar(15) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `mssa_name` varchar(153) DEFAULT NULL,
  `total_population` varchar(6) DEFAULT NULL,
  `est_physicians` varchar(5) DEFAULT NULL,
  `est_fnppa` varchar(5) DEFAULT NULL,
  `est_providers` varchar(6) DEFAULT NULL,
  `provider_ratio` varchar(7) DEFAULT NULL,
  `score_provider_ratio` varchar(1) DEFAULT NULL,
  `pop_100fpl` varchar(5) DEFAULT NULL,
  `pct_100fpl` varchar(5) DEFAULT NULL,
  `score_poverty` varchar(1) DEFAULT NULL,
  `score_total` varchar(2) DEFAULT NULL,
  `pcsa` varchar(3) DEFAULT NULL,
  `effective_date` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_language_of_newly_medi_cal_eligible_individuals`
--

DROP TABLE IF EXISTS `primary_language_of_newly_medi_cal_eligible_individuals`;
CREATE TABLE `primary_language_of_newly_medi_cal_eligible_individuals` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `primary_language` varchar(28) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_spoken_language_of_applicants_for_insurance_aff_02508e5e`
--

DROP TABLE IF EXISTS `primary_spoken_language_of_applicants_for_insurance_aff_02508e5e`;
CREATE TABLE `primary_spoken_language_of_applicants_for_insurance_aff_02508e5e` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `primary_spoken_language` varchar(12) DEFAULT NULL,
  `number_of_applicants` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_spoken_language_of_individuals_selecting_covere_7673f48d`
--

DROP TABLE IF EXISTS `primary_spoken_language_of_individuals_selecting_covere_7673f48d`;
CREATE TABLE `primary_spoken_language_of_individuals_selecting_covere_7673f48d` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `primary_spoken_langauge` varchar(12) DEFAULT NULL,
  `number_of_eligible_individuals_who_plan_selected` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_written_language_of_applicants_for_insurance_af_00562149`
--

DROP TABLE IF EXISTS `primary_written_language_of_applicants_for_insurance_af_00562149`;
CREATE TABLE `primary_written_language_of_applicants_for_insurance_af_00562149` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `primary_written_language` varchar(29) DEFAULT NULL,
  `number_of_applicants` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `primary_written_language_of_individuals_selecting_cover_4baa33c9`
--

DROP TABLE IF EXISTS `primary_written_language_of_individuals_selecting_cover_4baa33c9`;
CREATE TABLE `primary_written_language_of_individuals_selecting_cover_4baa33c9` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `primary_written_langauge` varchar(29) DEFAULT NULL,
  `number_of_eligible_individuals_who_plan_selected` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a`
--

DROP TABLE IF EXISTS `profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a`;
CREATE TABLE `profile_of_enrolled_medi_cal_dental_fee_for_service_ffs_4dbc281a` (
  `provider_npi` varchar(10) DEFAULT NULL,
  `billing_provider_number` varchar(10) DEFAULT NULL,
  `service_location_number` varchar(2) DEFAULT NULL,
  `provider_legal_name` varchar(28) DEFAULT NULL,
  `enrollment_status_effective_date` varchar(9) DEFAULT NULL,
  `provider_type_code` varchar(2) DEFAULT NULL,
  `provider_type_code_desc` varchar(39) DEFAULT NULL,
  `provider_specialty_code` varchar(2) DEFAULT NULL,
  `provider_specialty_code_desc` varchar(34) DEFAULT NULL,
  `provider_language_code` varchar(1) DEFAULT NULL,
  `provider_language_code_desc` varchar(10) DEFAULT NULL,
  `provider_county_code` varchar(2) DEFAULT NULL,
  `provider_county_desc` varchar(15) DEFAULT NULL,
  `billing_provider_address_attention_line` varchar(28) DEFAULT NULL,
  `billing_provider_address_1` varchar(24) DEFAULT NULL,
  `billing_provider_address_2` varchar(24) DEFAULT NULL,
  `billing_provider_city` varchar(17) DEFAULT NULL,
  `billing_provider_state` varchar(2) DEFAULT NULL,
  `billing_provider_zip` varchar(5) DEFAULT NULL,
  `latitude` varchar(9) DEFAULT NULL,
  `longitude` varchar(11) DEFAULT NULL,
  `mssa_id` varchar(8) DEFAULT NULL,
  `tract_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `proportion_of_adults_who_are_current_smokers_lghc_indicator_19`
--

DROP TABLE IF EXISTS `proportion_of_adults_who_are_current_smokers_lghc_indicator_19`;
CREATE TABLE `proportion_of_adults_who_are_current_smokers_lghc_indicator_19` (
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(22) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `standard_error` varchar(5) DEFAULT NULL,
  `lower_95pct_cl` varchar(4) DEFAULT NULL,
  `upper_95pct_cl` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `proportion_of_high_school_students_who_smoked_cigarette_145d810b`
--

DROP TABLE IF EXISTS `proportion_of_high_school_students_who_smoked_cigarette_145d810b`;
CREATE TABLE `proportion_of_high_school_students_who_smoked_cigarette_145d810b` (
  `lghc_indicator_name` varchar(110) DEFAULT NULL,
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(22) DEFAULT NULL,
  `denominator` varchar(5) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(4) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL,
  `lghc_indicator_id` varchar(2) DEFAULT NULL,
  `lghc_target_rate` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `providers_delivering_family_planning_access_care_and_tr_3acefc17`
--

DROP TABLE IF EXISTS `providers_delivering_family_planning_access_care_and_tr_3acefc17`;
CREATE TABLE `providers_delivering_family_planning_access_care_and_tr_3acefc17` (
  `fiscal_year_fy` varchar(4) DEFAULT NULL,
  `number_enrolled_fpact_clinician_providers` varchar(5) DEFAULT NULL,
  `percentage_change_previous_fy_enrolled_fpact_clinician` varchar(7) DEFAULT NULL,
  `number_medi_cal_providers` varchar(3) DEFAULT NULL,
  `percentage_change_previous_fy_medi_cal_providers` varchar(7) DEFAULT NULL,
  `number_total_clinician_providers` varchar(5) DEFAULT NULL,
  `percentage_change_previous_fy_total_clinician` varchar(7) DEFAULT NULL,
  `number_pharmacies` varchar(5) DEFAULT NULL,
  `percentage_change_previous_fy_pharmacies` varchar(6) DEFAULT NULL,
  `number_labs` varchar(3) DEFAULT NULL,
  `percentage_change_previous_fy_labs` varchar(7) DEFAULT NULL,
  `total_number_providers` varchar(5) DEFAULT NULL,
  `percentage_change_previous_fy_total_providers` varchar(6) DEFAULT NULL
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
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_08670633`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_08670633`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_08670633` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `providers_reimbursed_for_implant_services` varchar(3) DEFAULT NULL,
  `clients_receiving_implant_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_female_tubal_ligation` varchar(3) DEFAULT NULL,
  `clients_receiving_female_tubal_ligation_sterilization_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_female_sterilization_essure_services` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_essure_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(2) DEFAULT NULL,
  `clients_receiving_male_sterilization_vasectomy_services` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_110325db`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_110325db`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_110325db` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `provider_county` varchar(16) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(2) DEFAULT NULL,
  `providers_reimbursed_for_tubal_ligation_service` varchar(3) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_patch_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_ecp_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_ring_service` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_14407238`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_14407238`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_14407238` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `providers_reimbursed_for_ecp_services` varchar(4) DEFAULT NULL,
  `clients_receiving_ecp_sevices` varchar(6) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_tubal_ligation` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_tubal_ligation_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(2) DEFAULT NULL,
  `clients_receiving_male_sterilization_vasectomy_services` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_5295c727`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_5295c727`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_5295c727` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_implant_services` varchar(3) DEFAULT NULL,
  `clients_receiving_implant_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_female_tubal_ligation` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_tubal_ligation_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_female_sterilization_essure_services` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_essure_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(2) DEFAULT NULL,
  `clients_receiving_male_sterilization_vasectomy_services` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_897fbf9f`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_897fbf9f`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_897fbf9f` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `providers_reimbursed_for_ecp_services` varchar(4) DEFAULT NULL,
  `clients_receiving_ecp_services` varchar(6) DEFAULT NULL,
  `providers_reimbursed_for_impant_services` varchar(3) DEFAULT NULL,
  `clients_receiving_implant_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_female_tubal_ligation` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_tubal_ligation_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(2) DEFAULT NULL,
  `clients_receiving_male_sterilization_vasectomy_services` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_a041bb14`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_a041bb14`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_a041bb14` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `providers_reimbursed_for_implant_services` varchar(3) DEFAULT NULL,
  `clients_receiving_implant_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_tubal_ligation_services` varchar(3) DEFAULT NULL,
  `clients_receiving_tubal_ligation_services_female_sterilization` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_essure_services_female_sterilization` varchar(3) DEFAULT NULL,
  `clients_receiving_essure_services_female_sterilization` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_vasectomy_services_male_sterilization` varchar(2) DEFAULT NULL,
  `clients_receiving_vasectomy_services_male_sterilization` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_a3e00177`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_a3e00177`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_a3e00177` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `providers_reimbursed_for_implant_services` varchar(3) DEFAULT NULL,
  `clients_receiving_implant_services` varchar(6) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(6) DEFAULT NULL,
  `providers_reimbursed_for_tubal_ligation_services` varchar(3) DEFAULT NULL,
  `clients_receiving_tubal_ligation_services_female_sterilization` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_essure_services_female_sterilization` varchar(20) DEFAULT NULL,
  `clients_receiving_essure_services_female_sterilization` varchar(20) DEFAULT NULL,
  `providers_reimbursed_for_vasectomy_services_male_sterilization` varchar(2) DEFAULT NULL,
  `clients_receiving_vasectomy_services_male_sterilization` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `provision_of_selected_family_pact_contraception_by_coun_c896db56`
--

DROP TABLE IF EXISTS `provision_of_selected_family_pact_contraception_by_coun_c896db56`;
CREATE TABLE `provision_of_selected_family_pact_contraception_by_coun_c896db56` (
  `fiscal_year` varchar(7) DEFAULT NULL,
  `provider_county` varchar(16) DEFAULT NULL,
  `providers_reimbursed_for_patch_services` varchar(4) DEFAULT NULL,
  `clients_receiving_patch_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_ecp_services` varchar(4) DEFAULT NULL,
  `clients_receiving_ecp_services` varchar(6) DEFAULT NULL,
  `providers_reimbursed_for_ring_services` varchar(4) DEFAULT NULL,
  `clients_receiving_ring_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_iuc_services` varchar(3) DEFAULT NULL,
  `clients_receiving_iuc_services` varchar(5) DEFAULT NULL,
  `providers_reimbursed_for_tubal_ligation` varchar(3) DEFAULT NULL,
  `clients_receiving_female_sterilization_tubal_ligation_services` varchar(4) DEFAULT NULL,
  `providers_reimbursed_for_male_sterilization_vasectomy_services` varchar(3) DEFAULT NULL,
  `clients_receiving_male_sterilization_vasectomy_services` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `annotation_description` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `public_health_laboratory_influenza_respiratory_virus_su_e8a51f2c`
--

DROP TABLE IF EXISTS `public_health_laboratory_influenza_respiratory_virus_su_e8a51f2c`;
CREATE TABLE `public_health_laboratory_influenza_respiratory_virus_su_e8a51f2c` (
  `season` varchar(9) DEFAULT NULL,
  `date_code` varchar(6) DEFAULT NULL,
  `weekending` varchar(8) DEFAULT NULL,
  `region` varchar(14) DEFAULT NULL,
  `influenza_category` varchar(26) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `public_hospital_redesign_and_incentives_in_medi_cal_pri_fbaa592b`
--

DROP TABLE IF EXISTS `public_hospital_redesign_and_incentives_in_medi_cal_pri_fbaa592b`;
CREATE TABLE `public_hospital_redesign_and_incentives_in_medi_cal_pri_fbaa592b` (
  `dy` varchar(5) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `hospital` varchar(70) DEFAULT NULL,
  `number` varchar(8) DEFAULT NULL,
  `metric` varchar(378) DEFAULT NULL,
  `numerator` varchar(6) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(12) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(17) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `baseline_rate` varchar(3) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(3) DEFAULT NULL,
  `allocation` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `qhps_enrollees_by_federal_poverty_level`
--

DROP TABLE IF EXISTS `qhps_enrollees_by_federal_poverty_level`;
CREATE TABLE `qhps_enrollees_by_federal_poverty_level` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `federal_poverty_level_fpl_range` varchar(12) DEFAULT NULL,
  `number_of_eligible_individuals_who_selected_plan` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `qualified_health_plans_qhps_selected_by_covered_califor_55cd257b`
--

DROP TABLE IF EXISTS `qualified_health_plans_qhps_selected_by_covered_califor_55cd257b`;
CREATE TABLE `qualified_health_plans_qhps_selected_by_covered_califor_55cd257b` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `health_plan` varchar(31) DEFAULT NULL,
  `subsidy` varchar(12) DEFAULT NULL,
  `number_of_eligible_individuals_who_selected_plan` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_diabetes_measure_year_3`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_diabetes_measure_year_3`;
CREATE TABLE `quality_incentive_pool_qip_program_data_diabetes_measure_year_3` (
  `py` varchar(3) DEFAULT NULL,
  `hospital` varchar(36) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `number` varchar(5) DEFAULT NULL,
  `title` varchar(166) DEFAULT NULL,
  `report_status` varchar(12) DEFAULT NULL,
  `baseline_rate` varchar(6) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `numerator` varchar(4) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(5) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(6) DEFAULT NULL,
  `achievement_rate_annoation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_immunization_su_a8c9d479`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_immunization_su_a8c9d479`;
CREATE TABLE `quality_incentive_pool_qip_program_data_immunization_su_a8c9d479` (
  `py` varchar(5) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `hospital` varchar(44) DEFAULT NULL,
  `number` varchar(6) DEFAULT NULL,
  `title` varchar(53) DEFAULT NULL,
  `report_status` varchar(15) DEFAULT NULL,
  `baseline_rate` varchar(6) DEFAULT NULL,
  `baseline_annotation_code` varchar(0) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(5) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(5) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_new_py4_data_re_bd4a1734`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_new_py4_data_re_bd4a1734`;
CREATE TABLE `quality_incentive_pool_qip_program_data_new_py4_data_re_bd4a1734` (
  `py` varchar(3) DEFAULT NULL,
  `dph_dmph` varchar(4) DEFAULT NULL,
  `hospital` varchar(43) DEFAULT NULL,
  `number` varchar(7) DEFAULT NULL,
  `abbreviation` varchar(9) DEFAULT NULL,
  `title` varchar(212) DEFAULT NULL,
  `report_status` varchar(8) DEFAULT NULL,
  `baseline_rate` varchar(0) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(0) DEFAULT NULL,
  `target_rate` varchar(8) DEFAULT NULL,
  `target_rate_annotation_code` varchar(1) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(7) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(8) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_prime_transitio_7efe0142`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_prime_transitio_7efe0142`;
CREATE TABLE `quality_incentive_pool_qip_program_data_prime_transitio_7efe0142` (
  `py` varchar(5) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `hospital` varchar(70) DEFAULT NULL,
  `number` varchar(8) DEFAULT NULL,
  `title` varchar(334) DEFAULT NULL,
  `report_status` varchar(0) DEFAULT NULL,
  `baseline_rate` varchar(6) DEFAULT NULL,
  `baseline_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `numerator` varchar(6) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(16) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(6) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_year_1`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_year_1`;
CREATE TABLE `quality_incentive_pool_qip_program_data_year_1` (
  `py` varchar(3) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `hospital` varchar(36) DEFAULT NULL,
  `number` varchar(5) DEFAULT NULL,
  `title` varchar(187) DEFAULT NULL,
  `report_status` varchar(15) DEFAULT NULL,
  `baseline_rate` varchar(3) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(3) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(6) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(7) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_year_2`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_year_2`;
CREATE TABLE `quality_incentive_pool_qip_program_data_year_2` (
  `py` varchar(3) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `hospital` varchar(36) DEFAULT NULL,
  `number` varchar(5) DEFAULT NULL,
  `title` varchar(187) DEFAULT NULL,
  `report_status` varchar(12) DEFAULT NULL,
  `baseline_rate` varchar(7) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(6) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(7) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_year_3`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_year_3`;
CREATE TABLE `quality_incentive_pool_qip_program_data_year_3` (
  `py` varchar(3) DEFAULT NULL,
  `hospital` varchar(36) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `number` varchar(6) DEFAULT NULL,
  `title` varchar(187) DEFAULT NULL,
  `report_status` varchar(12) DEFAULT NULL,
  `baseline_rate` varchar(6) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `numerator` varchar(4) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(6) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(6) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_year_4`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_year_4`;
CREATE TABLE `quality_incentive_pool_qip_program_data_year_4` (
  `py` varchar(3) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `hospital` varchar(44) DEFAULT NULL,
  `number` varchar(6) DEFAULT NULL,
  `abbreviation` varchar(9) DEFAULT NULL,
  `title` varchar(212) DEFAULT NULL,
  `report_status` varchar(15) DEFAULT NULL,
  `baseline_rate` varchar(5) DEFAULT NULL,
  `baseline_rate_annotation` varchar(1) DEFAULT NULL,
  `target_rate` varchar(7) DEFAULT NULL,
  `target_rate_annotation` varchar(1) DEFAULT NULL,
  `numerator` varchar(6) DEFAULT NULL,
  `numerator_annotation` varchar(1) DEFAULT NULL,
  `denominator` varchar(7) DEFAULT NULL,
  `denominator_annotation` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(7) DEFAULT NULL,
  `achievement_rate_annotation` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(3) DEFAULT NULL,
  `p4p` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_program_data_year_5`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_program_data_year_5`;
CREATE TABLE `quality_incentive_pool_qip_program_data_year_5` (
  `py` varchar(3) DEFAULT NULL,
  `hospital` varchar(43) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `number` varchar(6) DEFAULT NULL,
  `abbreviation` varchar(9) DEFAULT NULL,
  `title` varchar(212) DEFAULT NULL,
  `report_status` varchar(15) DEFAULT NULL,
  `baseline_rate` varchar(6) DEFAULT NULL,
  `baseline_rate_annotation_code` varchar(1) DEFAULT NULL,
  `target_rate` varchar(6) DEFAULT NULL,
  `target_rate_annotation_code` varchar(3) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `numerator_annotation_code` varchar(1) DEFAULT NULL,
  `denominator` varchar(7) DEFAULT NULL,
  `denominator_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_rate` varchar(6) DEFAULT NULL,
  `achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `achievement_value` varchar(6) DEFAULT NULL,
  `overperformance_value` varchar(4) DEFAULT NULL,
  `p4p` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quality_incentive_pool_qip_race_ethnicity_program_data_year_4`
--

DROP TABLE IF EXISTS `quality_incentive_pool_qip_race_ethnicity_program_data_year_4`;
CREATE TABLE `quality_incentive_pool_qip_race_ethnicity_program_data_year_4` (
  `py` varchar(3) DEFAULT NULL,
  `hospital` varchar(44) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `abbreviation` varchar(8) DEFAULT NULL,
  `title` varchar(74) DEFAULT NULL,
  `report_status` varchar(15) DEFAULT NULL,
  `race` varchar(59) DEFAULT NULL,
  `hisp_numerator` varchar(5) DEFAULT NULL,
  `hisp_numerator_annotation_code` varchar(1) DEFAULT NULL,
  `hisp_denominator` varchar(5) DEFAULT NULL,
  `hisp_denominator_annotation_code` varchar(1) DEFAULT NULL,
  `hisp_achievement_rate` varchar(6) DEFAULT NULL,
  `hisp_achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `non_hisp_numerator` varchar(5) DEFAULT NULL,
  `non_hisp_numerator_annotation_code` varchar(1) DEFAULT NULL,
  `non_hisp_denominator` varchar(6) DEFAULT NULL,
  `non_hisp_denominator_annotation_code` varchar(1) DEFAULT NULL,
  `non_hisp_achievement_rate` varchar(6) DEFAULT NULL,
  `non_hisp_achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `unknown_ethnicity_numerator` varchar(4) DEFAULT NULL,
  `unknown_ethnicity_numerator_annotation_code` varchar(1) DEFAULT NULL,
  `unknown_ethnicity_declined_denominator` varchar(5) DEFAULT NULL,
  `unknown_ethnicity_denominator_annotation_code` varchar(1) DEFAULT NULL,
  `unknown_ethnicity_achievement_rate` varchar(6) DEFAULT NULL,
  `unknown_ethnicity_achievement_rate_annotation_code` varchar(1) DEFAULT NULL,
  `total_numerator` varchar(5) DEFAULT NULL,
  `total_numerator_annotation_code` varchar(1) DEFAULT NULL,
  `total_denominator` varchar(6) DEFAULT NULL,
  `total_denominator_annotation_code` varchar(1) DEFAULT NULL,
  `total_achievement_rate` varchar(6) DEFAULT NULL,
  `total_achievement_rate_annotation_code` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `quarterly_threshold_languages_by_month_of_eligibility_a_c4a303de`
--

DROP TABLE IF EXISTS `quarterly_threshold_languages_by_month_of_eligibility_a_c4a303de`;
CREATE TABLE `quarterly_threshold_languages_by_month_of_eligibility_a_c4a303de` (
  `month_of_eligibility` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `threshold_language` varchar(13) DEFAULT NULL,
  `total_eligibles` varchar(7) DEFAULT NULL,
  `county_total` varchar(7) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `date_of_data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `race_ethnicity_of_eligible_individuals_under_age_21_enr_6298ba30`
--

DROP TABLE IF EXISTS `race_ethnicity_of_eligible_individuals_under_age_21_enr_6298ba30`;
CREATE TABLE `race_ethnicity_of_eligible_individuals_under_age_21_enr_6298ba30` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `race_ethnicity` varchar(33) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `race_ethnicity_of_newly_medi_cal_eligible_individuals`
--

DROP TABLE IF EXISTS `race_ethnicity_of_newly_medi_cal_eligible_individuals`;
CREATE TABLE `race_ethnicity_of_newly_medi_cal_eligible_individuals` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `race_ethnicity` varchar(33) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `race_of_applicants_for_insurance_affordability_programs`
--

DROP TABLE IF EXISTS `race_of_applicants_for_insurance_affordability_programs`;
CREATE TABLE `race_of_applicants_for_insurance_affordability_programs` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `race` varchar(36) DEFAULT NULL,
  `number_of_applicants` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `race_of_individuals_selecting_covered_california_qualif_fb667bc0`
--

DROP TABLE IF EXISTS `race_of_individuals_selecting_covered_california_qualif_fb667bc0`;
CREATE TABLE `race_of_individuals_selecting_covered_california_qualif_fb667bc0` (
  `year` varchar(4) DEFAULT NULL,
  `quarter_reporting` varchar(7) DEFAULT NULL,
  `race` varchar(36) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `radiological_air_sample_quarterly_composites`
--

DROP TABLE IF EXISTS `radiological_air_sample_quarterly_composites`;
CREATE TABLE `radiological_air_sample_quarterly_composites` (
  `sampling_period` varchar(6) DEFAULT NULL,
  `sampling_location` varchar(15) DEFAULT NULL,
  `radionuclide` varchar(13) DEFAULT NULL,
  `result_pci_m3` varchar(12) DEFAULT NULL,
  `counting_error_pci_m3` varchar(9) DEFAULT NULL,
  `minimum_detectable_activity_95pct_pci_m3` varchar(9) DEFAULT NULL,
  `total_effective_dose_equivalent_millirem` varchar(11) DEFAULT NULL,
  `nrc_effluent_air_conc_limit_pci_m3` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `rate_review_detail_trend`
--

DROP TABLE IF EXISTS `rate_review_detail_trend`;
CREATE TABLE `rate_review_detail_trend` (
  `referenceid` varchar(14) DEFAULT NULL,
  `legalname` varchar(78) DEFAULT NULL,
  `reportingyear` varchar(4) DEFAULT NULL,
  `filingtype` varchar(23) DEFAULT NULL,
  `filingstatus` varchar(46) DEFAULT NULL,
  `markettype` varchar(11) DEFAULT NULL,
  `productname` varchar(275) DEFAULT NULL,
  `proposedrateincrease` varchar(12) DEFAULT NULL,
  `finalrateincrease` varchar(12) DEFAULT NULL,
  `memberaffected` varchar(9) DEFAULT NULL,
  `dateeffective` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `rates_of_preventable_hospitalizations_age_18_for_select_12750e70`
--

DROP TABLE IF EXISTS `rates_of_preventable_hospitalizations_age_18_for_select_12750e70`;
CREATE TABLE `rates_of_preventable_hospitalizations_age_18_for_select_12750e70` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `pdi` varchar(2) DEFAULT NULL,
  `pdidescription` varchar(47) DEFAULT NULL,
  `count_icd9` varchar(6) DEFAULT NULL,
  `population_icd9` varchar(9) DEFAULT NULL,
  `obsrate_icd9` varchar(8) DEFAULT NULL,
  `riskadjrate_icd9` varchar(5) DEFAULT NULL,
  `count_icd10` varchar(5) DEFAULT NULL,
  `population_icd10` varchar(9) DEFAULT NULL,
  `obsrate_icd10` varchar(5) DEFAULT NULL,
  `riskadjrate_icd10` varchar(5) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `rates_of_preventable_hospitalizations_for_selected_medi_6e9ad322`
--

DROP TABLE IF EXISTS `rates_of_preventable_hospitalizations_for_selected_medi_6e9ad322`;
CREATE TABLE `rates_of_preventable_hospitalizations_for_selected_medi_6e9ad322` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `pqi` varchar(2) DEFAULT NULL,
  `pqidescription` varchar(40) DEFAULT NULL,
  `count_icd9` varchar(6) DEFAULT NULL,
  `population_icd9` varchar(8) DEFAULT NULL,
  `obsrate_icd9` varchar(6) DEFAULT NULL,
  `riskadjrate_icd9` varchar(6) DEFAULT NULL,
  `count_icd10` varchar(7) DEFAULT NULL,
  `population_icd10` varchar(10) DEFAULT NULL,
  `obsrate_icd10` varchar(6) DEFAULT NULL,
  `riskadjrate_icd10` varchar(6) DEFAULT NULL,
  `annotationcode` varchar(1) DEFAULT NULL,
  `annotationdesc` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `rates_of_selected_hospital_procedures_examined_for_over_ed6d5f5f`
--

DROP TABLE IF EXISTS `rates_of_selected_hospital_procedures_examined_for_over_ed6d5f5f`;
CREATE TABLE `rates_of_selected_hospital_procedures_examined_for_over_ed6d5f5f` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `iqi` varchar(2) DEFAULT NULL,
  `iqidescription` varchar(58) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `population` varchar(8) DEFAULT NULL,
  `obsrate` varchar(6) DEFAULT NULL,
  `riskadjrate` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `readmission_rates_in_patients_recently_discharged_ama_vs_not_ama`
--

DROP TABLE IF EXISTS `readmission_rates_in_patients_recently_discharged_ama_vs_not_ama`;
CREATE TABLE `readmission_rates_in_patients_recently_discharged_ama_vs_not_ama` (
  `year` varchar(4) DEFAULT NULL,
  `readmission_after_ama_or_not` varchar(26) DEFAULT NULL,
  `days_since_last_discharge` varchar(2) DEFAULT NULL,
  `readmissions` varchar(6) DEFAULT NULL,
  `discharges` varchar(9) DEFAULT NULL,
  `readmission_rate` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `readmissions_for_coronary_artery_bypass_graft_cabg_complications`
--

DROP TABLE IF EXISTS `readmissions_for_coronary_artery_bypass_graft_cabg_complications`;
CREATE TABLE `readmissions_for_coronary_artery_bypass_graft_cabg_complications` (
  `year` varchar(9) DEFAULT NULL,
  `complication` varchar(38) DEFAULT NULL,
  `category` varchar(9) DEFAULT NULL,
  `strata` varchar(23) DEFAULT NULL,
  `readmission` varchar(1) DEFAULT NULL,
  `yes` varchar(7) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `reference_medi_cal_aid_codes_and_aid_code_groups`
--

DROP TABLE IF EXISTS `reference_medi_cal_aid_codes_and_aid_code_groups`;
CREATE TABLE `reference_medi_cal_aid_codes_and_aid_code_groups` (
  `aid_code` varchar(4) DEFAULT NULL,
  `aid_code_category_desc` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `regional_center_information`
--

DROP TABLE IF EXISTS `regional_center_information`;
CREATE TABLE `regional_center_information` (
  `regional_center` varchar(41) DEFAULT NULL,
  `office` varchar(7) DEFAULT NULL,
  `address` varchar(28) DEFAULT NULL,
  `suite` varchar(8) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `telephone` varchar(14) DEFAULT NULL,
  `website` varchar(22) DEFAULT NULL,
  `county_served` varchar(15) DEFAULT NULL,
  `los_angeles_health_district_served` varchar(18) DEFAULT NULL,
  `location_1` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `regionalcenter_catchmentareas`
--

DROP TABLE IF EXISTS `regionalcenter_catchmentareas`;
CREATE TABLE `regionalcenter_catchmentareas` (
  `objectid` varchar(2) DEFAULT NULL,
  `regionalcenter` varchar(41) DEFAULT NULL,
  `catchment_area_desc` varchar(155) DEFAULT NULL,
  `shape_area` varchar(18) DEFAULT NULL,
  `shape_length` varchar(16) DEFAULT NULL,
  `acronym` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `registered_nurse_shortage_areas`
--

DROP TABLE IF EXISTS `registered_nurse_shortage_areas`;
CREATE TABLE `registered_nurse_shortage_areas` (
  `rn_area_id` varchar(2) DEFAULT NULL,
  `rn_area_name` varchar(36) DEFAULT NULL,
  `population` varchar(7) DEFAULT NULL,
  `rn_lic` varchar(5) DEFAULT NULL,
  `rn_emprate` varchar(5) DEFAULT NULL,
  `employed_rns` varchar(5) DEFAULT NULL,
  `ratio` varchar(6) DEFAULT NULL,
  `target_ratio` varchar(3) DEFAULT NULL,
  `rnsa` varchar(3) DEFAULT NULL,
  `severity` varchar(6) DEFAULT NULL,
  `effective_date` varchar(9) DEFAULT NULL
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
-- Table structure for table `respondents_indicating_at_least_1_type_of_adverse_child_c4ef5184`
--

DROP TABLE IF EXISTS `respondents_indicating_at_least_1_type_of_adverse_child_c4ef5184`;
CREATE TABLE `respondents_indicating_at_least_1_type_of_adverse_child_c4ef5184` (
  `lghc_indicator_name` varchar(70) DEFAULT NULL,
  `geography` varchar(10) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `strata_name` varchar(21) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `lower_95pct_ci` varchar(4) DEFAULT NULL,
  `upper_95pct_ci` varchar(4) DEFAULT NULL,
  `standard_error` varchar(3) DEFAULT NULL,
  `lghc_indicator_id` varchar(1) DEFAULT NULL,
  `lghc_target_rate` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `retail_availability_of_electronic_smoking_devices_by_county`
--

DROP TABLE IF EXISTS `retail_availability_of_electronic_smoking_devices_by_county`;
CREATE TABLE `retail_availability_of_electronic_smoking_devices_by_county` (
  `county` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `percentage` varchar(4) DEFAULT NULL,
  `lower95ci` varchar(4) DEFAULT NULL,
  `upper95ci` varchar(4) DEFAULT NULL
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
-- Table structure for table `sb_75_full_scope_medi_cal_for_all_children_enrollment`
--

DROP TABLE IF EXISTS `sb_75_full_scope_medi_cal_for_all_children_enrollment`;
CREATE TABLE `sb_75_full_scope_medi_cal_for_all_children_enrollment` (
  `eligibility_date` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `number_of_beneficiaries` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2016`
--

DROP TABLE IF EXISTS `scan_rates_cy_2016`;
CREATE TABLE `scan_rates_cy_2016` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2017`
--

DROP TABLE IF EXISTS `scan_rates_cy_2017`;
CREATE TABLE `scan_rates_cy_2017` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2018`
--

DROP TABLE IF EXISTS `scan_rates_cy_2018`;
CREATE TABLE `scan_rates_cy_2018` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2019`
--

DROP TABLE IF EXISTS `scan_rates_cy_2019`;
CREATE TABLE `scan_rates_cy_2019` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2020`
--

DROP TABLE IF EXISTS `scan_rates_cy_2020`;
CREATE TABLE `scan_rates_cy_2020` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2021`
--

DROP TABLE IF EXISTS `scan_rates_cy_2021`;
CREATE TABLE `scan_rates_cy_2021` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2022`
--

DROP TABLE IF EXISTS `scan_rates_cy_2022`;
CREATE TABLE `scan_rates_cy_2022` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(13) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2023`
--

DROP TABLE IF EXISTS `scan_rates_cy_2023`;
CREATE TABLE `scan_rates_cy_2023` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(35) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `scan_rates_cy_2024`
--

DROP TABLE IF EXISTS `scan_rates_cy_2024`;
CREATE TABLE `scan_rates_cy_2024` (
  `rating_period` varchar(15) DEFAULT NULL,
  `calendar_year` varchar(4) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `category_of_aid` varchar(35) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
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
-- Table structure for table `seismic_ratings_and_collapse_probabilities_of_californi_ae55f270`
--

DROP TABLE IF EXISTS `seismic_ratings_and_collapse_probabilities_of_californi_ae55f270`;
CREATE TABLE `seismic_ratings_and_collapse_probabilities_of_californi_ae55f270` (
  `county_code` varchar(20) DEFAULT NULL,
  `perm_id` varchar(5) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `building_nbr` varchar(9) DEFAULT NULL,
  `building_name` varchar(87) DEFAULT NULL,
  `building_status` varchar(40) DEFAULT NULL,
  `spc_rating` varchar(3) DEFAULT NULL,
  `2007_hazus_score_pct` varchar(8) DEFAULT NULL,
  `2010_hazus_score_pct` varchar(8) DEFAULT NULL,
  `hcai_npc_rating` varchar(5) DEFAULT NULL,
  `ab_1882_notice` varchar(118) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `count` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `severe_sepsis`
--

DROP TABLE IF EXISTS `severe_sepsis`;
CREATE TABLE `severe_sepsis` (
  `year` varchar(4) DEFAULT NULL,
  `numberofseveresepsis` varchar(6) DEFAULT NULL,
  `hospitaldeath` varchar(5) DEFAULT NULL,
  `numsvrspsswohspdth` varchar(6) DEFAULT NULL,
  `pctofinhspdth` varchar(4) DEFAULT NULL,
  `numberofhospacquired` varchar(5) DEFAULT NULL,
  `numberofnonhospacquired` varchar(6) DEFAULT NULL,
  `pctofhospacquired` varchar(4) DEFAULT NULL,
  `pctofnonhospacquired` varchar(4) DEFAULT NULL,
  `numberofmedicare` varchar(6) DEFAULT NULL,
  `numberofmedicaid` varchar(5) DEFAULT NULL,
  `numberofprivatecoverage` varchar(5) DEFAULT NULL,
  `numberofselfpay` varchar(4) DEFAULT NULL,
  `numberofotherpayer` varchar(4) DEFAULT NULL,
  `pctofmedicare` varchar(4) DEFAULT NULL,
  `pctofmedicaid` varchar(4) DEFAULT NULL,
  `pctofprivatecoverage` varchar(4) DEFAULT NULL,
  `pctofselfpay` varchar(3) DEFAULT NULL,
  `pctofotherpayer` varchar(3) DEFAULT NULL,
  `meanlos` varchar(4) DEFAULT NULL,
  `medianchrgday` varchar(5) DEFAULT NULL,
  `pct_of_acute_care` varchar(3) DEFAULT NULL,
  `pct_of_home_health_service` varchar(4) DEFAULT NULL,
  `pct_of_other_care` varchar(4) DEFAULT NULL,
  `pct_of_residential_care` varchar(3) DEFAULT NULL,
  `pct_of_home_routine` varchar(4) DEFAULT NULL,
  `pct_of_skilled_nursing_intermediat` varchar(4) DEFAULT NULL,
  `pct_of_hospice_care` varchar(4) DEFAULT NULL,
  `pct_of_hospital_acquired_severe_se` varchar(4) DEFAULT NULL,
  `pct_of_non_hospital_acquired_sever` varchar(4) DEFAULT NULL,
  `rate_in_teaching_hospital` varchar(4) DEFAULT NULL,
  `rate_in_non_teaching_hospital` varchar(3) DEFAULT NULL,
  `rate_in_urban_hospital` varchar(3) DEFAULT NULL,
  `rate_in_rural_hospital` varchar(3) DEFAULT NULL,
  `rate_in_hospital_with_1_99_beds` varchar(4) DEFAULT NULL,
  `rate_in_hospital_with_100_199_be` varchar(3) DEFAULT NULL,
  `rate_in_hospital_with_200_299_be` varchar(3) DEFAULT NULL,
  `rate_in_hospital_with_300_399_be` varchar(3) DEFAULT NULL,
  `rate_in_hospital_with_400_or_mor` varchar(3) DEFAULT NULL,
  `rate_in_nonprofit_hospital` varchar(3) DEFAULT NULL,
  `rate_in_investor_owned_hospital` varchar(4) DEFAULT NULL,
  `rate_in_governmental_hospital` varchar(4) DEFAULT NULL
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
  `cases` varchar(6) DEFAULT NULL,
  `cumulative_cases` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `singleton_births_by_cy_payer_delvry_sys_and_select_birth_chars`
--

DROP TABLE IF EXISTS `singleton_births_by_cy_payer_delvry_sys_and_select_birth_chars`;
CREATE TABLE `singleton_births_by_cy_payer_delvry_sys_and_select_birth_chars` (
  `calendar_year` varchar(4) DEFAULT NULL,
  `payer` varchar(12) DEFAULT NULL,
  `delivery_system` varchar(17) DEFAULT NULL,
  `grouper` varchar(27) DEFAULT NULL,
  `birth_characteristic` varchar(33) DEFAULT NULL,
  `number_of_births` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `skilled_nursing_facilities_covid_19`
--

DROP TABLE IF EXISTS `skilled_nursing_facilities_covid_19`;
CREATE TABLE `skilled_nursing_facilities_covid_19` (
  `county` varchar(15) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(75) DEFAULT NULL,
  `as_of_date` varchar(10) DEFAULT NULL,
  `total_resident_cases` varchar(5) DEFAULT NULL,
  `new_resident_cases` varchar(4) DEFAULT NULL,
  `total_resident_deaths` varchar(5) DEFAULT NULL,
  `total_health_care_worker_cases` varchar(6) DEFAULT NULL,
  `new_health_care_worker_cases` varchar(4) DEFAULT NULL,
  `total_health_care_workers_deaths` varchar(3) DEFAULT NULL,
  `note` varchar(12) DEFAULT NULL
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
-- Table structure for table `state_fiscal_year_2015_16_cohs_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2015_16_cohs_rates`;
CREATE TABLE `state_fiscal_year_2015_16_cohs_rates` (
  `rating_period` varchar(13) DEFAULT NULL,
  `state_fiscal_year` varchar(9) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2015_16_geographic_managed_care_gmc`
--

DROP TABLE IF EXISTS `state_fiscal_year_2015_16_geographic_managed_care_gmc`;
CREATE TABLE `state_fiscal_year_2015_16_geographic_managed_care_gmc` (
  `rate_period` varchar(9) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(24) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2015_16_regional_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2015_16_regional_model_rates`;
CREATE TABLE `state_fiscal_year_2015_16_regional_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(24) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(28) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(7) DEFAULT NULL,
  `midpoint` varchar(8) DEFAULT NULL,
  `upper_bound` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2015_16_two_plan_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2015_16_two_plan_model_rates`;
CREATE TABLE `state_fiscal_year_2015_16_two_plan_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2016_17_cohs_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2016_17_cohs_rates`;
CREATE TABLE `state_fiscal_year_2016_17_cohs_rates` (
  `rating_period` varchar(13) DEFAULT NULL,
  `state_fiscal_year` varchar(9) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2016_17_geographic_managed_care_gmc`
--

DROP TABLE IF EXISTS `state_fiscal_year_2016_17_geographic_managed_care_gmc`;
CREATE TABLE `state_fiscal_year_2016_17_geographic_managed_care_gmc` (
  `rate_period` varchar(9) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(24) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2016_17_regional_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2016_17_regional_model_rates`;
CREATE TABLE `state_fiscal_year_2016_17_regional_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(24) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(28) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2016_17_two_plan_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2016_17_two_plan_model_rates`;
CREATE TABLE `state_fiscal_year_2016_17_two_plan_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2017_18_cohs_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2017_18_cohs_rates`;
CREATE TABLE `state_fiscal_year_2017_18_cohs_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2017_18_geographic_managed_care_gmc`
--

DROP TABLE IF EXISTS `state_fiscal_year_2017_18_geographic_managed_care_gmc`;
CREATE TABLE `state_fiscal_year_2017_18_geographic_managed_care_gmc` (
  `rating_period` varchar(13) DEFAULT NULL,
  `state_fiscal_year` varchar(9) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(24) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2017_18_hepatitis_c_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2017_18_hepatitis_c_rates`;
CREATE TABLE `state_fiscal_year_2017_18_hepatitis_c_rates` (
  `rating_period` varchar(15) DEFAULT NULL,
  `sfy` varchar(7) DEFAULT NULL,
  `supplemental_payment_type` varchar(12) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(20) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2017_18_regional_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2017_18_regional_model_rates`;
CREATE TABLE `state_fiscal_year_2017_18_regional_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(24) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(29) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2017_18_two_plan_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2017_18_two_plan_model_rates`;
CREATE TABLE `state_fiscal_year_2017_18_two_plan_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(27) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2018_19_cohs_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2018_19_cohs_rates`;
CREATE TABLE `state_fiscal_year_2018_19_cohs_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `health_plan` varchar(38) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(11) DEFAULT NULL,
  `midpoint` varchar(11) DEFAULT NULL,
  `upper_bound` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2018_19_geographic_managed_care_gmc`
--

DROP TABLE IF EXISTS `state_fiscal_year_2018_19_geographic_managed_care_gmc`;
CREATE TABLE `state_fiscal_year_2018_19_geographic_managed_care_gmc` (
  `rate_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(3) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(29) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2018_19_regional_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2018_19_regional_model_rates`;
CREATE TABLE `state_fiscal_year_2018_19_regional_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(24) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `health_plan` varchar(29) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `state_fiscal_year_2018_19_two_plan_model_rates`
--

DROP TABLE IF EXISTS `state_fiscal_year_2018_19_two_plan_model_rates`;
CREATE TABLE `state_fiscal_year_2018_19_two_plan_model_rates` (
  `rating_period` varchar(11) DEFAULT NULL,
  `state_fiscal_year` varchar(7) DEFAULT NULL,
  `model` varchar(9) DEFAULT NULL,
  `county` varchar(14) DEFAULT NULL,
  `health_plan` varchar(30) DEFAULT NULL,
  `category_of_aid` varchar(32) DEFAULT NULL,
  `lower_bound` varchar(10) DEFAULT NULL,
  `midpoint` varchar(10) DEFAULT NULL,
  `upper_bound` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid19_cases_deaths`
--

DROP TABLE IF EXISTS `statewide_covid19_cases_deaths`;
CREATE TABLE `statewide_covid19_cases_deaths` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `area_type` varchar(6) DEFAULT NULL,
  `population` varchar(10) DEFAULT NULL,
  `cases` varchar(8) DEFAULT NULL,
  `cumulative_cases` varchar(10) DEFAULT NULL,
  `deaths` varchar(5) DEFAULT NULL,
  `cumulative_deaths` varchar(8) DEFAULT NULL,
  `total_tests` varchar(8) DEFAULT NULL,
  `cumulative_total_tests` varchar(9) DEFAULT NULL,
  `positive_tests` varchar(8) DEFAULT NULL,
  `cumulative_positive_tests` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid19_vaccines_admin_by_zipcode_age12`
--

DROP TABLE IF EXISTS `statewide_covid19_vaccines_admin_by_zipcode_age12`;
CREATE TABLE `statewide_covid19_vaccines_admin_by_zipcode_age12` (
  `as_of_date` varchar(10) DEFAULT NULL,
  `zip_code_tabulation_area` varchar(5) DEFAULT NULL,
  `local_health_jurisdiction` varchar(15) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `vaccine_equity_metric_quartile` varchar(3) DEFAULT NULL,
  `vem_source` varchar(26) DEFAULT NULL,
  `age12_plus_population` varchar(7) DEFAULT NULL,
  `persons_fully_vaccinated` varchar(7) DEFAULT NULL,
  `persons_partially_vaccinated` varchar(7) DEFAULT NULL,
  `percent_of_population_fully_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_partially_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_with_1_plus_dose` varchar(8) DEFAULT NULL,
  `redacted` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid19_vaccines_admin_by_zipcode_age5`
--

DROP TABLE IF EXISTS `statewide_covid19_vaccines_admin_by_zipcode_age5`;
CREATE TABLE `statewide_covid19_vaccines_admin_by_zipcode_age5` (
  `as_of_date` varchar(10) DEFAULT NULL,
  `zip_code_tabulation_area` varchar(5) DEFAULT NULL,
  `local_health_jurisdiction` varchar(15) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `vaccine_equity_metric_quartile` varchar(3) DEFAULT NULL,
  `vem_source` varchar(26) DEFAULT NULL,
  `age12_plus_population` varchar(7) DEFAULT NULL,
  `age5_plus_population` varchar(6) DEFAULT NULL,
  `persons_fully_vaccinated` varchar(7) DEFAULT NULL,
  `persons_partially_vaccinated` varchar(7) DEFAULT NULL,
  `percent_of_population_fully_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_partially_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_with_1_plus_dose` varchar(8) DEFAULT NULL,
  `booster_recip_count` varchar(7) DEFAULT NULL,
  `redacted` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid_19_cases_deaths_demographics`
--

DROP TABLE IF EXISTS `statewide_covid_19_cases_deaths_demographics`;
CREATE TABLE `statewide_covid_19_cases_deaths_demographics` (
  `demographic_category` varchar(14) DEFAULT NULL,
  `demographic_value` varchar(42) DEFAULT NULL,
  `total_cases` varchar(8) DEFAULT NULL,
  `percent_cases` varchar(5) DEFAULT NULL,
  `deaths` varchar(6) DEFAULT NULL,
  `percent_deaths` varchar(5) DEFAULT NULL,
  `percent_of_ca_population` varchar(5) DEFAULT NULL,
  `report_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid_19_cases_deaths_tests`
--

DROP TABLE IF EXISTS `statewide_covid_19_cases_deaths_tests`;
CREATE TABLE `statewide_covid_19_cases_deaths_tests` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `area_type` varchar(6) DEFAULT NULL,
  `population` varchar(10) DEFAULT NULL,
  `cases` varchar(8) DEFAULT NULL,
  `cumulative_cases` varchar(10) DEFAULT NULL,
  `deaths` varchar(5) DEFAULT NULL,
  `cumulative_deaths` varchar(8) DEFAULT NULL,
  `total_tests` varchar(8) DEFAULT NULL,
  `cumulative_total_tests` varchar(9) DEFAULT NULL,
  `positive_tests` varchar(8) DEFAULT NULL,
  `cumulative_positive_tests` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid_19_cases_deaths_tests_archived`
--

DROP TABLE IF EXISTS `statewide_covid_19_cases_deaths_tests_archived`;
CREATE TABLE `statewide_covid_19_cases_deaths_tests_archived` (
  `date` varchar(10) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `area_type` varchar(6) DEFAULT NULL,
  `population` varchar(10) DEFAULT NULL,
  `cases` varchar(8) DEFAULT NULL,
  `cumulative_cases` varchar(10) DEFAULT NULL,
  `deaths` varchar(5) DEFAULT NULL,
  `cumulative_deaths` varchar(8) DEFAULT NULL,
  `total_tests` varchar(8) DEFAULT NULL,
  `cumulative_total_tests` varchar(9) DEFAULT NULL,
  `positive_tests` varchar(8) DEFAULT NULL,
  `cumulative_positive_tests` varchar(8) DEFAULT NULL,
  `reported_cases` varchar(8) DEFAULT NULL,
  `cumulative_reported_cases` varchar(10) DEFAULT NULL,
  `reported_deaths` varchar(6) DEFAULT NULL,
  `cumulative_reported_deaths` varchar(8) DEFAULT NULL,
  `reported_tests` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid_19_hospital_county_data`
--

DROP TABLE IF EXISTS `statewide_covid_19_hospital_county_data`;
CREATE TABLE `statewide_covid_19_hospital_county_data` (
  `county` varchar(15) DEFAULT NULL,
  `todays_date` varchar(10) DEFAULT NULL,
  `hospitalized_covid_confirmed_patients` varchar(4) DEFAULT NULL,
  `hospitalized_suspected_covid_patients` varchar(4) DEFAULT NULL,
  `hospitalized_covid_patients` varchar(4) DEFAULT NULL,
  `all_hospital_beds` varchar(5) DEFAULT NULL,
  `icu_covid_confirmed_patients` varchar(4) DEFAULT NULL,
  `icu_suspected_covid_patients` varchar(3) DEFAULT NULL,
  `icu_available_beds` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `statewide_covid_19_vaccines_administered_by_zip_code`
--

DROP TABLE IF EXISTS `statewide_covid_19_vaccines_administered_by_zip_code`;
CREATE TABLE `statewide_covid_19_vaccines_administered_by_zip_code` (
  `as_of_date` varchar(10) DEFAULT NULL,
  `zip_code_tabulation_area` varchar(5) DEFAULT NULL,
  `local_health_jurisdiction` varchar(15) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `vaccine_equity_metric_quartile` varchar(3) DEFAULT NULL,
  `vem_source` varchar(26) DEFAULT NULL,
  `age12_plus_population` varchar(7) DEFAULT NULL,
  `age5_plus_population` varchar(6) DEFAULT NULL,
  `tot_population` varchar(8) DEFAULT NULL,
  `persons_fully_vaccinated` varchar(7) DEFAULT NULL,
  `persons_partially_vaccinated` varchar(7) DEFAULT NULL,
  `percent_of_population_fully_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_partially_vaccinated` varchar(8) DEFAULT NULL,
  `percent_of_population_with_1_plus_dose` varchar(8) DEFAULT NULL,
  `up_to_date_count` varchar(5) DEFAULT NULL,
  `redacted` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `stds_by_disease_county_year_and_sex`
--

DROP TABLE IF EXISTS `stds_by_disease_county_year_and_sex`;
CREATE TABLE `stds_by_disease_county_year_and_sex` (
  `disease` varchar(14) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `cases` varchar(6) DEFAULT NULL,
  `population` varchar(8) DEFAULT NULL,
  `rate` varchar(6) DEFAULT NULL,
  `lower_95pct_ci` varchar(6) DEFAULT NULL,
  `upper_95pct_ci` varchar(6) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL
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
-- Table structure for table `sugar_sweetened_beverage_consumption_in_california_resi_becff160`
--

DROP TABLE IF EXISTS `sugar_sweetened_beverage_consumption_in_california_resi_becff160`;
CREATE TABLE `sugar_sweetened_beverage_consumption_in_california_resi_becff160` (
  `year` varchar(4) DEFAULT NULL,
  `age_group` varchar(18) DEFAULT NULL,
  `category` varchar(22) DEFAULT NULL,
  `type` varchar(35) DEFAULT NULL,
  `mean_servings_times_sugar_sweetened_beverages_consumed_daily` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `suicide_lghc_indicator_21`
--

DROP TABLE IF EXISTS `suicide_lghc_indicator_21`;
CREATE TABLE `suicide_lghc_indicator_21` (
  `indicator` varchar(7) DEFAULT NULL,
  `geography` varchar(15) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `strata` varchar(14) DEFAULT NULL,
  `strata_name` varchar(8) DEFAULT NULL,
  `numerator` varchar(5) DEFAULT NULL,
  `denominator` varchar(9) DEFAULT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `age_adjusted_rate` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `surgeon_perf_ratings_2017_2018`
--

DROP TABLE IF EXISTS `surgeon_perf_ratings_2017_2018`;
CREATE TABLE `surgeon_perf_ratings_2017_2018` (
  `year` varchar(9) DEFAULT NULL,
  `surgeon_id` varchar(8) DEFAULT NULL,
  `surgeon_name` varchar(26) DEFAULT NULL,
  `statewide_all_cabg_cases` varchar(6) DEFAULT NULL,
  `statewide_isolated_cabg_cases` varchar(6) DEFAULT NULL,
  `statewide_isolated_cabg_deaths` varchar(3) DEFAULT NULL,
  `statewide_observed_mortality_ratepct` varchar(4) DEFAULT NULL,
  `surgeon_total_cabg_cases` varchar(3) DEFAULT NULL,
  `surgeon_total_isolated_cabg_cases` varchar(3) DEFAULT NULL,
  `surgeon_total_isolated_cabg_deaths` varchar(2) DEFAULT NULL,
  `overall_surgeon_operative_mortality_risk_adjusted_rate_pct` varchar(5) DEFAULT NULL,
  `overall_surgeon_lcl` varchar(4) DEFAULT NULL,
  `overall_surgeon_ucl` varchar(6) DEFAULT NULL,
  `overall_performance_rating` varchar(7) DEFAULT NULL,
  `all_cabg_cases_per_hospital` varchar(3) DEFAULT NULL,
  `isolated_cabg_cases_per_hospital` varchar(3) DEFAULT NULL,
  `isolated_cabg_deaths_per_hospital` varchar(2) DEFAULT NULL,
  `observed_mortality_ratepct_per_hospital` varchar(6) DEFAULT NULL,
  `expected_mortality_ratepct_per_hospital` varchar(5) DEFAULT NULL,
  `risk_adjusted_mortality_ratepct_per_hospital` varchar(6) DEFAULT NULL,
  `lower_95pctci_per_hospital` varchar(4) DEFAULT NULL,
  `upper_95pctci_per_hospital` varchar(6) DEFAULT NULL,
  `performance_rating_per_hospital` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(77) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `longitude` varchar(7) DEFAULT NULL,
  `latitude` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `surgeon_perf_ratings_for_cabg_to_2016`
--

DROP TABLE IF EXISTS `surgeon_perf_ratings_for_cabg_to_2016`;
CREATE TABLE `surgeon_perf_ratings_for_cabg_to_2016` (
  `year` varchar(9) DEFAULT NULL,
  `surgeon_id` varchar(8) DEFAULT NULL,
  `surgeon_name` varchar(26) DEFAULT NULL,
  `hospital` varchar(67) DEFAULT NULL,
  `oshpd_id` varchar(9) DEFAULT NULL,
  `total_operative_cases` varchar(6) DEFAULT NULL,
  `cases_of_operative_death` varchar(3) DEFAULT NULL,
  `operative_mortality_risk_adjusted_rate_pct` varchar(5) DEFAULT NULL,
  `performance_rating` varchar(7) DEFAULT NULL,
  `longitude` varchar(8) DEFAULT NULL,
  `latitude` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tb_by_place_age_sex_race_ethnic`
--

DROP TABLE IF EXISTS `tb_by_place_age_sex_race_ethnic`;
CREATE TABLE `tb_by_place_age_sex_race_ethnic` (
  `year` varchar(4) DEFAULT NULL,
  `category` varchar(14) DEFAULT NULL,
  `strata` varchar(16) DEFAULT NULL,
  `cases` varchar(4) DEFAULT NULL,
  `population` varchar(8) DEFAULT NULL,
  `rate_per_100_000_population` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tb_in_local_health_jurisdiction`
--

DROP TABLE IF EXISTS `tb_in_local_health_jurisdiction`;
CREATE TABLE `tb_in_local_health_jurisdiction` (
  `year` varchar(4) DEFAULT NULL,
  `jurisdiction` varchar(15) DEFAULT NULL,
  `cases` varchar(4) DEFAULT NULL,
  `population` varchar(10) DEFAULT NULL,
  `rate_per_100_000_population` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tobacco_retail_surveillance_study`
--

DROP TABLE IF EXISTS `tobacco_retail_surveillance_study`;
CREATE TABLE `tobacco_retail_surveillance_study` (
  `year` varchar(4) DEFAULT NULL,
  `type` varchar(17) DEFAULT NULL,
  `indicator` varchar(39) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tobacco_sold_to_youth_under_18`
--

DROP TABLE IF EXISTS `tobacco_sold_to_youth_under_18`;
CREATE TABLE `tobacco_sold_to_youth_under_18` (
  `year` varchar(4) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `se` varchar(3) DEFAULT NULL,
  `lower95` varchar(4) DEFAULT NULL,
  `upper95` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `tobacco_sold_to_youth_under_21`
--

DROP TABLE IF EXISTS `tobacco_sold_to_youth_under_21`;
CREATE TABLE `tobacco_sold_to_youth_under_21` (
  `year` varchar(4) DEFAULT NULL,
  `percent` varchar(4) DEFAULT NULL,
  `se` varchar(3) DEFAULT NULL,
  `lower95` varchar(4) DEFAULT NULL,
  `upper95` varchar(4) DEFAULT NULL
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
-- Table structure for table `total_covid19_outbreaks_by_industry`
--

DROP TABLE IF EXISTS `total_covid19_outbreaks_by_industry`;
CREATE TABLE `total_covid19_outbreaks_by_industry` (
  `year` varchar(4) DEFAULT NULL,
  `industrysector` varchar(56) DEFAULT NULL,
  `individualsetting` varchar(122) DEFAULT NULL,
  `indcode` varchar(4) DEFAULT NULL,
  `outbreaks` varchar(5) DEFAULT NULL,
  `cases` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `total_effectuated_qualified_health_plan_qhp_enrollment__4149ab9a`
--

DROP TABLE IF EXISTS `total_effectuated_qualified_health_plan_qhp_enrollment__4149ab9a`;
CREATE TABLE `total_effectuated_qualified_health_plan_qhp_enrollment__4149ab9a` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(10) DEFAULT NULL,
  `number_of_enrollees` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `trends_in_the_utilization_and_mortality_for_coronary_ar_31d7afc5`
--

DROP TABLE IF EXISTS `trends_in_the_utilization_and_mortality_for_coronary_ar_31d7afc5`;
CREATE TABLE `trends_in_the_utilization_and_mortality_for_coronary_ar_31d7afc5` (
  `year` varchar(4) DEFAULT NULL,
  `cabg_measure` varchar(21) DEFAULT NULL,
  `patient_demographic` varchar(6) DEFAULT NULL,
  `patient_characteristic` varchar(8) DEFAULT NULL,
  `rate` varchar(6) DEFAULT NULL
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
  `30_day_readmits_icd_9` varchar(6) DEFAULT NULL,
  `30_day_readmission_rate_icd_9` varchar(6) DEFAULT NULL,
  `total_admits_icd_10` varchar(9) DEFAULT NULL,
  `30_day_readmits_icd_10` varchar(7) DEFAULT NULL,
  `30_day_readmission_rate_icd_10` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `utilization_rates_for_selected_medical_procedures_in_ca_41f13b8d`
--

DROP TABLE IF EXISTS `utilization_rates_for_selected_medical_procedures_in_ca_41f13b8d`;
CREATE TABLE `utilization_rates_for_selected_medical_procedures_in_ca_41f13b8d` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(80) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_name` varchar(51) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c`
--

DROP TABLE IF EXISTS `utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c`;
CREATE TABLE `utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(80) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_name` varchar(51) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `longitude` varchar(12) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `utilization_rates_for_selected_medical_procedures_in_ca_e6936965`
--

DROP TABLE IF EXISTS `utilization_rates_for_selected_medical_procedures_in_ca_e6936965`;
CREATE TABLE `utilization_rates_for_selected_medical_procedures_in_ca_e6936965` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital` varchar(79) DEFAULT NULL,
  `oshpdid` varchar(9) DEFAULT NULL,
  `procedure_name` varchar(39) DEFAULT NULL,
  `count` varchar(6) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `longitute` varchar(12) DEFAULT NULL,
  `latitute` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `utilization_trends_by_health_category`
--

DROP TABLE IF EXISTS `utilization_trends_by_health_category`;
CREATE TABLE `utilization_trends_by_health_category` (
  `date` varchar(6) DEFAULT NULL,
  `setting` varchar(20) DEFAULT NULL,
  `category` varchar(44) DEFAULT NULL,
  `system_name` varchar(33) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vaccine_preventable_disease_cases_by_county_and_year`
--

DROP TABLE IF EXISTS `vaccine_preventable_disease_cases_by_county_and_year`;
CREATE TABLE `vaccine_preventable_disease_cases_by_county_and_year` (
  `disease` varchar(48) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `variant_proportion_nowcasts_for_covid_19`
--

DROP TABLE IF EXISTS `variant_proportion_nowcasts_for_covid_19`;
CREATE TABLE `variant_proportion_nowcasts_for_covid_19` (
  `disease` varchar(8) DEFAULT NULL,
  `location_level` varchar(27) DEFAULT NULL,
  `location` varchar(11) DEFAULT NULL,
  `target_date` varchar(10) DEFAULT NULL,
  `target` varchar(12) DEFAULT NULL,
  `model` varchar(27) DEFAULT NULL,
  `value` varchar(4) DEFAULT NULL,
  `quantile` varchar(13) DEFAULT NULL,
  `archivedt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_age_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_age_and_county`;
CREATE TABLE `vocational_rehab_closures_by_age_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `age_group` varchar(14) DEFAULT NULL,
  `successful_closures` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_disability_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_disability_and_county`;
CREATE TABLE `vocational_rehab_closures_by_disability_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `disability_type` varchar(37) DEFAULT NULL,
  `successful_closures` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_hours_worked`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_hours_worked`;
CREATE TABLE `vocational_rehab_closures_by_hours_worked` (
  `year` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `average_hours_worked_per_week_at_closure` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_occupation_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_occupation_and_county`;
CREATE TABLE `vocational_rehab_closures_by_occupation_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(34) DEFAULT NULL,
  `occupation` varchar(58) DEFAULT NULL,
  `successful_closures` varchar(3) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_race_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_race_and_county`;
CREATE TABLE `vocational_rehab_closures_by_race_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `race_ethnicity` varchar(32) DEFAULT NULL,
  `successful_closures` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_by_sex_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_by_sex_and_county`;
CREATE TABLE `vocational_rehab_closures_by_sex_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `sex` varchar(12) DEFAULT NULL,
  `successful_closures` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_closures_wage_by_county`
--

DROP TABLE IF EXISTS `vocational_rehab_closures_wage_by_county`;
CREATE TABLE `vocational_rehab_closures_wage_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `county_name` varchar(15) DEFAULT NULL,
  `average_hourly_wage_at_closure` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_consumers_by_age_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_consumers_by_age_and_county`;
CREATE TABLE `vocational_rehab_consumers_by_age_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(34) DEFAULT NULL,
  `age_group` varchar(14) DEFAULT NULL,
  `number_of_consumers` varchar(4) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_consumers_by_disability_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_consumers_by_disability_and_county`;
CREATE TABLE `vocational_rehab_consumers_by_disability_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(34) DEFAULT NULL,
  `disability_type` varchar(37) DEFAULT NULL,
  `number_of_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_consumers_by_race_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_consumers_by_race_and_county`;
CREATE TABLE `vocational_rehab_consumers_by_race_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `race_ethnicity` varchar(32) DEFAULT NULL,
  `number_of_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vocational_rehab_consumers_by_sex_and_county`
--

DROP TABLE IF EXISTS `vocational_rehab_consumers_by_sex_and_county`;
CREATE TABLE `vocational_rehab_consumers_by_sex_and_county` (
  `year` varchar(4) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `sex` varchar(12) DEFAULT NULL,
  `number_of_consumers` varchar(5) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(103) DEFAULT NULL,
  `percent` varchar(1) DEFAULT NULL,
  `percent_annotation_desc` varchar(54) DEFAULT NULL
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
-- Table structure for table `vre_in_hospitals_2013`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2013`;
CREATE TABLE `vre_in_hospitals_2013` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(64) DEFAULT NULL,
  `hospital_type` varchar(5) DEFAULT NULL,
  `facility_name1` varchar(66) DEFAULT NULL,
  `facility_name2` varchar(63) DEFAULT NULL,
  `facility_name3` varchar(56) DEFAULT NULL,
  `facid1` varchar(9) DEFAULT NULL,
  `facid2` varchar(9) DEFAULT NULL,
  `facid3` varchar(9) DEFAULT NULL,
  `county` varchar(22) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `incidence_rate` varchar(4) DEFAULT NULL,
  `95pct_confidence_interval_lower_limit` varchar(4) DEFAULT NULL,
  `95pct_confidence_interval_upper_limit` varchar(6) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(1) DEFAULT NULL,
  `case_mix_index` varchar(4) DEFAULT NULL,
  `notes` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2014`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2014`;
CREATE TABLE `vre_in_hospitals_2014` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(64) DEFAULT NULL,
  `hospital_type` varchar(25) DEFAULT NULL,
  `facility_id1` varchar(9) DEFAULT NULL,
  `facility_name1` varchar(68) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `incidence_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `compared_to_pooled_mean_rate` varchar(12) DEFAULT NULL,
  `case_mix_index` varchar(4) DEFAULT NULL,
  `notes` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2015`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2015`;
CREATE TABLE `vre_in_hospitals_2015` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(64) DEFAULT NULL,
  `hospital_type` varchar(5) DEFAULT NULL,
  `facility_id1` varchar(11) DEFAULT NULL,
  `facility_name1` varchar(67) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `case_mix_index` varchar(4) DEFAULT NULL,
  `hospital_onset_cases` varchar(2) DEFAULT NULL,
  `patient_days` varchar(6) DEFAULT NULL,
  `hospital_onset_rate` varchar(4) DEFAULT NULL,
  `ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(13) DEFAULT NULL,
  `notes` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2016`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2016`;
CREATE TABLE `vre_in_hospitals_2016` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(66) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(80) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `facility_category` varchar(31) DEFAULT NULL,
  `facility_type` varchar(37) DEFAULT NULL,
  `case_mix_index` varchar(4) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(7) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `rate_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2017`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2017`;
CREATE TABLE `vre_in_hospitals_2017` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(66) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_category` varchar(82) DEFAULT NULL,
  `hospital_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `rate_2016` varchar(4) DEFAULT NULL,
  `notes` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2018`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2018`;
CREATE TABLE `vre_in_hospitals_2018` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `hai` varchar(66) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hospital_type` varchar(69) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(7) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `rate_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2019`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2019`;
CREATE TABLE `vre_in_hospitals_2019` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2020_first_half`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2020_first_half`;
CREATE TABLE `vre_in_hospitals_2020_first_half` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2020_second_half`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2020_second_half`;
CREATE TABLE `vre_in_hospitals_2020_second_half` (
  `year` varchar(6) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `facility_type` varchar(82) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(7) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(6) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(1) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2021`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2021`;
CREATE TABLE `vre_in_hospitals_2021` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(79) DEFAULT NULL,
  `facility_type` varchar(69) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(7) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `rate_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2022`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2022`;
CREATE TABLE `vre_in_hospitals_2022` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `facility_type` varchar(69) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(7) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `rate_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `vre_in_hospitals_2023`
--

DROP TABLE IF EXISTS `vre_in_hospitals_2023`;
CREATE TABLE `vre_in_hospitals_2023` (
  `year` varchar(4) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `hai` varchar(65) DEFAULT NULL,
  `facility_id` varchar(9) DEFAULT NULL,
  `facility_name` varchar(85) DEFAULT NULL,
  `facility_type` varchar(69) DEFAULT NULL,
  `infections_reported` varchar(3) DEFAULT NULL,
  `patient_days` varchar(8) DEFAULT NULL,
  `rate` varchar(4) DEFAULT NULL,
  `rate_ci_95_lower_limit` varchar(4) DEFAULT NULL,
  `rate_ci_95_upper_limit` varchar(7) DEFAULT NULL,
  `comparison` varchar(6) DEFAULT NULL,
  `months` varchar(2) DEFAULT NULL,
  `rate_2015` varchar(4) DEFAULT NULL,
  `notes` varchar(43) DEFAULT NULL
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
-- Table structure for table `wic_authorized_vendors`
--

DROP TABLE IF EXISTS `wic_authorized_vendors`;
CREATE TABLE `wic_authorized_vendors` (
  `vendor` varchar(200) DEFAULT NULL,
  `address` varchar(111) DEFAULT NULL,
  `second_address` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `zip` varchar(60) DEFAULT NULL,
  `county` varchar(60) DEFAULT NULL,
  `latitude` varchar(60) DEFAULT NULL,
  `longitude` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wic_part_a_redemptions_by_vendor_county`
--

DROP TABLE IF EXISTS `wic_part_a_redemptions_by_vendor_county`;
CREATE TABLE `wic_part_a_redemptions_by_vendor_county` (
  `vendor_county_code` varchar(2) DEFAULT NULL,
  `vendor_county` varchar(15) DEFAULT NULL,
  `obligation_year_and_month` varchar(6) DEFAULT NULL,
  `number_of_families_redeemed` varchar(7) DEFAULT NULL,
  `number_of_food_instruments_redeemed` varchar(8) DEFAULT NULL,
  `dollar_amount_of_food_instruments` varchar(18) DEFAULT NULL,
  `average_cost_per_family` varchar(8) DEFAULT NULL,
  `statewide_infant_formula_rebate` varchar(16) DEFAULT NULL,
  `total_cost_adjusted` varchar(16) DEFAULT NULL,
  `average_cost_adjusted` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wic_part_b_redemptions_by_vendor_county`
--

DROP TABLE IF EXISTS `wic_part_b_redemptions_by_vendor_county`;
CREATE TABLE `wic_part_b_redemptions_by_vendor_county` (
  `vendor_county_code` varchar(2) DEFAULT NULL,
  `vendor_county` varchar(15) DEFAULT NULL,
  `obligation_year_and_month` varchar(6) DEFAULT NULL,
  `number_of_families_redeemed` varchar(6) DEFAULT NULL,
  `number_of_food_instruments_redeemed` varchar(8) DEFAULT NULL,
  `dollar_amount_of_food_instruments` varchar(16) DEFAULT NULL,
  `number_of_ebt_transactions` varchar(8) DEFAULT NULL,
  `dollar_amount_of_ebt_transactions` varchar(16) DEFAULT NULL,
  `average_cost_per_family` varchar(8) DEFAULT NULL,
  `statewide_infant_formula_rebate` varchar(16) DEFAULT NULL,
  `total_cost_adjusted` varchar(16) DEFAULT NULL,
  `average_cost_adjusted` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `wic_part_c_ebt_redemptions_by_vendor_county`
--

DROP TABLE IF EXISTS `wic_part_c_ebt_redemptions_by_vendor_county`;
CREATE TABLE `wic_part_c_ebt_redemptions_by_vendor_county` (
  `vendor_county_code` varchar(2) DEFAULT NULL,
  `vendor_county` varchar(15) DEFAULT NULL,
  `obligation_year_and_month` varchar(6) DEFAULT NULL,
  `number_of_families_redeemed` varchar(6) DEFAULT NULL,
  `number_of_ebt_transactions` varchar(8) DEFAULT NULL,
  `dollar_amount_of_ebt_transactions` varchar(16) DEFAULT NULL,
  `average_cost_per_family` varchar(10) DEFAULT NULL,
  `statewide_infant_formula_rebate` varchar(16) DEFAULT NULL,
  `total_cost_adjusted` varchar(16) DEFAULT NULL,
  `average_cost_adjusted` varchar(8) DEFAULT NULL
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
-- Table structure for table `wic_redemptions_by_participant_category`
--

DROP TABLE IF EXISTS `wic_redemptions_by_participant_category`;
CREATE TABLE `wic_redemptions_by_participant_category` (
  `vendor_location` varchar(20) DEFAULT NULL,
  `participant_category` varchar(26) DEFAULT NULL,
  `year_month_str` varchar(7) DEFAULT NULL,
  `number_of_participants_redeemed` varchar(9) DEFAULT NULL,
  `number_vouchers_redeemed` varchar(10) DEFAULT NULL,
  `total_cost_vouchers` varchar(18) DEFAULT NULL,
  `average_cost` varchar(8) DEFAULT NULL,
  `statewide_infant_formula_rebate` varchar(12) DEFAULT NULL,
  `total_cost_vouchers_adjusted` varchar(15) DEFAULT NULL,
  `average_cost_adjusted` varchar(7) DEFAULT NULL,
  `state_average_cost_adjusted` varchar(7) DEFAULT NULL
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
-- Table structure for table `written_language_of_eligible_individuals_under_age_21_e_2a84e378`
--

DROP TABLE IF EXISTS `written_language_of_eligible_individuals_under_age_21_e_2a84e378`;
CREATE TABLE `written_language_of_eligible_individuals_under_age_21_e_2a84e378` (
  `reporting_period` varchar(7) DEFAULT NULL,
  `language` varchar(37) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(9) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(38) DEFAULT NULL
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

--
-- Table structure for table `xray_technologist_listing`
--

DROP TABLE IF EXISTS `xray_technologist_listing`;
CREATE TABLE `xray_technologist_listing` (
  `license_type` varchar(3) DEFAULT NULL,
  `licensee_first_name` varchar(15) DEFAULT NULL,
  `licensee_last_name` varchar(35) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `young_ae_19_25_population_by_county`
--

DROP TABLE IF EXISTS `young_ae_19_25_population_by_county`;
CREATE TABLE `young_ae_19_25_population_by_county` (
  `year` varchar(4) DEFAULT NULL,
  `reporting_period` varchar(7) DEFAULT NULL,
  `county` varchar(15) DEFAULT NULL,
  `number_of_eligible_individuals` varchar(7) DEFAULT NULL,
  `annotation_code` varchar(1) DEFAULT NULL,
  `count_annotation_desc` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dump completed on 2024-12-20 23:33:07
