select * from perse.dbo.HEARING_ATTORNEY


select * from STG_HEARING_ATTORNEY_TEST 


alter table STG_HEARING_ATTORNEY_TEST
add ATTORNEY_ID nvarchar(20);


update STG_HEARING_ATTORNEY_TEST
set ATTORNEY_ID = X.SalesforceRecordId
from (select ID_PERSE_CASE,SalesforceRecordId from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS X inner join LND_INDI_CONV_Without_Jurist Y 
on x.ACCOUNT_SALESFORCE_ID = y.ACCOUNT_SALESFORCE_ID ) as X where X.ID_PERSE_CASE = STG_HEARING_ATTORNEY_TEST.ID_PERSE_CASE


select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS X inner join LND_INDI_ACC_WITH_JURIST Y 
on x.ID_ATTY_JURIST = y.ID_ATTY_JURIST 

select * from 

update STG_HEARING_ATTORNEY_TEST
set HEARING_ID = X.SalesforceRecordId
from STG_HEARING_CONV_SUCCESS X where X.ID_PERSE_CASE = STG_HEARING_ATTORNEY_TEST.ID_PERSE_CASE


select * from STG_HEARING_ATTORNEY_TEST where ATTORNEY_ID is not null


select * from STG_HEARING_ATTORNEY_CONV_SUCCESS


select * from STG_HEARING_ATTORNEY_CONV_FAIL

select count(*),substring(errorMessage,1,50) from STG_HEARING_ATTORNEY_CONV_FAIL group by substring(errorMessage,1,50)



 select * from STG_HEARING_ATTORNEY_CONV_FAIL 
  where substring(errorMessage,1,50) in ('FIELD_FILTER_VALIDATION_EXCEPTION:Value does not e')






  select * from STG_HEARING_CONV_SUCCESS


  update STG_HEARING_ATTORNEY_TEST
  set HEARING_ID = STG_HEARING_CONV_SUCCESS.SalesforceRecordId
  from STG_HEARING_CONV_SUCCESS
  where STG_HEARING_ATTORNEY_TEST.ID_PERSE_CASE = STG_HEARING_CONV_SUCCESS.ID_PERSE_CASE


  update STG_HEARING_ATTORNEY_TEST
  set HEARING_ID = null 
  where HEARING_ID = ATTORNEY_ID


  select * from STG_HEARING_ATTORNEY_TEST where hearing_id is not null and ATTORNEY_ID is not null



  select * from STG_HEARING_ATTORNEY_CONV_FAIL

    select * from STG_HEARING_ATTORNEY_CONV_SUCCESS

 



  select * from STG_HRNG_ATTY_TEST where ATTORNEY_ID is not null and HEARING_ID is not null

  alter table STG_HRNG_ATTY_TEST
add HEARING_ID nvarchar(20);

select * from LND_ABF_BUSI_TEST

update STG_HRNG_ATTY_TEST
set ATTORNEY_ID = x.ACCOUNT_SALESFORCE_ID
from LND_INDI_ACC_WITH_JURIST x where x.id_perse_case = STG_HRNG_ATTY_TEST.id_perse_case


update STG_HRNG_ATTY_TEST
set HEARING_ID = x.SalesforceRecordId
from STG_HEARING_CONV_SUCCESS x where x.id_perse_case = STG_HRNG_ATTY_TEST.id_perse_case



select * from STG_HRNG_ATTY_TEST where ATTORNEY_ID is not null and HEARING_ID is not null



update STG_HEARING_ATTORNEY_TEST
set ATTORNEY_ID = x.ACCOUNT_SALESFORCE_ID
from STG_ABF_CONTACT_CONV_SUCCESS x where x.id_perse_case = STG_HEARING_ATTORNEY_TEST.id_perse_case




update STG_HEARING_ATTORNEY_TEST
set ATTORNEY_ID = x.ACCOUNT_SALESFORCE_ID
from STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS x where x.ID_PERSE_CASE = STG_HEARING_ATTORNEY_TEST.id_perse_case




 select * from   STG_ABF_CONTACT_CONV_SUCCESS


 select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS 

 select * from STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS .

 alter table STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS
 add ID_PERSE_CASE varchar(10);

 update STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS
 set ID_perse_case = x.ID_perse_case
 from LND_INDI_ACC_WITH_JURIST X where x.id_atty_jurist = STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS.id_atty_jurist

 select * from LND_INDI_CONV_Without_Jurist

 select * from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS

 select * into STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS




 alter table STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS
 add ID_PERSE_CASE varchar(10);



 update STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS
 set ID_perse_case = x.ID_perse_case
 from LND_INDI_ACC_WITH_JURIST X where x.FirstName = STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS.FirstName



 update STG_HEARING_ATTORNEY_TEST
set ATTORNEY_ID = x.ACCOUNT_SALESFORCE_ID
from STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS x where x.ID_PERSE_CASE = STG_HEARING_ATTORNEY_TEST.id_perse_case





select * from hearing_attorney_conv 

alter table hearing_attorney_conv
add hearing nvarchar(20);

alter table hearing_attorney_conv
add attorney nvarchar(20);

update hearing_attorney_conv
set hearing = x.SalesforceRecordId
from STG_HEARING_CONV_SUCCESS x where x.id_perse_case = hearing_attorney_conv.id_perse_case



update hearing_attorney_conv
set ATTORNEY = x.SalesforceRecordId
from STG_ABF_CONTACT_CONV_SUCCESS x where x.id_perse_case = hearing_attorney_conv.id_perse_case




update hearing_attorney_conv
set ATTORNEY = x.SalesforceRecordId
from STG_CON_INDI_ATTY_WITH_JURIST_SUCCESS x where x.ID_PERSE_CASE = hearing_attorney_conv.id_perse_case



 update hearing_attorney_conv
set ATTORNEY = x.SalesforceRecordId
from STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS x where x.ID_PERSE_CASE = hearing_attorney_conv.id_perse_case

select * from hearing_attorney_conv where hearing is not null and attorney is not null



STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_CONV_SUCCESS 




select * from STG_HEARING_ATTORNEY_CONV_FAIL


    select * from STG_HEARING_ATTORNEY_CONV_SUCCESS


	





























