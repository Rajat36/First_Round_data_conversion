select *,(select Name from STG_RECORDTYPE where SobjectType='Account' and Name='Person Account') as RECORDTYPE, 
 (select Id from STG_RECORDTYPE where SobjectType='Account' and Name ='Person Account') as RECORDTYPEID from perse.dbo.UNPROCESSABLE;