select a.*,b.salesforcerecordid,(select Name from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='ADM_Witness__c' and Name='Witness - Non-Police') as RECORDTYPEID,
 (CASE WHEN AD_WITNESS_STATE='CT' THEN 'Connecticut' ELSE NULL END) as Witness_state
   from LND_AH_WITNESS a left join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS b on a.id_perse_case = b.ID_PERSE_CASE






   select * from LND_AH_WITNESS

   select * from STG_WITNESS_CONV_SUCCESS

   select * from STG_WITNESS_CONV_FAIL


























   select * from stg_witness_conv_success

   select * from STG_WITNESS_CONV_FAIL

   
  SalesforceRecordId_02


   Connecticut











