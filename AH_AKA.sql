select a.*,b.SalesforceRecordId as CaseSfId,'Active' as Status from LND_AH_AKA a
   left join STG_PERSE_CASE_CONVERSION_FINAL_SUCCESS b on a.id_perse_case=b.ID_PERSE_CASE where b.DT_CREATED > '2014-01-01'



   select * from perse.dbo.AKA

   select * from LND_AH_AKA

   select * from perse.dbo.PERSE_CASE

  select * from STG_AKA_CONV_SUCCESS

  select * from perse.dbo.UNPROCESSABLE

select * from STG_AKA_CONV_FAIL

select * from STG_AKA_CONV_SUCCESS


select * from STG_AKA_CONV_FAIL



select count(*),substring(errorMessage,1,70) from STG_AKA_CONV_FAIL group by substring(errorMessage,1,70)


  select * from STG_AKA_CONV_FAIL where substring(errorMessage,1,70) in ('INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST:Suffix: bad value for restrict');


  select * from STG_AKA_CONV_FAIL where NM_AKA_SUFFIX is not like '%2ND%' or 
 NM_AKA_SUFFIX is not like '%II%' or 
 ANM_AKA_SUFFIX is not like '%III%' or
 ANM_AKA_SUFFIX is not like '%IV%' or 
 NM_AKA_SUFFIX is not like '%SR%' or 
 NM_AKA_SUFFIX is not like '%JR%';


  select * from STG_AKA_CONV_FAIL where NM_AKA_SUFFIX != '2ND' or 
 NM_AKA_SUFFIX !=  'II' or 
 NM_AKA_SUFFIX !=  'III' or
 NM_AKA_SUFFIX !=  'IV' or 
 NM_AKA_SUFFIX !=  'SR' or 
 NM_AKA_SUFFIX !=  'JR';

 select * from STG_AKA_CONV_FAIL where NM_AKA_SUFFIX not IN ('2ND','II','III','IV','SR','JR')

 alter table STG_AKA_CONV_FAIL
 alter column NM_AKA_SUFFIX varchar(225);

 update STG_AKA_CONV_FAIL
 set NM_AKA_LAST = NM_AKA_LAST + cast (NM_AKA_SUFFIX as varchar)
  where NM_AKA_SUFFIX not IN ('2ND','II','III','IV','SR','JR')


  select distinct(AD_AKA_STATE) from SDC_AKA

  Connecticut

  select * from STG_AKA_SUCCESS

  select * from 