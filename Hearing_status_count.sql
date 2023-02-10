select  *,(select Name from STG_RECORDTYPE where SobjectType='Case' and Name='Per se') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='Case' and Name='Per se') as RECORDTYPEID,
 (CASE WHEN CD_PERSE_CASE_STAT=0 THEN 'Unknown Status'
	  WHEN CD_PERSE_CASE_STAT=1 THEN 'Open - No Hearing Scheduled'
	  WHEN CD_PERSE_CASE_STAT=2 THEN 'Hearing Scheduled'
	  WHEN CD_PERSE_CASE_STAT=3 THEN 'Hearing Rescheduled'
	  WHEN CD_PERSE_CASE_STAT=4 THEN 'Case Continued'
	  WHEN CD_PERSE_CASE_STAT=8 THEN 'Closed - Decision Rendered'
	  WHEN CD_PERSE_CASE_STAT=9 THEN 'Closed - Affirmed'
	  WHEN CD_PERSE_CASE_STAT=10 THEN 'Closed - Cancelled'
	  WHEN CD_PERSE_CASE_STAT=11 THEN 'ENTERED IN ERROR'
	  WHEN CD_PERSE_CASE_STAT=12 THEN 'A-44 too late' ELSE 'Unknown Status' END) AS CASE_STATUS_01,
  (CASE WHEN CD_REFUSE_FAIL in ('R','F','D') THEN 'Alcohol' ELSE 'Drug' END) as Type,
  (select a.Id from stg_police_department_load a where a.police_authority_code__c = b.cd_police_auth) as Police_dept_Id,
 (CASE WHEN CD_BAC_IID between '0.02' and '0.039' then '0.02 - 0.039'  
 when CD_BAC_IID between '0.04' and '0.069' then '0.04 - 0.069' 
 when CD_BAC_IID between '0.07' and '0.079' then '0.07 - 0.079'
 when CD_BAC_IID between '0.08' and '0.159' then '0.08 - 0.159'
 when CD_BAC_IID  >= '0.16' then '>=.16'
 WHEN CD_REFUSE_FAIL='R' THEN 'Refusal' ELSE '0.08 - 0.159' END) as ADM_Blood_Alchohol__c,
 (CASE 
 WHEN CD_IID_DUR = '0' THEN 'N/A'
 WHEN CD_IID_DUR = '1' THEN '6 Months'
 WHEN CD_IID_DUR = '2' THEN '1 Year'
 WHEN CD_IID_DUR = '3' THEN '2 Years'
 WHEN CD_IID_DUR = '4' THEN '3 Years' ELSE CD_IID_DUR END) as IID_DURATION,
 b.SALESFORCE_ACCOUNT_ID as accountId,
 (CASE WHEN CD_SAMPLE ='0' THEN 'N' ELSE 'Y' END) as ADM_Sample_Taken__c ,
 (CAST (CASE WHEN b.FL_EXT_GRANTED = 'N' then '0' when b.FL_EXT_GRANTED = 'Y' then '1'  END AS bit)) as GRANTED ,
 (CAST (CASE WHEN b.FL_WORK_PERMIT = 'N' then '0' when b.FL_WORK_PERMIT = 'Y' then '1'  END AS bit)) as WORK_PERMIT
  from STG_PERSE_CASE_TEST b where DT_CREATED > '2014-01-01') as X where x.case_status = ''








  select * into SDC_HEARING from (select a.*,c.SalesforceRecordId as CaseId,d.SalesforceRecordId as HLSfid,
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
   where b.DT_CREATED > '2014-01-01') as X 


   select count(HEARING_STATUS),HEARING_STATUS from sdc_hearing group by HEARING_STATUS