select * from SDC_AH_ATTORNEY 

select * from SDC_AH_ATTORNEY WHERE NM_FIRM IS NOT NULL


SELECT * INTO SDC_ATTORNEY_BUSINESS_FIRM FROM LND_ABF_BUSI_TEST 

SELECT * FROM LND_AH_ATTORNEY 

SELECT * FROM SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1



SELECT NM_ATTY,SUBSTRING(FIRM_NAME, 1, CHARINDEX(' ', FIRM_NAME)) FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;



select RIGHT(firm_to_name, CHARINDEX(' ',REVERSE(firm_to_name))-1) 
FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;


UPDATE SDC_ATTORNEY_BUSINESS_FIRM 
set FirstName=SUBSTRING(FIRM_NAME, 1, CHARINDEX(' ', FIRM_NAME))
FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;


UPDATE SDC_ATTORNEY_BUSINESS_FIRM
SET LastName=RIGHT(firm_to_name, CHARINDEX(' ',REVERSE(firm_to_name))-1)
where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;


UPDATE LND_AH_ATTORNEY SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)

UPDATE LND_AH_ATTORNEY set MiddleName=ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) ))



alter table SDC_ATTORNEY_BUSINESS_FIRM 
add firm_to_name varchar(225);



update SDC_ATTORNEY_BUSINESS_FIRM
set firm_to_name = FIRM_NAME
FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1; 

select * FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;

MIRTO & RASILE LAW OFFICES OF
CONN LABORERS LEGAL SERVICE FUND


update SDC_ATTORNEY_BUSINESS_FIRM 
set Firm_to_name=REPLACE(Firm_to_name,' LLP','') 
FROM SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1;


update SDC_ATTORNEY_BUSINESS_FIRM
set LastName = x.lastname
from LND_ABF_BUSI_TEST x where SDC_ATTORNEY_BUSINESS_FIRM.ID_PERSE_CASE = x.ID_PERSE_CASE



select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1


select * from sdc_salesforce_contact_bkp where CreatedDate > '2022-08-01' 


select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_FAIL x inner join sdc_salesforce_contact_bkp y
on x.FirstName = y.FirstName 
where y.CreatedDate > '2022-08-01'

STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_FAIL



select * from 

SELECT * FROM SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1 and nm_atty = 'NO NAME'




SELECT  distinct(firm_name), * FROM SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1


select * into SDC_ABF_FIRM from (SELECT  distinct(firm_name) as Firm, * FROM SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1) as X

select * from SDC_ABF_FIRM



select * from SDC_ATTORNEY_BUSINESS_FIRM where NM_ATTY = 'NO NAME' and LATEST_RECORD = 1



update SDC_ABF_FIRM
set ADM_Is_Attorney__c = 1;


select * from SDC_ABF_FIRM_FAIL

select * from SDC_ABF_FIRM_SUCCESS

alter table SDC_ATTORNEY_BUSINESS_FIRM
add ACCOUNT_SALESFORCE_ID nvarchar(20);

select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1

update SDC_ATTORNEY_BUSINESS_FIRM
set ACCOUNT_SALESFORCE_ID = x.salesforceRecordID
from SDC_ABF_FIRM_SUCCESS x where SDC_ATTORNEY_BUSINESS_FIRM.ID_PERSE_CASE = x.ID_PERSE_CASE


select * from SDC_ABF_CONTACT_FAIL

select * from SDC_ABF_CONTACT_SUCCESS

select * from SDC_CONTACT_WITH_JURIST_SUCCESS where ID_ATTY_JURIST = '414131'

select COUNT(*),ACCOUNT_SALESFORCE_ID from SDC_INDIVIDUAL_ATTY_WITH_JURIST where ID_ATTY_JURIST is not null and latest_record = 1
GROUP BY ACCOUNT_SALESFORCE_ID HAVING COUNT(ACCOUNT_SALESFORCE_ID)>1;


select * from SDC_INDIVIDUAL_ATTY_WITH_JURIST where ID_ATTY_JURIST in ('432728',    
'422303',    
'428058',    
'439081')

update SDC_INDIVIDUAL_ATTY_WITH_JURIST
set TX_EMAIL = null
where ID_ATTY_JURIST in ('432728',    
'422303',    
'428058',    
'439081') and LATEST_RECORD = 1



select * from SDC_CONTACT_WITH_JURIST_FAIL

select * from SDC_CONTACT_WITH_JURIST_SUCCESS

 select count(*),substring(errorMessage,1,70) from SDC_CONTACT_WITH_JURIST_FAIL group by substring(errorMessage,1,70)


select *, ADM_Is_Attorney__c = '1'  from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1;

update SDC_ATTORNEY_BUSINESS_FIRM
set ADM_Is_Attorney__c = 1;



update SDC_INDIVIDUAL_ATTY_WITH_JURIST
set ID_ATTY_JURIST = ltrim(rtrim(ID_ATTY_JURIST))

update SDC_INDIVIDUAL_ATTY_WITH_JURIST
set LATEST_RECORD = NULL

select count(*),ID_ATTY_JURIST from SDC_INDIVIDUAL_ATTY_WITH_JURIST where LATEST_RECORD = 1 AND id_atty_jurist IS NOT NULL group by ID_ATTY_JURIST having count(ID_ATTY_JURIST)>1;


SELECT * FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST WHERE ID_ATTY_JURIST IS NOT NULL AND LATEST_RECORD = 1;

SELECT * FROM PERSE.DBO.PERSE_CASE WHERE ID_PERSE_CASE IN (254133,
273160)



select count(*),ID_ATTY_JURIST from SDC_INDIVIDUAL_ATTY_WITH_JURIST where LATEST_RECORD = 1 AND  id_ATTY_JURIST IS NOT NULL group by ID_ATTY_JURIST having count(ID_ATTY_JURIST)>1;



SELECT * FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST

SELECT * into SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST where ID_ATTY_JURIST is null

WITH CTE
AS (select *,
row_number() over(partition by   order by DT_CREATED desc) as rn
from SDC_INDIVIDUAL_ATTY_WITH_JURIST where ID_ATTY_JURIST is not null )
update CTE
set LATEST_RECORD = rn;



018039    


select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = 1



WITH CTE
AS (select *,
row_number() over(partition by nm_atty  order by DT_CREATED desc) as rn
from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where ID_ATTY_JURIST is null )
update CTE
set LATEST_RECORD = rn;





select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = 1


select * from SDC_ACC_WITHOUT_JURIST_SUCCESS


select * from SDC_ACC_WITHOUT_JURIST_FAIL



13110,
20049,
24562,
43641,
45285,
47035,
47301,
53758,


update SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST 
set FIRM_NAME = 'Unknown Firm - ' + FirstName + ' ' + MiddleName + ' ' + LastName
from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = '1' 
and ID_PERSE_CASE in (13110,
20049,
24562,
43641,
45285,
47035,
47301,
53758)

select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where ID_PERSE_CASE in (13110,
20049,
24562,
43641,
45285,
47035,
47301,
53758)

Unknown Firm - George  Simon

select REPLACE(Firm_name,'  ',' ') from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where firm_name like '%  %'
and ID_PERSE_CASE in (13110,
20049,
24562,
43641,
45285,
47035,
47301,
53758)

update SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST
set FIRM_NAME = REPLACE(Firm_name,'  ',' ') from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where firm_name like '%  %'
and ID_PERSE_CASE in (13110,
20049,
24562,
43641,
45285,
47035,
47301,
53758)


select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = 1;


update SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST
set ACCOUNT_SALESFORCE_ID = x.SalesforceRecordId
from SDC_ACC_WITHOUT_JURIST_SUCCESS x inner join SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST on
x.FIRM = SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST.FIRM_NAME




select * from SDC_CONTACT_WITHOUT_JURIST_SUCCESS

select * from SDC_CONTACT_WITHOUT_JURIST_FAIL


select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where AD_ATTY_ZIP = '0000'


update SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST
set AD_ATTY_ZIP = '000000'
from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where AD_ATTY_ZIP = '0000'




select * from SDC_CASE where CD_DWI_TEST_TYPE = 'DR'


select * from SDC_CASE where DT_CREATED > '2014-01-01'

update SDC_CASE
set CD_DWI_TEST_TYPE = null 
where CD_DWI_TEST_TYPE = 'DR'


alter table SDC_CASE
alter column CD_DWI_TEST_TYPE  char(2) null;


alter table SDC_CASE
alter column case_status_01  varchar(35);

Closed - Decision Rendered


update SDC_CASE
set SALESFORCE_ACCOUNT_ID = NULL


select * from SDC_CONTACT_WITH_JURIST_SUCCESS


alter table SDC_CONTACT_WITH_JURIST_SUCCESS
add ID_PERSE_CASE nvarchar(20);


select * from SDC_INDIVIDUAL_ATTY_WITH_JURIST where LATEST_RECORD = 1 and ID_ATTY_JURIST is not null

update SDC_CONTACT_WITH_JURIST_SUCCESS
set ID_PERSE_CASE= x.ID_PERSE_CASE
from (select * from SDC_INDIVIDUAL_ATTY_WITH_JURIST where LATEST_RECORD = 1 and ID_ATTY_JURIST is not null) x 
inner join SDC_CONTACT_WITH_JURIST_SUCCESS y 
on x.ACCOUNT_SALESFORCE_ID = y.ACCOUNT_SALESFORCE_ID

update SDC_CASE
set SALESFORCE_ACCOUNT_ID = x.SalesforceRecordId
from SDC_CONTACT_WITH_JURIST_SUCCESS x inner join SDC_CASE y on x.ID_PERSE_CASE = y.ID_PERSE_CASE 






select * from SDC_CONTACT_WITHOUT_JURIST_SUCCESS


alter table SDC_CONTACT_WITHOUT_JURIST_SUCCESS
add ID_PERSE_CASE nvarchar(20);


select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = 1

update SDC_CONTACT_WITHOUT_JURIST_SUCCESS
set ID_PERSE_CASE= x.ID_PERSE_CASE
from (select * from SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST where LATEST_RECORD = 1) x 
inner join SDC_CONTACT_WITHOUT_JURIST_SUCCESS y 
on x.ACCOUNT_SALESFORCE_ID = y.ACCOUNT_SALESFORCE_ID



select * from SDC_CASE_FAIL

select * from SDC_CASE_SUCCESS

update SDC_CASE
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (
select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1) X inner join SDC_CASE Y 
on x.ID_PERSE_CASE = y.ID_PERSE_CASE


update SDC_CASE
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (
select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1) X inner join SDC_CASE Y 
on x.ID_PERSE_CASE = y.ID_PERSE_CASE


update SDC_CASE
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (SELECT * FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST WHERE ID_ATTY_JURIST IS NOT NULL AND LATEST_RECORD = 1) X inner join SDC_CASE Y 
on x.ID_PERSE_CASE = y.ID_PERSE_CASE

update SDC_CASE
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (SELECT * FROM SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST WHERE LATEST_RECORD = 1) X inner join SDC_CASE Y 
on x.ID_PERSE_CASE = y.ID_PERSE_CASE






SELECT * FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST WHERE ID_ATTY_JURIST IS NOT NULL AND LATEST_RECORD = 1;



select * from SDC_CASE_FAIL

update SDC_CASE 
set CD_REFUSE_FAIL = 'F'
where CD_REFUSE_FAIL = 'D'


select * from SDC_CASE_SUCCESS


select * from SDC_CASE_FAIL



select * from SDC_CASE_UNPROC where CD_DWI_TEST_TYPE not in ('UR','BR','BL')

update SDC_CASE_UNPROC
set CD_DWI_TEST_TYPE = null
where CD_DWI_TEST_TYPE not in ('UR','BR','BL')

select * from STG_RECORDTYPE


alter table SDC_CASE_UNPROC
add SALESFORCE_ACCOUNT_ID nvarchar(20)

update SDC_CASE_UNPROC
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (
select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1) X inner join SDC_CASE_UNPROC Y 
on x.ID_PERSE_CASE = y.ID_UNPROC


update SDC_CASE_UNPROC
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (
select * from SDC_ATTORNEY_BUSINESS_FIRM where LATEST_RECORD = 1) X inner join SDC_CASE_UNPROC Y 
on x.ID_PERSE_CASE = y.ID_UNPROC


update SDC_CASE_UNPROC
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (SELECT * FROM SDC_INDIVIDUAL_ATTY_WITH_JURIST WHERE ID_ATTY_JURIST IS NOT NULL AND LATEST_RECORD = 1) X inner join SDC_CASE_UNPROC Y 
on x.ID_PERSE_CASE = y.ID_UNPROC

update SDC_CASE_UNPROC
set SALESFORCE_ACCOUNT_ID = x.ACCOUNT_SALESFORCE_ID
from (SELECT * FROM SDC_INDIVIDUAL_ATTY_WITHOUT_JURIST WHERE LATEST_RECORD = 1) X inner join SDC_CASE_UNPROC Y 
on x.ID_PERSE_CASE = y.ID_UNPROC

select * from perse.dbo.UNPROC_REASON

select *,(select Name from STG_RECORDTYPE where SobjectType='Case' and Name='Per Se Unprocessable') as RECORDTYPE, 
  (CASE WHEN CD_REFUSE_FAIL in ('R','F','D') THEN 'Alcohol' ELSE 'Drug' END) as Type,
  (select a.Id from stg_police_department_load a where a.police_authority_code__c = b.cd_police_auth) as Police_dept_Id,
 b.SALESFORCE_ACCOUNT_ID as accountId,
 (CASE WHEN CD_SAMPLE ='0' THEN 'N' ELSE 'Y' END) as ADM_Sample_Taken__c ,
  (select TX_UNPROC_STAT_L from perse.dbo.UNPROC_STATUS m where m.CD_UNPROC_STAT = b.CD_UNPROC_STAT ) as STATUS,
 (CAST (CASE WHEN b.FL_WORK_PERMIT = 'N' then '0' when b.FL_WORK_PERMIT = 'Y' then '1'  END AS bit)) as WORK_PERMIT
  from SDC_CASE_UNPROC b 


  select * from SDC_CASE_UNPROC_SUCCESS

  select * from SDC_CASE_UNPROC_FAIL


  alter table  SDC_CASE_UNPROC
  alter column CD_ARREST_LOCATION varchar(5);


   select right('000' + ISNULL(CD_ARREST_LOCATION,''),3),CD_ARREST_LOCATION from SDC_CASE_UNPROC

   update SDC_CASE_UNPROC
	set CD_ARREST_LOCATION =  right('000' + ISNULL(CD_ARREST_LOCATION,''),3)

	update SDC_CASE_UNPROC
	set AD_RSPNDNT_ZIP = right('00000' + ISNULL(CD_ARREST_LOCATION,''),5)
	where len(AD_RSPNDNT_ZIP) < 5

	select * from SDC_CASE_UNPROC where NM_RSPNDNT_SUFFIX not IN ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')



	update SDC_CASE_UNPROC
	set NM_RSPNDNT_SUFFIX = 'SR'
	where NM_RSPNDNT_SUFFIX = 'JR.'



	update SDC_CASE_UNPROC
	set NM_RSPNDNT_SUFFIX = null
	where NM_RSPNDNT_SUFFIX not IN ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')


	select * from SDC_CASE_UNPROC_SUCCESS

  select * from SDC_CASE_UNPROC_FAIL

  -- FAILED because of arret town 000 code

  select * from SDC_HEARING


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

   
   from SDC_HEARING_TEST a
   left join SDC_CASE_TEST b on a.ID_PERSE_CASE=b.ID_PERSE_CASE
   left join SDC_CASE_SUCCESS c on a.ID_PERSE_CASE=c.ID_PERSE_CASE 
   left join STG_HEARING_LOC_CONVERSION_SUCCESS d on a.CD_HRNG_LOC=d.hearing_blng_code
   where b.DT_CREATED > '2014-01-01'

   STG_PERSE_CASE_TEST

   select * from SDC_HEARING_TEST

   SDC_CASE_TEST


   select * from SDC_CASE_SUCCESS

   select * from SDC_CASE_FAIL

   select * from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS

   select * from SDC_CASE

   alter table SDC_CASE_SUCCESS
   add ID_PERSE_CASE varchar(10)

   update SDC_CASE_SUCCESS
   set ID_PERSE_CASE = x.ID_PERSE_CASE
   from SDC_CASE x inner join SDC_CASE_SUCCESS y 
   on x.ID_CASE_NUM = y.ID_CASE_NUM


   select * from SDC_HEARING_SUCCESS


   
   
   select * from SDC_HEARING_FAIL


   select count(*),substring(errorMessage,1,70) from SDC_HEARING_FAIL group by substring(errorMessage,1,70)


   select * from SDC_WITNESS


   select a.*,b.salesforcerecordid as SALESFORCE_CASE_ID,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from SDC_WITNESS a left join SDC_CASE_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE

   SDC_WITNESS_SUCCESS

   select * from SDC_WITNESS_FAIL


 select * from SDC_WITNESS_TEST


 select * from perse.dbo.aka

 select * from SDC_AKA

 select a.*,b.SalesforceRecordId as CaseSfId,'Active' as Status
  from SDC_AKA a
   left join SDC_CASE_SUCCESS b on a.id_perse_case=b.ID_PERSE_CASE where b.DT_CREATED > '2014-01-01'

    select * from SDC_AKA where NM_AKA_SUFFIX != '2ND' or 
 NM_AKA_SUFFIX !=  'II' or 
 NM_AKA_SUFFIX !=  'III' or
 NM_AKA_SUFFIX !=  'IV' or 
 NM_AKA_SUFFIX !=  'SR' or 
 NM_AKA_SUFFIX !=  'JR';




 select * from SDC_AKA where NM_AKA_SUFFIX not in ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')

  

 alter table SDC_AKA
 alter column NM_AKA_LAST nvarchar(30)


 update SDC_AKA
 set NM_AKA_LAST = NM_AKA_LAST + NM_AKA_SUFFIX
 where NM_AKA_SUFFIX not in ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')



 update SDC_AKA
 set NM_AKA_SUFFIX = null
 where NM_AKA_SUFFIX not in ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')





 select * from SDC_AKA_FAIL


  alter table SDC_AKA_FAIL
 alter column NM_AKA_LAST nvarchar(30)


  alter table SDC_AKA_SUCCESS
 alter column NM_AKA_LAST nvarchar(30)


 select * from SDC_AKA_FAIL

 
 ('2ND','II','III','IV','SR','JR','JR.','3RD','4TH','5TH','7TH','SR.')

 Select * from SDC_AKA where NM_AKA_SUFFIX = '5th'

 update SDC_AKA
 set NM_AKA_SUFFIX = 'Sr.'
 where NM_AKA_SUFFIX = 'SR'




 select distinct(NM_AKA_SUFFIX),a.*,b.SalesforceRecordId as CaseSfId,'Active' as Status
  from SDC_AKA a
   left join SDC_CASE_SUCCESS b on a.id_perse_case=b.ID_PERSE_CASE where b.DT_CREATED > '2014-01-01'

   select * from SDC_AKA_FAIL

 
 select * from SDC_AKA_SUCCESS



 update SDC_AKA
	set AD_AKA_ZIP = right('00000' + ISNULL(AD_AKA_ZIP,''),5)
	where len(AD_AKA_ZIP) < 5




	select * from SDC_WITNESS_SUCCESS


	select a.*,c.SalesforceRecordId as witness_sfid,b.salesforcerecordid as CASE_SUCCESS_ID,b.ID_PERSE_CASE as PERSE_CASE_ID,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN c.AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from SDC_WITNESS a left join SDC_CASE_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE 
   join SDC_WITNESS_SUCCESS c on a.ID_PERSE_CASE= c.ID_PERSE_CASE



   select * from STG_CASE_WITNESS_CONV_SUCCESS
  

  select * from perse.dbo.HEARING_WITNESS

  select * from SDC_HEARING_WITNESS

  alter table SDC_HEARING_WITNESS
  add HEARING_ID nvarchar(20);

  alter table SDC_HEARING_WITNESS
  add WITNESS_ID nvarchar(20);


  update SDC_HEARING_WITNESS
  set WITNESS_ID = x.SalesforceRecordId
  from SDC_Witness_SUCCESS x inner join SDC_HEARING_WITNESS y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE



  select * from SDC_HEARING_WITNESS_FAIL

    select * from SDC_HEARING_WITNESS_SUCCESS


	select * from SDC_HEARING_ATTORNEY 

	
	select * from perse.dbo.HEARING_ATTORNEY

	select * from SDC_HEARING_ATTORNEY


	alter table SDC_HEARING_ATTORNEY
  add HEARING_ID nvarchar(20);

  alter table SDC_HEARING_ATTORNEY
  add ATTORNEY_ID nvarchar(20);


  alter table SDC_HEARING_ATTORNEY
   DROP COLUMN Witness_ID 



   update SDC_HEARING_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_ABF_CONTACT_SUCCESS x inner join SDC_HEARING_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE



   update SDC_HEARING_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_CONTACT_WITH_JURIST_SUCCESS x inner join SDC_HEARING_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE


  update SDC_HEARING_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_CONTACT_WITHOUT_JURIST_SUCCESS x inner join SDC_HEARING_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE


  update SDC_HEARING_ATTORNEY
  set HEARING_ID = x.SalesforceRecordId
  from SDC_HEARING_SUCCESS x inner join SDC_HEARING_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE



  select * from SDC_HEARING_ATTORNEY where ATTORNEY_ID is not null and HEARING_ID is not null

  SELECT * FROM SDC_HEARING_ATTORNEY_SUCCESS

  
  SELECT * FROM SDC_HEARING_ATTORNEY_FAIL




  SELECT * FROM SDC_OFFICER

 alter table SDC_OFFICER
add SALECFORCE_POLICE_DEPARTMENT_ID nvarchar(20);

alter table SDC_OFFICER
alter column CD_POLICE_AUTH varchar(20);


update SDC_OFFICER
set SALECFORCE_POLICE_DEPARTMENT_ID = id
from stg_police_department_load X where x.Police_Authority_Code__c = SDC_OFFICER.CD_POLICE_AUTH




select * from SDC_OFFICER where nm_officer_title in ('Officer','Trooper','Detective','Sargent','Lieutenant','Mrs.','Ms.')

select * from SDC_POLICE_OFFICER_FAIL where nm_officer_title in ('Officer','Trooper','Detective','Sargent','Lieutenant','Mrs.','Ms.')

select distinct(NM_OFFICER_TITLE) from SDC_POLICE_OFFICER_SUCCESS






'Officer','Trooper','Detective','Sargent','Lieutenant','Mrs.','Ms.'



select * from SDC_POLICE_OFFICER_SUCCESS


select * from STG_POLICE_OFFICER_CONV_SUCCESS

update SDC_OFFICER
set NM_OFFICER_TITLE = null 
where nm_officer_title not in ('Officer','Trooper','Detective','Sargent','Lieutenant','Mrs.','Ms.')

alter table sdc_officer
alter column nm_officer_title varchar(30) null 


select * from SDC_OFFICER where NM_OFFICER_FIRST = ''



select * from SDC_POLICE_OFFICER_FAIL


select * from SDC_POLICE_OFFICER_SUCCESS

select *,x.Middle_name__c,y.ID_PERSE_CASE from SDC_OFFICER_SALESFORCE_BKP x inner join SDC_OFFICER y on x.Middle_name__c = y.ID_PERSE_CASE


select * from SDC_OFFICER

select * from SDC_POLICE_OFFICER_FAIL


select * from SDC_POLICE_OFFICER_SUCCESS 



 update SDC_OFFICER
 set NM_OFFICER_SUFFIX = 'Jr.'
 where NM_OFFICER_SUFFIX = 'JR'



 select * from SDC_HEARING_OFFICER 

 alter table SDC_HEARING_OFFICER
 add HEARING_ID nvarchar(20);

alter table SDC_HEARING_OFFICER
 add OFFICER_ID nvarchar(20);

 update SDC_HEARING_OFFICER
 set HEARING_ID = x.salesforceRecordId
 from SDC_HEARING_SUCCESS x inner join SDC_HEARING_OFFICER y on x.id_perse_case = y.id_perse_case


  update SDC_HEARING_OFFICER
 set OFFICER_ID = x.salesforceRecordId
 from SDC_POLICE_OFFICER_SUCCESS x inner join SDC_HEARING_OFFICER y on x.id_perse_case = y.id_perse_case



 select * from SDC_HEARING_OFFICER_SUCCESS



 
 select * from SDC_HEARING_OFFICER_FAIL


 select * from LND_ATTORNEY_TEST 

 
 select * from SDC_ATTORNEY


 select * from SDC_ATTORNEY

 alter table SDC_ATTORNEY
 add CASE_ID nvarchar(20);

  alter table SDC_ATTORNEY
 add ATTORNEY_ID nvarchar(20); 


 update SDC_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_ABF_CONTACT_SUCCESS x inner join SDC_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE



   update SDC_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_CONTACT_WITH_JURIST_SUCCESS x inner join SDC_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE


  update SDC_ATTORNEY
  set ATTORNEY_ID = x.SalesforceRecordId
  from SDC_CONTACT_WITHOUT_JURIST_SUCCESS x inner join SDC_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE


    update SDC_ATTORNEY
  set CASE_ID = x.SalesforceRecordId
  from SDC_CASE_SUCCESS x inner join SDC_ATTORNEY y
  on x.ID_PERSE_CASE = y.ID_PERSE_CASE


  select * from SDC_ATTORNEY x where x.case_id is not null
  and x.attorney_id is not null 

  select * from STG_Attorney_CASE_Association_conv_success


  select * from SDC_CASE_ATTORNEY_SUCCESS


  select * from SDC_HEARING

  select * from SDC_HEARING_SUCCESS



  select ID_PERSE_CASE,SalesforceRecordId,DT_HRNG into SDC_HEARING_UPDATE from  SDC_HEARING_SUCCESS



  select * from SDC_HEARING_UPDATE


  select * from SDC_CASE_SUCCESS






  select * from SDC_CASE_ATTORNEY_FAIL

  select * from SDC_CASE_ATTORNEY_SUCCESS


  select * from SDC_CASE_ATTORNEY_BKP


  select distinct(NM_ATTY),* from SDC_ATTORNEY x inner join SDC_CASE_ATTORNEY_BKP y
on x.NM_ATTY = y.Attorney_name__c 
where y.CreatedDate > '2023-01-01'




select * from SDC_CASE_ATTORNEY_BKP
where CreatedDate > '2023-01-01' and CreatedByID = '005r0000006v8CGAAY'
