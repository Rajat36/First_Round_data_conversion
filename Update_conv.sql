select * from SDC_ABF_FIRM_SUCCESS


select * from SDC_ACC_WITH_JURIST_SUCCESS


select * from SDC_ACC_WITHOUT_JURIST_SUCCESS



select * into SDC_HEARING_HOTFIX from SDC_HEARING_SUCCESS


select * from SDC_HEARING_HOTFIX


select * from SDC_FINDING

select * from SDC_FINDING_CODE

select * from SDC_SUB_FINDING

alter table SDC_HEARING_HOTFIX
add FINDING varchar(50);


alter table SDC_HEARING_HOTFIX
add FINDING_CODE varchar(50);


alter table SDC_HEARING_HOTFIX
add SUB_FINDING varchar(50);

update SDC_HEARING_HOTFIX
set FINDING = x.CD_FINDING
from SDC_Finding x inner join SDC_HEARING_HOTFIX y 
on x.ID_PERSE_HRNG = y.ID_PERSE_HRNG

update SDC_HEARING_HOTFIX
set FINDING_CODE = x.TX_FINDING_S
from SDC_Finding_code x inner join SDC_HEARING_HOTFIX y 
on x.CD_FINDING = y.FINDING


update SDC_HEARING_HOTFIX
set SUB_FINDING = cast (x.TX_SUB_FINDING as varchar(50))
from SDC_SUB_Finding x inner join SDC_HEARING_HOTFIX y 
on x.ID_perse_hrng = y.ID_PERSE_HRNG


update SDC_HEARING_HOTFIX
set FINDING_CODE = null

select * from SDC_HEARING_HOTFIX

select * from perse.dbo.appeal_status

select * into SDC_APPEAL_STATUS from perse.dbo.appeal_status

alter table SDC_HEARING_HOTFIX
add APPEAL varchar(50);


alter table SDC_HEARING_HOTFIX
add APPEAL_STATUS varchar(50);

select * from SDC_APPEAL_STATUS

update SDC_HEARING_HOTFIX
set APPEAL = x.cd_appeal_status
from SDC_APPEAL x inner join SDC_HEARING_HOTFIX y 
on x.ID_perse_hrng = y.ID_PERSE_HRNG

update SDC_HEARING_HOTFIX
set APPEAL_STATUS = x.tx_appeal_status_l
from SDC_APPEAL_STATUS x inner join SDC_HEARING_HOTFIX y 
on y.APPEAL = x.CD_APPEAL_STATUS


update SDC_HEARING_HOTFIX
set APPEAL = 1 
where Appeal != 0


select * from SDC_HEARING_HOTFIX_FAIL

select * from SDC_HEARING_HOTFIX_SUCCESS


-- Blank -> No Finding

select * from SDC_HEARING_HOTFIX

update SDC_HEARING_HOTFIX
set Finding_code = 'No Operation'
where Finding_code = 'No Finding'


-- Appeal Rejected -> Appeal Denied

update SDC_HEARING_HOTFIX
set appeal_status = 'Appeal Denied'
where appeal_status = 'Appeal Rejected'
 
 update SDC_HEARING_HOTFIX
set appeal_status = 'Appeal Granted'
where appeal_status = 'Appeal Approved'


 select * from SDC_HEARING_HOTFIX_FAIL

select * from SDC_HEARING_HOTFIX_SUCCESS


-- no elv BAC -> No Elevated BAC

update SDC_HEARING_HOTFIX
set finding_code = 'No Elevated BAC'
where finding_code = 'no elv BAC'

select * from SDC_OFFICER where ID_BADGE_NUMBER is not null

select * from SDC_OFFICER_UPDATE where badge_id is not null


alter table SDC_OFFICER_UPDATE
add Badge_ID varchar(10)

update SDC_OFFICER_UPDATE
set badge_id = x.ID_BADGE_NUMBER
from SDC_OFFICER x inner join SDC_OFFICER_UPDATE y 
on x.ID_PERSE_CASE = y.ID_PERSE_CASE

select * from SDC_case

select * from SDC_HEARING

select * from SDC_DECISION_CODE
..

select * from SDC_HEARING x inner join SDC_DECISION_CODE y on x.CD_DECISION = y.cd_decision


select distinct(tx_decision_s) from SDC_HEARING x inner join SDC_DECISION_CODE y on x.CD_DECISION_CDL = y.cd_decision


select distinct(tx_decision_s) from SDC_HEARING x inner join SDC_DECISION_CODE y on x.CD_DECISION = y.cd_decision





