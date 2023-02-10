
select * from LND_ABF_BUSI_TEST where latest_record = 1


select * from (select *,
row_number() over(partition by ID_ATTY_JURIST order by DT_CREATED desc) as rn
from LND_ABF_BUSI_TEST) a where a.rn = 1 and a.nm_atty = 'NO NAME';





select * from STG_ACC_FIRM_NM_SUCCESS





select * from LND_ABF_BUSI_TEST

select * from STG_ACCOUNT_FIRM_NAME




THE SOULSBY LAW FIRM LLC


012r0000000ap3SAAQ

select * from LND_ABF_BUSI_TEST where LATEST_RECORD = 1


alter table LND_ABF_BUSI_TEST
add RecordTypeID nvarchar(20);

update LND_ABF_BUSI_TEST
set RecordTypeID = '012r0000000dGtIAAU'


select * from STG_ABF_ACC_CONV_SUCCESS

select * from STG_ABF_ACC_CONV_FAIL



select * from LND_ABF_BUSI_TEST where LATEST_RECORD = 1 

update LND_ABF_BUSI_TEST 
set ACCOUNT_SALESFORCE_ID = STG_ABF_ACC_CONV_SUCCESS.salesforce


UPDATE LND_ABF_BUSI_TEST 
   SET ACCOUNT_SALESFORCE_ID =(SELECT SalesforceRecordId FROM STG_ABF_ACC_CONV_SUCCESS WHERE LND_ABF_BUSI_TEST.FIRM_NAME = STG_ABF_ACC_CONV_SUCCESS.firm_name);


   select * from STG_ABF_ATTORNEY_FAIL


 select * from   STG_ABF_CONTACT_CONV_SUCCESS

  select * from   STG_ABF_CONTACT_CONV_FAIL



  select * from LND_INDI_ATTY where ID_ATTY_JURIST is not null and LATEST_RECORD = '1' and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')


select * from LND_INDI_ACC_WITH_JURIST 


update LND_INDI_ACC_WITH_JURIST
set RecordTypeID = '012r0000000dGtIAAU'

UPDATE LND_INDI_ACC_WITH_JURIST 
   SET ACCOUNT_SALESFORCE_ID = STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS.SalesforceRecordId
   from STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS 
   WHERE LND_INDI_ACC_WITH_JURIST.FIRM_NAME = STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS.firm_name
   
   
   (SELECT SalesforceRecordId FROM STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS 
   WHERE LND_INDI_ACC_WITH_JURIST.FIRM_NAME = STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS.firm_name)






  select * from STG_ACC_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS


 select * from LND_INDI_ACC_WITH_JURIST 


 select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS 

 select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_FAIL


 select * into LND_INDI_CONV_Without_Jurist from (select * from LND_INDI_ATTY where ID_ATTY_JURIST is null and LATEST_RECORD = '1' and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')) as a





select * from LND_INDI_CONV_Without_Jurist

update LND_INDI_CONV_Without_Jurist
set RecordTypeID = '012r0000000dGtIAAU'






select * from perse.dbo.PERSE_CASE where ID_CASE_NUM = '21004212'


select Name,Id from STG_RECORDTYPE where SobjectType='Case' and Name='Per se'




select * from STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS 

select * from STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_CONV_FAIL

select * from 

UPDATE LND_INDI_CONV_Without_Jurist 
   SET ACCOUNT_SALESFORCE_ID = STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS.SalesforceRecordId
   from STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS 
   WHERE LND_INDI_CONV_Without_Jurist.FIRM_NAME = STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS.firm_name

   select * from STG_update_contact_error

   select *
   select * from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS 

   select * from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_FAIL




   select * from dbo.stg_hearing_location

   Select * from STG_Hearing_Location_CONV_success



   select * from STG_PERSE_CASE_TEST where ID_PERSE_CASE = '181894'

   select * from LND_INDI_ACC_WITH_JURIST where ID_ATTY_JURIST = '426572'

   select * from LND_INDI_CONV_Without_Jurist 



   alter table STG_PERSE_CASE_TEST
   add SALESFORCE_ACCOUNT_ID nvarchar(20);


   update STG_PERSE_CASE_TEST
   set STG_PERSE_CASE_TEST.SALESFORCE_ACCOUNT_ID = LND_INDI_CONV_Without_Jurist.ACCOUNT_SALESFORCE_ID
   from LND_INDI_CONV_Without_Jurist where STG_PERSE_CASE_TEST.ID_PERSE_CASE = LND_INDI_CONV_Without_Jurist.ID_PERSE_CASE



      update STG_PERSE_CASE_TEST
   set STG_PERSE_CASE_TEST.SALESFORCE_ACCOUNT_ID = X.ACCOUNT_SALESFORCE_ID
   from (select * from LND_ABF_BUSI_TEST where LATEST_RECORD = 1) X  where STG_PERSE_CASE_TEST.ID_PERSE_CASE = X.ID_PERSE_CASE


   select * from STG_PERSE_CASE_TEST 
   inner join LND_INDI_ACC_WITH_JURIST on STG_PERSE_CASE_TEST.ID_PERSE_CASE = LND_INDI_ACC_WITH_JURIST.ID_PERSE_CASE



   select * from STG_PERSE_CASE_TEST where Salesforce_account_id is not null and DT_CREATED > '2014-01-01'


   select * from dmv.dbo.taxtown;


   alter table STG_PERSE_CASE_TEST
   add TAX_TOWN nvarchar(20);


   CD_ARREST_LOCATION
57

ALTER TABLE STG_PERSE_CASE_TEST
ALTER COLUMN TAX_TOWN varchar(255);


   update STG_PERSE_CASE_TEST
   set STG_PERSE_CASE_TEST.TAX_TOWN = dmv.dbo.taxtown.TX_TAXTOWN
   from dmv.dbo.taxtown  where STG_PERSE_CASE_TEST.CD_ARREST_LOCATION = dmv.dbo.taxtown.CD_TAXTOWN

   update STG_PERSE_CASE_TEST
   set STG_PERSE_CASE_TEST.TAX_TOWN = dmv.dbo.taxtown.TX_TAXTOWN 
   from STG_PERSE_CASE_TEST
   inner join dmv.dbo.taxtown on STG_PERSE_CASE_TEST.CD_ARREST_LOCATION = dmv.dbo.taxtown.CD_TAXTOWN













==================================================================================================================================================







   select *,(select Name from STG_RECORDTYPE where SobjectType='Case' and Name='Per se') as RECORDTYPE, 
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
	  WHEN CD_PERSE_CASE_STAT=12 THEN 'A-44 too late' ELSE 'Unknown Status' END) AS CASE_STATUS,
  (CASE WHEN CD_REFUSE_FAIL in ('R','F') THEN 'Alcohol' ELSE 'Drug' END) as Type,
  (select a.Id from stg_police_department_load a where a.police_authority_code__c = b.cd_police_auth) as Police_dept_Id,
 (CASE WHEN CD_BAC_IID between '0.02' and '0.039' then '0.02-0.039'  
 when CD_BAC_IID between '0.04' and '0.069' then '0.04 – 0.069' 
 when CD_BAC_IID between '0.07' and '0.079' then '0.07 – 0.079'
 when CD_BAC_IID between '0.08' and '0.159' then '0.08 – 0.159'
 when CD_BAC_IID  >= '0.16' then '>=.16'
 WHEN CD_REFUSE_FAIL='R' THEN 'Refusal' ELSE '0.08 – 0.159' END) as ADM_Blood_Alchohol__c,
 (CASE 
 WHEN CD_IID_DUR = '0' THEN 'N/A'
 WHEN CD_IID_DUR = '1' THEN '6 Months'
 WHEN CD_IID_DUR = '2' THEN '1 Year'
 WHEN CD_IID_DUR = '3' THEN '2 Years'
 WHEN CD_IID_DUR = '4' THEN '3 Years' ELSE CD_IID_DUR END) as IID_DURATION,
 b.SALESFORCE_ACCOUNT_ID as accountId,
 (CASE WHEN CD_SAMPLE ='0' THEN 'N' ELSE 'Y' END) as ADM_Sample_Taken__c

  from STG_PERSE_CASE_TEST b where DT_CREATED > '2014-01-01' 


  alter table STG_PERSE_CASE_TEST
  alter column CD_IID_DUR varchar(225);


  select * 



 select * from STG_PERSE_CASE_TEST	where ID_CASE_NUM = '21004212'


 


  =================================================================================================================================================



    Select * from STG_Hearing_Location_CONV_SUCCESS




	select * from STG_POLICE_DEPT_SUCCESS






  select * from stg_hearing_location



  select * from LND_HEARING_LOCATION_TEST


  select * from STG_HEARING_LOC_CON_ENV_success

  select * from STG_HEARING_LOC_CON_ENV_FAIL

  
 select * from STG_HEARING_LOC_CONVERSION_SUCCESS

 select * from perse.dbo.police_authority

 select * from STG_POLICE_DEPT_CONV_FAIL





 select *,(select Name from STG_RECORDTYPE where SobjectType='Case' and Name='Per se') as RECORDTYPE, 
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
	  WHEN CD_PERSE_CASE_STAT=12 THEN 'A-44 too late' ELSE 'Unknown Status' END) AS CASE_STATUS,
  (CASE WHEN CD_REFUSE_FAIL in ('R','F') THEN 'Alcohol' ELSE 'Drug' END) as Type,
  (select a.Id from stg_police_department_load a where a.police_authority_code__c = b.cd_police_auth) as Police_dept_Id,
 (CASE WHEN CD_BAC_IID between '0.02' and '0.039' then '0.02-0.039'  
 when CD_BAC_IID between '0.04' and '0.069' then '0.04 – 0.069' 
 when CD_BAC_IID between '0.07' and '0.079' then '0.07 – 0.079'
 when CD_BAC_IID between '0.08' and '0.159' then '0.08 – 0.159'
 when CD_BAC_IID  >= '0.16' then '>=.16'
 WHEN CD_REFUSE_FAIL='R' THEN 'Refusal' ELSE '0.08 – 0.159' END) as ADM_Blood_Alchohol__c,
 (CASE 
 WHEN CD_IID_DUR = '0' THEN 'N/A'
 WHEN CD_IID_DUR = '1' THEN '6 Months'
 WHEN CD_IID_DUR = '2' THEN '1 Year'
 WHEN CD_IID_DUR = '3' THEN '2 Years'
 WHEN CD_IID_DUR = '4' THEN '3 Years' ELSE CD_IID_DUR END) as IID_DURATION,
 b.SALESFORCE_ACCOUNT_ID as accountId,
 (CASE WHEN CD_SAMPLE ='0' THEN 'N' ELSE 'Y' END) as ADM_Sample_Taken__c

  from STG_PERSE_CASE_TEST b where DT_CREATED > '2014-01-01' 








 select * from STG_POLICE_DEPARTMENT_CONV_DATA where police_authority_code__c = 'spg'


 
   alter table STG_PERSE_CASE_TEST
   add POLICE_DEPARTMENT_SALESFORCE_ID nvarchar(20);

   update STG_PERSE_CASE_TEST
   set a.POLICE_DEPARTMENT_SALESFORCE_ID = b.id
   from STG_PERSE_CASE_TEST a inner join STG_POLICE_DEPARTMENT_CONV_DATA b on a.CD_POLICE_AUTH = b.police_authority_code__c;

   select a.CD_POLICE_AUTH ,  b.id  from STG_PERSE_CASE_TEST a inner join STG_POLICE_DEPARTMENT_CONV_DATA b on a.CD_POLICE_AUTH = b.police_authority_code__c;

   update STG_PERSE_CASE_TEST
   set STG_PERSE_CASE_TEST.POLICE_DEPARTMENT_SALESFORCE_ID = STG_POLICE_DEPARTMENT_CONV_DATA.id
   from STG_POLICE_DEPARTMENT_CONV_DATA 
   where STG_PERSE_CASE_TEST.CD_POLICE_AUTH = STG_POLICE_DEPARTMENT_CONV_DATA.police_authority_code__c;




   select * from STG_PERSE_CASE_TEST


   select * from STG_PERSE_CASE_CONV_FAIL

   select * from STG_PERSE_CASE_CONV_SUCCESS

   




   select * from STG_PERSE_CASE_TEST where FL_EXT_GRANTED = 'n'

   update STG_PERSE_CASE_TEST
	set FL_EXT_GRANTED = 'Y'
	from STG_PERSE_CASE_TEST
	where FL_EXT_GRANTED = '1'

	BOOLEAN

	alter table STG_PERSE_CASE_TEST
	alter column FL_EXT_GRANTED CHAR;

	  alter table STG_PERSE_CASE_TEST
  alter column FL_ARREST_WARRANT BIT;

  select * from STG_PERSE_CASE_CONV_FAIL


   


   update STG_PERSE_CASE_TEST
	set FL_ARREST_WARRANT = '0'
	from STG_PERSE_CASE_TEST
	where FL_ARREST_WARRANT = 'n'



	[1/20 7:42 PM] Kuruvilla, Binny
select * from dmv.dbo.taxtown;




select * into STG_PERSE_CASE_TEST_BKP from STG_PERSE_CASE_TEST



select * from STG_PERSE_CASE_TEST_BKP



select (case when len(CD_ARREST_LOCATION) < 2 then ('00' + CD_ARREST_LOCATION) else CD_ARREST_LOCATION end   ) as Arrest 
from STG_PERSE_CASE_TEST
when len(CD_ARREST_LOCATION) < 3 then CD_ARREST_LOCATION = ('0' + CD_ARREST_LOCATION)
else CD_ARREST_LOCATION end ) from STG_PERSE_CASE_TEST



update STG_PERSE_CASE_TEST
set CD_ARREST_LOCATION

when FL_EXT_GRANTED = 'Y' then '1' 


select CAST (CASE WHEN len(CD_ARREST_LOCATION) < 2 then '00' + cast(CD_ARREST_LOCATION as varchar) 
WHEN len(CD_ARREST_LOCATION) < 3 then '0' + cast(CD_ARREST_LOCATION as varchar)
  END AS varchar) as ARREST_LOC from STG_PERSE_CASE_TEST where len(CD_ARREST_LOCATION) < 3


  select ID_PERSE_CASE,CD_ARREST_LOCATION into STG_ARREST_LOCATION_CODE 
  from STG_PERSE_CASE_TEST 

  select * from STG_ARREST_LOCATION_CODE

  alter table STG_ARREST_LOCATION_CODE
  add ARREST_LOCATION nvarchar;

  update STG_ARREST_LOCATION_CODE
  set ARREST_LOC = cast('00' + cast(CD_ARREST_LOCATION as varchar) as varchar)
  from STG_ARREST_LOCATION_CODE 
  where len(CD_ARREST_LOCATION) < 2


  alter table STG_ARREST_LOCATION_CODE
  alter column ARREST_LOC varchar;





  update STG_ARREST_LOCATION_CODE
  set ARREST_LOC = cast(a.LOCATION as nvarchar) 
  from (select ID_PERSE_CASE,CAST (CASE WHEN len(CD_ARREST_LOCATION) < 2 then '00' + cast(CD_ARREST_LOCATION as varchar) 
WHEN len(CD_ARREST_LOCATION) < 3 then '0' + cast(CD_ARREST_LOCATION as varchar)
  END AS varchar) as LOCATION from STG_PERSE_CASE_TEST where len(CD_ARREST_LOCATION) < 3) a 
  where STG_ARREST_LOCATION_CODE.ID_PERSE_CASE = a.ID_PERSE_CASE

  

 


 select * from (select STG_PERSE_CASE_TEST.*,CAST (CASE WHEN len(CD_ARREST_LOCATION) < 2 then '00' + cast(CD_ARREST_LOCATION as varchar) 
WHEN len(CD_ARREST_LOCATION) < 3 then '0' + cast(CD_ARREST_LOCATION as varchar)
  END AS varchar) as ARREST_LOC from STG_PERSE_CASE_TEST )



  select * from STG_ARREST_LOCATION_CODE


  update STG_ARREST_LOCATION_CODE
  set ARREST_LOC = cast(CD_ARREST_LOCATION as varchar)


  select FORMAT(CD_ARREST_LOCATION,'000'),CD_ARREST_LOCATION from STG_PERSE_CASE_TEST

  select right('000' + ISNULL(CD_ARREST_LOCATION,''),3),CD_ARREST_LOCATION from STG_PERSE_CASE_TEST

  alter table STG_PERSE_CASE_TEST
  alter column CD_ARREST_LOCATION varchar(5);

  select * from STG_PERSE_CASE_TEST WHERE FL_ARREST_WARRANT = 1

  SELECT FL_ARREST_WARRANT FROM STG_PERSE_CASE_TEST WHERE FL_ARREST_WARRANT IS NULL


  select count(*),substring(errorMessage,1,70) from STG_PERSE_CASE_CONVersion_FAIL group by substring(errorMessage,1,70)


  select * from STG_PERSE_CASE_CONV_FAIL where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict');

  select * from STG_PERSE_CASE_TEST 

  MEREJILDO-RODRI

  UPDATE STG_PERSE_CASE_TEST 
  SET CD_ARREST_LOCATION = right('000' + ISNULL(CD_ARREST_LOCATION,''),)

  UPDATE STG_PERSE_CASE_TEST
  SET FL_ARREST_WARRANT = 0
  FROM STG_PERSE_CASE_TEST WHERE FL_ARREST_WARRANT IS NULL




  select * from STG_PERSE_CASE_CONV_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict');


  ALTER TABLE STG_PERSE_CASE_CONV_FAIL
  ALTER COLUMN NM_RSPNDNT_LAST VARCHAR(225);



  UPDATE STG_PERSE_CASE_CONV_FAIL
  SET NM_RSPNDNT_LAST = NM_RSPNDNT_LAST + NM_RSPNDNT_SUFFIX

  UPDATE STG_PERSE_CASE_CONV_FAIL
  SET  NM_RSPNDNT_SUFFIX = NULL


  ALTER TABLE STG_PERSE_CASE_TEST
  ALTER COLUMN NM_RSPNDNT_LAST VARCHAR(225);


  UPDATE STG_PERSE_CASE_TEST
  SET NM_RSPNDNT_LAST = X.NM_RSPNDNT_LAST
  FROM (select * from STG_PERSE_CASE_CONV_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict')) AS X
  
 INNER JOIN STG_PERSE_CASE_TEST AS Y ON X.ID_CASE_NUM = Y.ID_CASE_NUM


 SELECT * FROM STG_PERSE_CASE_TEST WHERE NM_RSPNDNT_SUFFIX IS NOT NULL



 UPDATE STG_PERSE_CASE_TEST
  SET NM_RSPNDNT_SUFFIX = NULL
  FROM (select * from STG_PERSE_CASE_CONV_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict')) AS X
  
 INNER JOIN STG_PERSE_CASE_TEST AS Y ON X.ID_CASE_NUM = Y.ID_CASE_NUM




 SELECT * FROM STG_PERSE_CASE_TEST

 SELECT * FROM STG_PERSE_CASE_CONVERSION_SUCCESS

 




 select * from STG_PERSE_CASE_CONVersion_FAIL

 select * into CASE_CONVERSION_ERR_BKP from STG_PERSE_CASE_CONVersion_FAIL


 select count(*),substring(errorMessage,1,70) from STG_PERSE_CASE_CONVersion_FAIL group by substring(errorMessage,1,70)

 --NM_RSPNDNT_LAST,NM_RSPNDNT_SUFFIX,NM_RSPNDNT_FIRST,NM_RSPNDNT_MI
 select * from STG_PERSE_CASE_CONVersion_FAIL where substring(errorMessage,1,70)= 'INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Alcohol Test Type: bad value f'

 update STG_PERSE_CASE_CONVersion_FAIL set AD_RSPNDNT_ZIP='00000'
 where substring(errorMessage,1,70)= 'FIELD_CUSTOM_VALIDATION_EXCEPTION:Zip code cannot be less than 5 chara'

 select * from perse.dbo.perse_case where ID_CASE_NUM in ('22001563','22001873')

 0.08 - 0.159
 0.08 - 0.159

 select * from perse.dbo.UNPROCESSABLE

 select * from perse.dbo.UNPROC_CODE

 select * from perse.dbo.AKA

 select * from perse.dbo.UNPROC_STATUS

 INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:bad value for restricted picklist field: 0.08 – 0.159:ADM_Bl

 update STG_PERSE_CASE_TEST set 



 select * from STG_PERSE_CASE_CONVersion_FAIL 
 where substring(errorMessage,1,70)= 'INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Alcohol Test Type: bad value f'


 select count(*),substring(errorMessage,1,70) from STG_PERSE_CASE_CONVersion_FAIL group by substring(errorMessage,1,70)


 




 select * from STG_PERSE_CASE_CONVersion_FAIL 
 where substring(errorMessage,1,70)= 'INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict'




 UPDATE STG_PERSE_CASE_CONVERSION_FAIL
  SET NM_RSPNDNT_SUFFIX = null
where substring(errorMessage,1,70)= 'INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict'


  UPDATE STG_PERSE_CASE_CONV_FAIL
  SET  NM_RSPNDNT_SUFFIX = NULL


  ALTER TABLE STG_PERSE_CASE_TEST
  ALTER COLUMN NM_RSPNDNT_LAST VARCHAR(225);


  UPDATE STG_PERSE_CASE_TEST
  SET NM_RSPNDNT_LAST = X.NM_RSPNDNT_LAST
  FROM (select * from STG_PERSE_CASE_CONVERSION_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict')) AS X
 INNER JOIN STG_PERSE_CASE_TEST AS Y ON X.ID_CASE_NUM = Y.ID_CASE_NUM


 SELECT * FROM STG_PERSE_CASE_TEST WHERE NM_RSPNDNT_SUFFIX IS NOT NULL



 UPDATE STG_PERSE_CASE_TEST
  SET NM_RSPNDNT_SUFFIX = NULL
  FROM (select * from STG_PERSE_CASE_CONVersion_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict')) AS X
  
 INNER JOIN STG_PERSE_CASE_TEST AS Y ON X.ID_CASE_NUM = Y.ID_CASE_NUM



 select * from (select * from STG_PERSE_CASE_CONVersion_FAIL 
  where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict')) AS X
  
 INNER JOIN STG_PERSE_CASE_TEST AS Y ON X.ID_CASE_NUM = Y.ID_CASE_NUM


 select * from STG_PERSE_CASE_TEST where CD_DWI_TEST_TYPE = 'DR'

 update STG_PERSE_CASE_TEST
 set CD_DWI_TEST_TYPE = null
 where CD_DWI_TEST_TYPE = 'DR'

 INVALID_EMAIL_ADDRESS:Email: invalid email address: lela05diaz@gmail:D

 STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS




 select * from STG_PERSE_CASE_CONVersion_FAIL 
  where substring(errorMessage,1,50) in ('INVALID_EMAIL_ADDRESS:Email: invalid email address')

  select count(*),substring(errorMessage,1,50) from STG_PERSE_CASE_CONVERSION_FINAL_FAIL group by substring(errorMessage,1,50)

  update STG_PERSE_CASE_TEST
 set TX_RSPNDNT_EMAIL = null
 where TX_RSPNDNT_EMAIL = 'IN PERSON'


 COMING IN PERSON
347-483-0675
COMING IN PERSON
IN PERSON



select * from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS

select * from STG_PERSE_CASE_CONVERSION_FINAL_FAIL





 update STG_PERSE_CASE_CONVERSION_FINAL_FAIL set AD_RSPNDNT_ZIP='00000'
 where substring(errorMessage,1,50)= 'FIELD_CUSTOM_VALIDATION_EXCEPTION:Zip code cannot '


 
 select * from STG_PERSE_CASE_CONVERSION_FINAL_FAIL 
  where substring(errorMessage,1,50) in ('UNABLE_TO_LOCK_ROW:unable to obtain exclusive acce')




  select count(*),substring(errorMessage,1,50) from STG_PERSE_CASE_CONVERSION_FINAL_FAIL group by substring(errorMessage,1,50)


  update STG_PERSE_CASE_TEST
  set AD_RSPNDNT_ZIP = '00000'
  from (select * from STG_PERSE_CASE_CONVERSION_FINAL_FAIL 
  where substring(errorMessage,1,50) in ('FIELD_CUSTOM_VALIDATION_EXCEPTION:Zip code cannot ')) as X
  inner join STG_PERSE_CASE_TEST as Y on X.ID_CASE_NUM = Y.ID_CASE_NUM

  
  
  
  
  
  
  alter table STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS
  add ID_PERSE_CASE varchar(20);


  update STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS
  set ID_PERSE_CASE = X.ID_PERSE_CASE
  from STG_PERSE_CASE_TEST as X inner join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS as Y
  on X.ID_CASE_NUM = Y.ID_CASE_NUM


  select * from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS


  select * from STG_PERSE_CASE_CONVERSION_FINAL_FAIL