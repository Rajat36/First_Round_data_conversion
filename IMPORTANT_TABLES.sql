select * from SDC_ABF_CONTACT_SUCCESS


select * from SDC_CONTACT_WITH_JURIST_SUCCESS


select * from SDC_CONTACT_WITHOUT_JURIST_SUCCESS


select * from SDC_CASE_SUCCESS


select * from SDC_CASE_ATTORNEY_SUCCESS

select * from SDC_AKA_SUCCESS

SELECT * FROM SDC_WITNESS_SUCCESS

select * from SDC_CASE_WITNESS_SUCCESS

select * from SDC_HEARING_SUCCESS


select * from SDC_HEARING_ATTORNEY_SUCCESS


select * from SDC_HEARING_Witness_SUCCESS


select * from SDC_POLICE_OFFICER_SUCCESS


select * from SDC_HEARING_OFFICER_SUCCESS

select * from SDC_CASE_UNPROC_SUCCESS

select * from sdc_case_unproc


select * from perse.dbo.petition

select * from perse.dbo.petition_status

select * from perse.dbo.DECISION_CODE

select * from perse.dbo.FINDING

select * from perse.dbo.FINDING_CODE

select * from perse.dbo.SUB_FINDING

select * from perse.dbo.CONTINUED


select * from perse.dbo.APPEAL


select * from perse.dbo.APPEAL_STATUS

select * from perse.dbo.PERSE_HEARING where CD_DECISION_CDL is not null


select * from perse.dbo.PERSE_CASE

select * from DMV.dbo.DMV_EMPLOYEE

select * from perse.dbo.SCHEDULE where ID_PERSE_CASE is not null


select * from sdc_case

select * from SDC_HEARING

select * from SDC_HEARING_HOTFIX

select * from SDC_DECISION_CODE

alter table SDC_HEARING_HOTFIX
ADD CDL_STATUS varchar(50);

alter table SDC_HEARING_HOTFIX
ADD CDL_CODE varchar(50);

update SDC_HEARING_HOTFIX
set CDL_CODE = X.CD_DECISION_CDL
from SDC_HEARING X inner join SDC_HEARING_HOTFIX Y
ON X.ID_PERSE_CASE = Y.ID_PERSE_CASE

update SDC_HEARING_HOTFIX
set CDL_STATUS = x.TX_DECISION_S
from SDC_DECISION_CODE x inner join SDC_HEARING_HOTFIX Y
ON X.CD_DECISION = y.CDL_CODE






select count(distinct(DT_AFFIRMATION)) as 'NO. OF RECORDS',CASE_STATUS_01 from sdc_case where DT_AFFIRMATION is not null group by CASE_STATUS_01 



select count(distinct(DT_MAIL_RSPNDNT)) as 'NO. OF RECORDS' ,CASE_STATUS_01 from sdc_case where DT_MAIL_RSPNDNT is not null group by CASE_STATUS_01



select count(distinct(DT_DESC_LT)) as 'NO. OF RECORDS', HEARING_STATUS from SDC_HEARING where DT_DESC_LT is not null group by HEARING_STATUS


select count(distinct(DT_HRNG_NOTICE)) as 'NO. OF RECORDS',HEARING_STATUS from SDC_HEARING where DT_HRNG_NOTICE is not null group by HEARING_STATUS




select * from sdc_hearing_hotfix where petition in ('Recon Granted','Recon Denied')



select * from SDC_UNPROC_UPDATE

select * from perse.dbo.UNPROC_CODE

select * from perse.dbo.UNPROC_COMMENT


select * into SDC_UNPROC_STATUS from perse.dbo.UNPROC_STATUS


select * from perse.dbo.UNPROC_REASON


select * from perse.dbo.UNPROC_OTHER


alter table SDC_UNPROC_UPDATE
add UNPROC_STATUS varchar(20);

select * from SDC_UNPROC_STATUS

update SDC_UNPROC_UPDATE
set UNPROC_STATUS = x.TX_UNPROC_STAT_L
from SDC_UNPROC_STATUS x where x.CD_UNPROC_STAT = SDC_UNPROC_UPDATE.CD_UNPROC_STAT



alter table SDC_UNPROC_UPDATE
alter column CD_UNPROC_STAT varchar(10);

update SDC_UNPROC_UPDATE
set UNPROC_STATUS = x.TX_UNPROC_STAT_L
from SDC_UNPROC_STATUS x where x.CD_UNPROC_STAT = SDC_UNPROC_UPDATE.CD_UNPROC_STAT

select TX_UNPROC_STAT_L,ID_UNPROC from SDC_UNPROC_Update x inner join SDC_UNPROC_STATUS y on y.CD_UNPROC_STAT = x.CD_UNPROC_STAT

select * from SDC_UNPROC_update

update 