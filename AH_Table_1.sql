select * from dbo.STG_AH_firm





select distinct  a.ID_ATTY_JURIST,b.ID_JURIST,AD_JURIST_FIRM,b.AD_JURIST_STR1,b.AD_JURIST_STR2,b.AD_JURIST_CITY,b.AD_JURIST_STATE,
b.AD_JURIST_ZIP,'Attorney Business Firm' as RecordType from LND_AH_ATTORNEY a 
 JOIN DMV.dbo.JURIST b on COALESCE(a.ID_ATTY_JURIST,'0')=COALESCE(b.ID_JURIST,'0') and a.LATEST_RECORD=1 and a.ID_ATTY_JURIST is not null
and b.AD_JURIST_FIRM is not null;


select * from PERSE.dbo.ATTORNEY where nm_firm is not null



select * from dbo.stg_attorney_success


-- substring and splitstring



SELECT NM_ATTY,SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY)) FROM PERSE.dbo.ATTORNEY;

SELECT NM_ATTY,SUBSTRING(NM_ATTY, CHARINDEX(' ', NM_ATTY)+1, LEN (NM_ATTY)-CHARINDEX(' ', NM_ATTY)) FROM PERSE.dbo.ATTORNEY;



select NM_ATTY,ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) )) from LND_AH_ATTORNEY;



select NM_ATTY, RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) from PERSE.dbo.ATTORNEY
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');

select nm_atty from PERSE.dbo.ATTORNEY where nm_atty like '%SR%';


select * from LND_AH_ATTORNEY


----------------------------------------------------------------------------------------------------------------------------select * into LND_AH_ATTORNEY_BKP from LND_AH_ATTORNEY

------------------------------------------------------------------------------------------------------------truncate table LND_AH_ATTORNEY



UPDATE LND_AH_ATTORNEY set FirstName=SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY))


UPDATE LND_AH_ATTORNEY SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)

UPDATE LND_AH_ATTORNEY set MiddleName=ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) ))


select NM_ATTY,FirstName,MiddleName,LastName,Suffix from LND_AH_ATTORNEY;



UPDATE LND_AH_ATTORNEY SET SUFFIX=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');




select * from LND_ATTORNEY_BUSI_TEST

SELECT Suffix,FirstName,LastName,Middlename,NM_ATTY FROM LND_ATTORNEY_BUSI_TEST where suffix is not null


UPDATE LND_ATTORNEY_BUSI_TEST SET SUFFIX=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');

UPDATE LND_ATTORNEY_BUSI_TEST SET NM_ATTY=replace(nm_atty,RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1),'')
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');

update LND_AH_ATTORNEY set NM_ATTY=REPLACE(NM_ATTY,',  ESQ.','');


UPDATE LND_ATTORNEY_BUSI_TEST SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)

UPDATE LND_ATTORNEY_BUSI_TEST set MiddleName=ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) ))

UPDATE LND_ATTORNEY_BUSI_TEST set FirstName=SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY))


-----update LND_ATTORNEY_BUSI_TEST set NM_ATTY = RTRIM(NM_ATTY) where Suffix is not null


SELECT RTRIM( '     test    ') AS Result;

select rtrim(nm_atty) from LND_ATTORNEY_BUSI_TEST where Suffix is not null 



CARL P FORTUNA 


UPDATE LND_ATTORNEY_BUSI_TEST SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) where Suffix is not null



select * from LND_ATTORNEY_BUSI_TEST

select NM_ATTY,FirstName,MiddleName,LastName,Suffix from LND_ATTORNEY_BUSI_TEST;

select * from LND_AH_ATTORNEY

                                                        

UPDATE LND_ATTORNEY_BUSI_TEST 
   SET FIRM_NAME=(SELECT FIRM_NAME FROM LND_AH_ATTORNEY WHERE LND_ATTORNEY_BUSI_TEST.ID_PERSE_CASE = LND_AH_ATTORNEY.ID_PERSE_CASE);

   select count(ID_ATTY_JURIST) from LND_ATTORNEY_BUSI_TEST





   SELECT * FROM STG_ATTORNEY_BUSI_TEST_ACC_SUCCESS

  

   ALTER TABLE LND_ATTORNEY_BUSI_TEST 
ADD ACCOUNT_SALESFORCE_ID nvarchar(18);



select Distinct(firm_name) from LND_ATTORNEY_BUSI_TEST

----------------------select * into STG_UNI_FIRM_NAME from select Distinct(firm_name) from STG_ATTORNEY_BUSI_TEST_ACC_SUCCESS


select * from STG_ACCOUNT_FIRM_NAME

select * from STG_ACC_FIRM_NM_SUCCESS where salesforceRecordID = '001r000000s2G2G'




UPDATE LND_ATTORNEY_BUSI_TEST 
   SET ACCOUNT_SALESFORCE_ID =(SELECT SalesforceRecordId FROM STG_ACC_FIRM_NM_SUCCESS WHERE LND_ATTORNEY_BUSI_TEST.FIRM_NAME = STG_ACC_FIRM_NM_SUCCESS.firm_name);

   SalesforceRecordId


   select * from STG_ATTORNEY_SUCCESS

   

   select * from LND_ATTORNEY_BUSI_TEST where  latest_record = '1'


   select * from PERSE.dbo.PERSE_CASE where ID_PERSE_CASE in ('242666',
'238646',
'243493',
'271994');


   select * from PERSE.dbo.ATTORNEY where nm_firm is not null


   select * from PERSE.dbo.PERSE_CASE_STATUS




   select * from PERSE.dbo.PERSE_CASE where CD_PERSE_CASE_STAT = '12' order by DT_CREATED

CD_PERSE_CASE_STAT

---alter table LND_ATTORNEY_BUSI_TEST 
add DT_CREATED DATE


select * from LND_ATTORNEY_BUSI_TEST


update LND_ATTORNEY_BUSI_TEST
set LND_ATTORNEY_BUSI_TEST.DT_CREATED = PERSE.dbo.PERSE_CASE.DT_CREATED
from LND_ATTORNEY_BUSI_TEST inner join PERSE.dbo.PERSE_CASE on LND_ATTORNEY_BUSI_TEST.ID_PERSE_CASE = PERSE.dbo.PERSE_CASE.ID_PERSE_CASE
























WITH CTE AS
(
    select Contact__C,P_EMAS_Id__C,RNK,
    ROW_NUMBER() OVER ( PARTITION BY P_EMAS_ID__c ORDER BY CONTACT__C DESC) AS ROW_NUM 
    from CONVUSER.STG_Test_Scores

 

)
UPDATE CTE
SET RNK = ROW_NUM;

                                select * from PERSE.dbo.ATTORNEY where nm_firm is not null
								select * from PERSE.dbo.PERSE_CASE
WITH CTE
AS (select *,
row_number() over(partition by firm_name order by DT_CREATED desc) as rn
from LND_ATTORNEY_BUSI_TEST )
update CTE
set LATEST_RECORD = rn;


select * from LND_ATTORNEY_BUSI_TEST
--  001r000000s2SUsAAM

select *,
row_number() over(partition by firm_name order by DT_CREATED desc) as rn
from LND_ATTORNEY_BUSI_TEST

ID_ATTY_JURIST



update LND_ATTORNEY_BUSI_TEST
set LATEST_RECORD = (select top 1 row_number() over(partition by firm_name order by DT_CREATED desc) from LND_ATTORNEY_BUSI_TEST)




select * from (
select *,
row_number() over(partition by firm_name order by DT_CREATED desc) as rn
from LND_ATTORNEY_BUSI_TEST
) where ID_PERSE_CASE = '242666';



 --select ID_ATTY_JURIST,NM_ATTY,FIRM_NAME,DT_CREATED, 
--row_number() over(partition by firm_name order by ID_ATTY_JURIST) as rn
--from LND_ATTORNEY_BUSI_TEST inner join PERSE.dbo.PERSE_CASE on LND_ATTORNEY_BUSI_TEST.ID_ATTY_JURIST = PERSE.dbo.PERSE_CASE.ID_ATTY_JURIST 


select * from STG_ATTORNEY_SUCCESS



select * from STG_ACCOUNT_FIRM_NAME

alter table STG_ACCOUNT_FIRM_NAME
ADD Account_rec_type varchar(255)


update STG_ACCOUNT_FIRM_NAME
set Account_rec_type = 'ATTORNEY BUSINESS FIRM'


alter table STG_ACCOUNT_FIRM_NAME
add RecordTypeID nvarchar(20);


012r0000000ap3SAAQ
012r0000000ap3SAAQ

update STG_ACCOUNT_FIRM_NAME
set RecordTypeID = '012r0000000ap3SAAQ'


select * from STG_ACC_FIRM_NM_SUCCESS

select * from STG_FIRM_NM_SUCCESS

select * from LND_ATTORNEY_BUSI_TEST


UPDATE LND_ATTORNEY_BUSI_TEST 
   SET ACCOUNT_SALESFORCE_ID =(SELECT SalesforceRecordId FROM STG_FIRM_NM_SUCCESS WHERE LND_ATTORNEY_BUSI_TEST.FIRM_NAME = STG_FIRM_NM_SUCCESS.firm_name);


   SELECT * FROM LND_ATTORNEY_BUSI_TEST WHERE LATEST_RECORD = 1

   select * from STG_ABF_ATTORNEY_SUCCESS

   select * from STG_ABF_ATTORNEY_FAIL




   SELECT NM_ATTY,(SUBSTRING(NM_ATTY, CHARINDEX(' ', NM_ATTY)+1, LEN (NM_ATTY)-CHARINDEX(' ', NM_ATTY))) FROM LND_INDI_ATTY;


   SELECT NM_ATTY,SUBSTRING(NM_ATTY, CHARINDEX(' ', NM_ATTY)+1, LEN (NM_ATTY)-CHARINDEX(' ', NM_ATTY)) FROM PERSE.dbo.ATTORNEY;


   select distinct(FIRM_NAME),NM_ATTY from LND_ATTORNEY_BUSI_TEST where LATEST_RECORD = '1'




   select * from LND_ATTORNEY_BUSI_TEST where LATEST_RECORD = '1'


   ----------------------------contact and acount relationship

   select * from STG_ACC_CONTACT_RELATIONSHIP_FAIL





   select * from PERSE.dbo.ATTORNEY where nm_firm is not null

   select distinct(ID_ATTY_JURIST) from PERSE.dbo.ATTORNEY where ID_ATTY_JURIST != '' and ID_ATTY_JURIST is not null and nm_firm is not null

