select a.*,c.SalesforceRecordId_02 as witness_sfid,b.salesforcerecordid as CASE_SUCCESS_ID,b.ID_PERSE_CASE,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN c.AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from STG_AH_WITNESS a left join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE 
   join stg_witness_conv_success c on a.ID_PERSE_CASE= c.ID_PERSE_CASE




   select * from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS

   select * into STG_AH_WITNESS from LND_AH_WITNESS

   select * from


   Update STG_AH_WITNESS
   set witness_sfid = a.SalesforceRecordId
   from STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS a inner join STG_AH_WITNESS b
   on a.ID_PERSE_CASE = b.ID_PERSE_CASE






   select * from STG_CASE_WITNESS_CONV_SUCCESS

    select * from STG_CASE_WITNESS_CONV_FAIL


