truncate table Staging.dbo.stg_hearing_loc_success;

truncate table Staging.dbo.stg_hearing_loc_error;



truncate table PERSE.dbo.STG_Police_Success;





select * from PERSE.dbo.STG_Police_Error


update PERSE.dbo.STG_Police_Error
set 




update PERSE.dbo.STG_Police_Error
set AD_POL_AUTH_ZIP = '00000'
where CD_POLICE_AUTH in ('066' , '063');



update PERSE.dbo.STG_Police_Error
set AD_POL_AUTH_STR2 = NULL
where CD_POLICE_AUTH in ('130','214');


update PERSE.dbo.STG_Police_Error
set AD_POL_AUTH_ZIP = '00000'
where CD_POLICE_AUTH in ('066' , '063');




