
drop table if exists pccu_facilities;

create table pccu_facilities (
  pk int primary key,
  sheetname varchar(63),
  file_pk int,
  fac_acquire_equip_over_500k char(1),
  fac_address_one varchar(127),
  fac_address_two varchar(63),
  fac_admin_name varchar(127),
  fac_city varchar(63),
  fac_name varchar(127),
  fac_no int,
  fac_operated_this_yr char(1),
  fac_oper_curryr varchar(11),
  fac_op_per_begin_dt varchar(19),
  fac_op_per_end_dt varchar(19),
  fac_par_corp_bus_addr varchar(127),
  fac_par_corp_city varchar(63),
  fac_par_corp_name varchar(127),
  fac_par_corp_state varchar(31),
  fac_par_corp_zip varchar(15),
  fac_phone varchar(31),
  fac_str_addr varchar(127),
  fac_zip varchar(15),
  fac_zipcode varchar(15),
  parent_address_one varchar(127),
  parent_address_two varchar(63),
  parent_city varchar(127),
  parent_name varchar(127),
  parent_state varchar(15),
  parent_zipcode varchar(15));

drop table if exists pccu_files;

create table pccu_files (
  pk int primary key,
  name varchar(127),
  tag varchar(15));

