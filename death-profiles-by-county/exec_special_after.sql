
alter table death_profiles_by_month_by_county change column year year int;

alter table death_profiles_by_month_by_occurrence change column year year int;

alter table death_profiles_by_month_by_residence change column year year int;

alter table death_profiles_by_year change column year year int;
