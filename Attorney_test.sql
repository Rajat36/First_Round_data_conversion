


select * from LND_ATTORNEY_TEST where contact_sales_id is not null and case_sales_id is not null





alter table LND_ATTORNEY_TEST
add CASE_SALES_ID nvarchar(20); 

alter table LND_ATTORNEY_TEST
add contact_SALES_ID nvarchar(20); 


update LND_ATTORNEY_TEST
set CASE_SALES_ID = x.SalesforceRecordId
from STG_ABF_CONTACT_CONV_SUCCESS x where LND_ATTORNEY_TEST.ID_perse_case = x.ID_PERSE_CASE


update LND_ATTORNEY_TEST
set CASE_SALES_ID = x.SalesforceRecordId
from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS x where LND_ATTORNEY_TEST.ID_atty_jurist = x.ID_atty_jurist

update LND_ATTORNEY_TEST
set CASE_SALES_ID = x.SalesforceRecordId
from STG_CON_INDI_ATTY_WITHOUT_JURIST_SUCCESS x where LND_ATTORNEY_TEST.ID_perse_case = x.ID_PERSE_CASE


update LND_ATTORNEY_TEST
set contact_SALES_ID = x.SalesforceRecordId
from STG_Perse_case_success_conv x where LND_ATTORNEY_TEST.ID_perse_case = x.ID_PERSE_CASE

 select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_CONV_SUCCESS 

 select * from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS

 select * from STG_Perse_case_success_conv 

 alter table STG_Perse_case_success_conv 
 add ID_PERSE_CASE varchar(10);







select * from  STG_Attorney_CASE_Association_conv_success


