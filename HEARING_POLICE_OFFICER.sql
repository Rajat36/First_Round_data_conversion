select * from perse.dbo.hearing_officer


select * from STG_HEARING_POLICE_OFFICER_TEST where police_officer_id is not null and hearing_id is not null





		alter table STG_HEARING_POLICE_OFFICER_TEST
		alter column HEARING_ID nvarchar(20);


		update STG_HEARING_POLICE_OFFICER_TEST
		set police_officer_id = x.salesforcerecordid
		from STG_POLICE_OFFICER_CONV_SUCCESS x where x.id_perse_case = STG_HEARING_POLICE_OFFICER_TEST.id_perse_case




		select * from STG_HEARING_POLICE_OFFICER_CONV_SUCCESS


		select * from STG_HEARING_POLICE_OFFICER_CONV_FAIL


















































