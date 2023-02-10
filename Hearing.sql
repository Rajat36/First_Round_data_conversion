select a.*,c.SalesforceRecordId as CaseId,d.SalesforceRecordId as HLSfid,
   (case when CD_HRNG_STATUS='0' THEN 'Hearing Scheduled'
   when CD_HRNG_STATUS='1' THEN 'Hearing Held'
   when CD_HRNG_STATUS='2' THEN 'Hearing Continued'
   when CD_HRNG_STATUS='3' THEN 'Entered in Error'
   when CD_HRNG_STATUS='4' THEN 'Hearing Canceled'
   when CD_HRNG_STATUS='5' THEN 'Petition to Reconsider Request'
   when CD_HRNG_STATUS='6' THEN 'Appeal Requested'
   when CD_HRNG_STATUS='8' THEN 'Failure to Appear' ELSE 'Entered in Error' END ) as HEARING_STATUS,
   b.CD_POLICE_AUTH,b.CD_ARREST_LOCATION

   
   from STG_HEARING_TEST a
   left join STG_PERSE_CASE_TEST b on a.ID_PERSE_CASE=b.ID_PERSE_CASE
   left join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS c on a.ID_PERSE_CASE=c.ID_PERSE_CASE 
   left join STG_HEARING_LOC_CONVERSION_SUCCESS d on a.CD_HRNG_LOC=d.hearing_blng_code
   where b.DT_CREATED > '2014-01-01'




   select * from STG_HRNG_LOC_EXTRACT

     select * from perse.[dbo].[PERSE_HEARING]

	 select * from LND_AH_HEARING

   select * from perse.dbo.PERSE_HEARING


   select * from STG_HEARING_TEST


    select * from STG_HRNG_LOC_EXTRACT
   select * from STG_HEARING_CONV_SUCCESS


   select * from STG_HEARING_CONV_FAIL

   select count(*),substring(errorMessage,1,70) from STG_HEARING_CONV_FAIL group by substring(errorMessage,1,70)


   select * from STG_HEARING_CONV_FAIL 
  where substring(errorMessage,1,70) in ('FIELD_CUSTOM_VALIDATION_EXCEPTION:Case status should be either "Open-N')


  select * from perse.dbo.PERSE_CASE_STATUS
  select * from STG_PERSE_CASE_TEST

   alter table STG_PERSE_CASE_TEST
   add CASE_STATUS varchar(225);


   update STG_PERSE_CASE_TEST
   set CASE_STATUS = 
   select * from STG_HEARING_LOC_CON_ENV_SUCCESS
   select * from STG_HEARING_LOC_CONVERSION_SUCCESS





   select * from STG_HEARING_CONV_SUCCESS
   
   
   


   select distinct(HEARING_STATUS) from (select a.*,c.SalesforceRecordId as CaseId,d.SalesforceRecordId as HLSfid,
   (case when CD_HRNG_STATUS='0' THEN 'Hearing Scheduled'
   when CD_HRNG_STATUS='1' THEN 'Hearing Held'
   when CD_HRNG_STATUS='2' THEN 'Hearing Continued'
   when CD_HRNG_STATUS='3' THEN 'Entered in Error'
   when CD_HRNG_STATUS='4' THEN 'Hearing Canceled'
   when CD_HRNG_STATUS='5' THEN 'Petition to Reconsider Request'
   when CD_HRNG_STATUS='6' THEN 'Appeal Requested'
   when CD_HRNG_STATUS='8' THEN 'Failure to Appear' ELSE 'Entered in Error' END ) as HEARING_STATUS,
   b.CD_POLICE_AUTH,b.CD_ARREST_LOCATION

   
   from STG_HEARING_TEST a
   left join STG_PERSE_CASE_TEST b on a.ID_PERSE_CASE=b.ID_PERSE_CASE
   left join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS c on a.ID_PERSE_CASE=c.ID_PERSE_CASE 
   left join STG_HEARING_LOC_CONVERSION_SUCCESS d on a.CD_HRNG_LOC=d.hearing_blng_code
   where b.DT_CREATED > '2014-01-01')


   select * from STG_HEARING_TEST



