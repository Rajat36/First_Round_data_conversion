select *,(select Name from STG_RECORDTYPE where SobjectType='Case' and Name='Per se') as RECORDTYPE, 
  (CASE WHEN CD_REFUSE_FAIL in ('R','F','D') THEN 'Alcohol' ELSE 'Drug' END) as Type,
  (select a.Id from stg_police_department_load a where a.police_authority_code__c = b.cd_police_auth) as Police_dept_Id,
 b.SALESFORCE_ACCOUNT_ID as accountId,
 (CASE WHEN CD_SAMPLE ='0' THEN 'N' ELSE 'Y' END) as ADM_Sample_Taken__c ,
 (CAST (CASE WHEN b.FL_WORK_PERMIT = 'N' then '0' when b.FL_WORK_PERMIT = 'Y' then '1'  END AS bit)) as WORK_PERMIT
  from STG_UNPROCESSABLE_TEST b 


  select * from STG_RECORDTYPE

  select * from stg_police_department_load


  select * from STG_UNPROCESSABLE_TEST 

  alter table STG_UNPROCESSABLE_TEST 
  add SALESFORCE_ACCOUNT_ID nvarchar(25);

  alter table STG_UNPROCESSABLE_TEST 
  add UNPROC_REASON varchar(50);


  select * from STG_UNPROCESSABLE_TEST a inner join LND_INDI_ATTY b on a.ID_UNPROC = b.ID_PERSE_CASE where b.DT_CREATED > '2014-01-01'

  alter table STG_UNPROCESSABLE_TEST 
  add RECORDTYPEID nvarchar(25);

  alter table STG_UNPROCESSABLE_TEST 
  add POLICE_DEPARTMENT_SALESFORCE_ID nvarchar(25);

  update STG_UNPROCESSABLE_TEST
  set RecordTypeID = '012r0000000eGSyAAM'

  select * from perse.dbo.UNPROC_CODE


     update STG_UNPROCESSABLE_TEST
   set STG_UNPROCESSABLE_TEST.POLICE_DEPARTMENT_SALESFORCE_ID = STG_POLICE_DEPARTMENT_CONV_DATA.id
   from STG_POLICE_DEPARTMENT_CONV_DATA 
   where STG_UNPROCESSABLE_TEST.CD_POLICE_AUTH = STG_POLICE_DEPARTMENT_CONV_DATA.police_authority_code__c;





   select * from STG_UNPROCESSABLE_TEST


	
  alter table STG_UNPROCESSABLE_TEST 
  alter column CD_ARREST_LOCATION varchar(5);

   select right('000' + ISNULL(CD_ARREST_LOCATION,''),3),CD_ARREST_LOCATION from STG_UNPROCESSABLE_TEST


    select AD_RSPNDNT_ZIP  from STG_UNPROCESSABLE_TEST where len(AD_RSPNDNT_ZIP) < 5


	update STG_UNPROCESSABLE_TEST
	set CD_ARREST_LOCATION =  right('000' + ISNULL(CD_ARREST_LOCATION,''),3)

	update STG_UNPROCESSABLE_TEST
	set AD_RSPNDNT_ZIP = right('00000' + ISNULL(CD_ARREST_LOCATION,''),5)
	where len(AD_RSPNDNT_ZIP) < 5

	select * from STG_UNPROCESSABLE_TEST where NM_RSPNDNT_SUFFIX not IN ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')



	update STG_UNPROCESSABLE_TEST
	set NM_RSPNDNT_SUFFIX = 'SR'
	where NM_RSPNDNT_SUFFIX = 'SR.'



	not IN ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')



	 select * from STG_AKA_CONV_FAIL where NM_AKA_SUFFIX not IN ('2ND','II','III','IV','SR','JR')





	 select * from perse.dbo.HEARING_WITNESS

	 select * from STG_CASE_UNPROC_CONV_SUCCESS


	 select * from STG_CASE_UNPROC_CONV_FAIL


	 select * from STG_CASE_UNPROC_CONV_FAIL 
  where substring(errorMessage,1,70) in ('An error returned from Salesforce for the service call: Arrest Town: b')




  select count(*),substring(errorMessage,1,70) from STG_CASE_UNPROC_CONV_FAIL group by substring(errorMessage,1,70)


  select * from perse.dbo.HEARING_ATTORNEY

 select * from perse.dbo.HEARING_OFFICER 

  select * from perse.dbo.OFFICER

  select * from perse.[dbo].[PERSE_HEARING]



















































