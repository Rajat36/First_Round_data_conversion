select * from  STG_HEARING_LOCATION where ADM_Hearing_Location__c is  null or ADM_Hearing_Location__c = ''


select * from STG_POLICE_DEPARTMENT_LOAD 

select * from PERSE.dbo.PERSE_CASE where DT_CREATED > '2014-01-01'


select * from PERSE.dbo.PERSE_CASE_STATUS

select * from STG_AH_PERSE_CASE_SUCCESS

adsufhiuahsdiuasiuhd
asbdkh
asd
asd






select a.*,b.salesforcerecordid,b.legacy_id,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from LND_AH_WITNESS a left join STG_CASE_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE



   select a.*,c.SalesforceRecordId as witness_sfid,b.salesforcerecordid,b.legacy_id,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from LND_AH_WITNESS a left join STG_CASE_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE 
   join stg_witness_success c on a.ID_PERSE_CASE=c.Legacy_Id





   select a.*,b.SalesforceRecordId as CaseSfId,'Active' as Status from LND_AH_AKA a
   left join stg_case_success b on a.id_perse_case=b.ID_PERSE_CASE


   select * from perse.dbo.PERSE_CASE where ID_PERSE_CASE in (272738,
260152,
261763,
265636,
196714,
146286,
146286,
148393,
183934,
137888,
178990,
191940,
123201,
169422,
142941,
170710,
170143,
180743,
182435)



select * from LND_AH_WITNESS