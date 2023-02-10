select * from perse.dbo.OFFICER


select * from STG_POLICE_OFFICER_TEST 

alter table STG_POLICE_OFFICER_TEST
add SALECFORCE_POLICE_DEPARTMENT_ID nvarchar(20);



select * from STG_POLICE_OFFICER_CONV_SUCCESS

select * from STG_POLICE_OFFICER_CONV_Fail

alter table STG_POLICE_OFFICER_CONV_SUCCESS
alter column CD_POLICE_AUTH nvarchar(20);



select * from STG_POLICE_OFFICER_CONV_Fail




update STG_POLICE_OFFICER_TEST
set SALECFORCE_POLICE_DEPARTMENT_ID = id
from stg_police_department_load X where x.Police_Authority_Code__c = STG_POLICE_OFFICER_TEST.CD_POLICE_AUTH














