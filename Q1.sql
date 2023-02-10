select a.*,
b.[CD_HRNG_LOC]
      ,b.[CD_HRNG_BLDG] as hearing_blng_code
      ,b.[TX_HRNG_LOC_ROOM]
      ,b.[TX_HRNG_LOC_PHONE]
      ,b.[TX_HRNG_LOC_CNTCT]
      ,b.[FL_HRNG_LOC_ACTIVE],
case when AD_HRNG_BLDG_NAME='WETHERSFIELD DMV' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Wethersfield'
WHEN AD_HRNG_BLDG_NAME='OLD SAYBROOK DMV' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Old Saybrook'
WHEN AD_HRNG_BLDG_NAME='Bridgeport DMV' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Bridgeport'
WHEN AD_HRNG_BLDG_NAME='Civil Family Courthouse' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Waterbury'
ELSE ''
END as location,'2022-08-02' as start_date,'2024-08-02' as end_date,'08:00:00' as start_time,'18:00:00' as end_time,
CASE WHEN FL_HRNG_LOC_ACTIVE='Y' THEN 'Yes'
WHEN FL_HRNG_LOC_ACTIVE='N' THEN 'No' END as Active_Flg,
'12:00:00' as lunch_start_time,'13:00:00' as lunch_end_time, 1 as Allow_hearings_during_lunch__c,
cast(CASE WHEN FL_HRNG_LOC_ACTIVE='N' THEN '0' WHEN FL_HRNG_LOC_ACTIVE='Y' THEN '1' END  as char) as HRNG_LOC_FLG,
case when AD_HRNG_BLDG_NAME='WETHERSFIELD DMV' and FL_HRNG_LOC_ACTIVE='Y' and CD_HRNG_LOC='2'  THEN 'Wethersfield 2'
when AD_HRNG_BLDG_NAME='WETHERSFIELD DMV' and FL_HRNG_LOC_ACTIVE='Y' and CD_HRNG_LOC='4'  THEN 'Wethersfield 4'
WHEN AD_HRNG_BLDG_NAME='OLD SAYBROOK DMV' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Old Saybrook'
WHEN AD_HRNG_BLDG_NAME='Bridgeport DMV' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Bridgeport'
WHEN AD_HRNG_BLDG_NAME='Civil Family Courthouse' and FL_HRNG_LOC_ACTIVE='Y' THEN 'Waterbury'
ELSE ''
END as ADM_Hearing_Location__c
 from dmv.dbo.HEARING_BUILDING a ,perse.dbo.LOCATION b where a.CD_HRNG_BLDG=b.CD_HRNG_BLDG;