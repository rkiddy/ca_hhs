
update mcna_population_points_with_t_d_standards set longitude = NULL where cast(longitude as char) = '0';
update mcna_population_points_with_t_d_standards set longitude = NULL where cast(longitude as char) = 'n/a';
alter table mcna_population_points_with_t_d_standards change column longitude longitude decimal(12,8);

update mcna_population_points_with_t_d_standards set latitude = NULL where cast(latitude as char) = '0';
update mcna_population_points_with_t_d_standards set latitude = NULL where cast(latitude as char) = 'n/a';
alter table mcna_population_points_with_t_d_standards change column latitude latitude decimal(12,8);
