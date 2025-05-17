select reg_name,* from tt_fsp_basic_details r
left join tm_hrms_region on tt_fsp_basic_details.reg_region_code = tm_hrms_region.reg_code
where reg_region_code = 'NR'
and (year_of_initiation || '-' || year_of_initiation + 1) as fsp_year = '2013-2014'
and fsp_id is not null and mis_mission_code in('IV','II')
