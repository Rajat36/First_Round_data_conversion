select distinct(nm_atty) from PERSE.dbo.ATTORNEY where nm_firm is null and ( ID_ATTY_JURIST is  null or ID_ATTY_JURIST ='')

select * from PERSE.dbo.ATTORNEY where nm_firm is null 

select distinct(ID_ATTY_JURIST) from LND_INDI_ATTY where firm_name is null and ID_ATTY_JURIST is not null and LATEST_RECORD = '1'

select * from LND_INDI_ATT

select * from PERSE.dbo.ATTORNEY

select * from PERSE.dbo.PERSE_CASE
---------------------------------------------------------------------------------------------------------truncate table LND_INDI_ATTY

SELECT NM_ATTY,SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY)) FROM LND_INDI_ATTY;


update LND_AH_ATTORNEY set NM_ATTY=REPLACE(NM_ATTY,',  ESQ.','');

select * from LND_INDI_ATTY where NM_ATTY like '%*%'

                                           MATHEW C SOROKIN,  ESQ
										   CARA CAVALLARI,  ESQ ***
										   ALEXANDER SCHEIRER, ESQ ***
										   JAMES O RUANE ***

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',  ESQ.**','');

select * from LND_INDI_ATTY where NM_ATTY like '%,  ESQ ***%'

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',  ESQ ***','');
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', ESQ ***','');


update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'*','');

select * from LND_INDI_ATTY where NM_ATTY like '%SR%'  , ESQ ***

UPDATE LND_INDI_ATTY SET SUFFIX=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');

UPDATE LND_INDI_ATTY  SET SUFFIX=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR.');


select SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY)) from LND_INDI_ATTY

UPDATE LND_INDI_ATTY set FirstName=SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY))

select NM_ATTY,firstname from LND_INDI_ATTY

Joseph Milardo, Jr.

select nm_atty,FirstName,LastName,MiddleName,suffix from LND_INDI_ATTY  where suffix is null and lastname is null

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',',' ') where lastname is null

update lnd_indi_atty 
set nm_atty = ltrim(rtrim(nm_atty));

select * from lnd_indi_atty where nm_atty like '%MR%'

select NM_ATTY, RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) from  LND_INDI_ATTY where CHARINDEX(' ',REVERSE(NM_ATTY))-1 > 0 ---

UPDATE LND_INDI_ATTY SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) where Suffix is  null

UPDATE LND_INDI_ATTY set MiddleName=ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) ))

select * from LND_INDI_ATTY where NM_ATTY like '%ESQ%';
select * from LND_INDI_ATTY where NM_ATTY not like '% ESQ';

select * from LND_INDI_ATTY where NM_ATTY like '%ESQ';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'ESQ','');

CONSTANTINOS DIAMANTIS, ESQ ***
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'ESQ.','ESQ'); 

select * from LND_INDI_ATTY where NM_ATTY like '%ESQ';
DAVID A ROCHE, ESQ
MATHEW C SOROKIN,  ESQ
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', ESQ','');
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',  ESQ','');
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',ESQ','');
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',ESQ','');
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'ESQ','');
update LND_INDI_ATTY set NM_ATTY=LTRIM(RTRIM(NM_ATTY));
select * from LND_INDI_ATTY where NM_ATTY like '%,';
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',','') where NM_ATTY like '%,';
select * from LND_INDI_ATTY where NM_ATTY like '%.';
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'.','') where NM_ATTY like '%.';
update LND_INDI_ATTY set NM_ATTY=LTRIM(RTRIM(NM_ATTY));
select * from LND_INDI_ATTY;

select NM_ATTY,ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) )) from LND_INDI_ATTY;

select * from LND_INDI_ATTY where NM_ATTY like '%, RSQ.';
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', RSQ.','');


select NM_ATTY, RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) from LND_INDI_ATTY
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');

UPDATE LND_INDI_ATTY SET SUFFIX=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1)
WHERE RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR') and NM_ATTY like '%JR%';

select * from LND_INDI_ATTY where NM_ATTY like '%JR%'

update LND_INDI_ATTY
set suffix = 'SR'
where nm_atty like '% SR'

select * from LND_INDI_ATTY where NM_ATTY like '%SR'

select * from LND_INDI_ATTY where NM_ATTY like '% SR.';
update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' SR','') where NM_ATTY like '% SR';

select * from LND_INDI_ATTY where RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR');  -- suffix

select * from LND_INDI_ATTY where NM_ATTY like '% JR';

select * from LND_INDI_ATTY where RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) IN ('2ND','II','III','IV','SR','JR') and NM_ATTY like '%JR'; 




select * from LND_INDI_ATTY where NM_ATTY like '%, JR';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '%, JR';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', JR','') where NM_ATTY like '%, JR';

---------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '% JR';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '% JR';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' JR','') where NM_ATTY like '% JR';


---------------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '%,JR';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '%,JR';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',JR','') where NM_ATTY like '%,JR';

---------------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '%JR';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '%JR';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,'JR','') where NM_ATTY like '%JR';

---------------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '%, JR.';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '%, JR.';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', JR.','') where NM_ATTY like '%, JR.';

---------------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '% JR.';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '% JR.';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' JR.','') where NM_ATTY like '% JR.';

---------------------------------------------------------------------------------------------------------------------------------------------

select * from LND_INDI_ATTY where NM_ATTY like '%JR%';

update LND_INDI_ATTY
set suffix = 'JR'
where nm_atty like '%JR';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' JR','') where NM_ATTY like '%JR';

ROBERT F DWYER JR ^^^
PETER A SAAD JR,  ***

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' ^^^','') 

select * from LND_INDI_ATTY where NM_ATTY like '%LLC%';


('2ND','II','III','IV','SR','JR')

select * from LND_INDI_ATTY where NM_ATTY like '%2ND';

GEORGE MOWAD, 2ND

update LND_INDI_ATTY
set suffix = '2ND'
where nm_atty like '%2ND';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', 2ND','') where NM_ATTY like '%2ND';

select * from LND_INDI_ATTY where NM_ATTY like '%, III';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '%, III';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', III','') where NM_ATTY like '%, III';




select * from LND_INDI_ATTY where NM_ATTY like '%,III';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '%,III';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',III','') where NM_ATTY like '%,III';

select * from LND_INDI_ATTY where NM_ATTY like '% III';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '% III';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' III','') where NM_ATTY like '% III';



select * from LND_INDI_ATTY where NM_ATTY like '%III%';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '% III';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' III','') where NM_ATTY like '% III';

select * from LND_INDI_ATTY where NM_ATTY like '% III.';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '% III.';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' III.','') where NM_ATTY like '% III.';



-----------------------------------------II--------------------------------------------------------------


select * from LND_INDI_ATTY where NM_ATTY like '%, II';

update LND_INDI_ATTY
set suffix = 'II'
where nm_atty like '%, II';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,', II','') where NM_ATTY like '%, II';




select * from LND_INDI_ATTY where NM_ATTY like '%,II';

update LND_INDI_ATTY
set suffix = 'III'
where nm_atty like '%,III';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,',III','') where NM_ATTY like '%,III';

select * from LND_INDI_ATTY where NM_ATTY like '% II';

update LND_INDI_ATTY
set suffix = 'II'
where nm_atty like '% II';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' II','') where NM_ATTY like '% II';



select * from LND_INDI_ATTY where NM_ATTY like '% IV';


update LND_INDI_ATTY
set suffix = 'IV'
where nm_atty like '% IV';

update LND_INDI_ATTY set NM_ATTY=REPLACE(NM_ATTY,' IV','') where NM_ATTY like '% IV';

select * from LND_INDI_ATTY where NM_ATTY like '%IV';



update LND_INDI_ATTY
set LND_INDI_ATTY.DT_CREATED = PERSE.dbo.PERSE_CASE.DT_CREATED
from LND_INDI_ATTY inner join PERSE.dbo.PERSE_CASE on LND_INDI_ATTY.ID_PERSE_CASE = PERSE.dbo.PERSE_CASE.ID_PERSE_CASE


select * from lnd_indi_atty


UPDATE LND_INDI_ATTY SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) where Suffix is null


select * from PERSE.dbo.PERSE_CASE



select *,
row_number() over(partition by nm_atty order by DT_CREATED desc) as rn
from LND_INDI_ATTY


select distinct(nm_atty) from lnd_indi_atty



update LND_INDI_ATTY
set LND_INDI_ATTY.DT_CREATED = PERSE.dbo.PERSE_CASE.DT_CREATED
from LND_INDI_ATTY inner join PERSE.dbo.PERSE_CASE on LND_INDI_ATTY.ID_PERSE_CASE = PERSE.dbo.PERSE_CASE.ID_PERSE_CASE


select * from lnd_indi_atty where nm_atty like '%LAW OFFICE'
select * from lnd_indi_atty where nm_atty like '%LAW OFFICE%'
select * from lnd_indi_atty where nm_atty like '%LAW OFFICE'
select * from lnd_indi_atty where nm_atty like '%LAW OFFICE'
select * from lnd_indi_atty where nm_atty like '%LAW OFFICE'



select * from lnd_indi_atty where NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %' and LATEST_RECORD = '1'


select * from lnd_indi_atty where ( NM_ATTY  like '%ESQ' or
NM_ATTY  like '%LLC%' or NM_ATTY  like '%FIRM%' or
NM_ATTY  like '%SERVICE%' or NM_ATTY  like '%LAW%' or
NM_ATTY  like '%OFFICES%' or
NM_ATTY  like '%&%' or
NM_ATTY  like '%ASSOCIATES%' or
NM_ATTY  like '% AND %' ) and  LATEST_RECORD = '1'


Philip Wright


WITH CTE
AS (select *,
row_number() over(partition by nm_atty order by DT_CREATED desc) as rn
from LND_INDI_ATTY )
update CTE
set LATEST_RECORD = rn;


select * from LND_INDI_ATTY where LATEST_RECORD = '1' and ID_ATTY_JURIST is null ;

UPDATE LND_INDI_ATTY set FirstName=SUBSTRING(NM_ATTY, 1, CHARINDEX(' ', NM_ATTY))

update LND_INDI_ATTY set ID_ATTY_JURIST=NULL where ID_ATTY_JURIST=''






select * from LND_INDI_ATTY where LATEST_RECORD = '1' and ID_ATTY_JURIST is not null and ( NM_ATTY  like '%ESQ' or
NM_ATTY  like '%LLC%' or NM_ATTY  like '%FIRM%' or
NM_ATTY  like '%SERVICE%' or NM_ATTY  like '%LAW%' or
NM_ATTY  like '%OFFICES%' or
NM_ATTY  like '%&%' or
NM_ATTY  like '%ASSOCIATES%' or
NM_ATTY  like '% AND %' )  ;




select NM_ATTY, RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) from  LND_INDI_ATTY where CHARINDEX(' ',REVERSE(NM_ATTY))-1 > 0 


UPDATE LND_INDI_ATTY SET LastName=RIGHT(NM_ATTY, CHARINDEX(' ',REVERSE(NM_ATTY))-1) from  LND_INDI_ATTY where CHARINDEX(' ',REVERSE(NM_ATTY))-1 > 0 and lastname is null

UPDATE LND_INDI_ATTY set MiddleName=ltrim(substring(NM_ATTY,
charindex(' ',NM_ATTY), 
CHARINDEX(' ',ltrim(SUBSTRING(NM_ATTY,charindex(' ',NM_ATTY),LEN(NM_ATTY)-charindex(' ',NM_ATTY)))) ))

select nm_atty,firstname,middlename,lastname,suffix from lnd_indi_atty where ID_ATTY_JURIST is not null and LATEST_RECORD = '1'


var = 'Unknown Firm - ' + 

Unknown Firm - JOHN  E NIMLO
Unknown Firm - JOSHUA  M FIERO III



select distinct(ID_ATTY_JURIST) from LND_INDI_ATTY where (ID_ATTY_JURIST is not null or ID_ATTY_JURIST = '') and LATEST_RECORD = '1'


select distinct(*) from lnd_indi_atty as y inner join (
select distinct(ID_ATTY_JURIST) from LND_INDI_ATTY where (ID_ATTY_JURIST is not null or ID_ATTY_JURIST = '') and LATEST_RECORD = '1') as X
on y.ID_ATTY_JURIST = x.ID_ATTY_JURIST where (y.ID_ATTY_JURIST is not null or y.ID_ATTY_JURIST = '') and LATEST_RECORD = '1'

select * from lnd_indi_atty where Id_atty_jurist in (select distinct(ID_ATTY_JURIST) from LND_INDI_ATTY where (ID_ATTY_JURIST is not null or ID_ATTY_JURIST = '') and LATEST_RECORD = '1') 


WITH CTE
AS (select *,
row_number() over(partition by ID_ATTY_JURIST order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is not null )
update CTE
set LATEST_RECORD = rn;


select *,
row_number() over(partition by ID_ATTY_JURIST order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is not null



select * from lnd_indi_atty where LATEST_RECORD = 1;

update LND_INDI_ATTY 
set FIRM_NAME = 'Unknown Firm - ' + FirstName + ' ' + MiddleName + ' ' + LastName + ' ' + Suffix
from LND_INDI_ATTY where LATEST_RECORD = '1' and suffix is not null 


select * from LND_INDI_ATTY where LATEST_RECORD = '1' and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')
 

select * from STG_ACC_INDI_ATTY_WITH_JURIST_ID_SUCCESS

select * from STG_ACC_INDI_ATTY_WITH_JURIST_ID_FAIL


alter table LND_INDI_ATTY
add RecordTypeID nvarchar(20);

update LND_INDI_ATTY
set RecordTypeID = '012r0000000ap3SAAQ'



alter table LND_INDI_ATTY
ADD Account_rec_type varchar(255)


update LND_INDI_ATTY
set Account_rec_type = 'ATTORNEY BUSINESS FIRM'



select * from LND_INDI_ATTY



select distinct(nm_atty) from lnd_indi_atty where Id_Atty_jurist is null


select *,
row_number() over(partition by NM_ATTY order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is null


select * from (select *,
row_number() over(partition by NM_ATTY order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is null) as x where x.rn = '1';

FirstName,lastname,MiddleName,suffix,FIRM_NAME


Unknown Firm - MARK MCGUIRE 


select * from STG_ACC_INDI_ATTY_WITH_JURIST_ID_SUCCESS

select * from STG_ACC_INDI_ATTY_WITH_JURIST_ID_FAIL



select * from LND_INDI_ATTY where LATEST_RECORD = '1' and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')

select * from LND_INDI_ATTY where ID_ATTY_JURIST is not null and LATEST_RECORD = '1'

Unknown Firm - RICHARD LASCHEVER 
MARK

select REPLACE(Firm_name,'   ',' ') from LND_INDI_ATTY where ID_ATTY_JURIST is not null and firm_name like '%   %'


update LND_INDI_ATTY 
set FIRM_NAME = REPLACE(Firm_name,'  ',' ') from LND_INDI_ATTY where ID_ATTY_JURIST is not null and firm_name like '%  %'


update LND_INDI_ATTY 
set FIRM_NAME = 'Unknown Firm - ' + FirstName + ' ' + MiddleName + ' ' + LastName 
from LND_INDI_ATTY where LATEST_RECORD = '1' and suffix is null 

update LND_INDI_ATTY
set FirstName = ltrim(rtrim(firstname)) 




                                                                                                     Unknown Firm - DANIEL ALVAH BEEBE




UPDATE LND_INDI_ATTY 
   SET LND_INDI_ATTY.ACCOUNT_SALESFORCE_ID = STG_ACC_INDI_ATTY_WITH_JURIST_ID_SUCCESS.SalesforceRecordId
   from LND_INDI_ATTY inner join STG_ACC_INDI_ATTY_WITH_JURIST_ID_SUCCESS on LND_INDI_ATTY.FIRM_NAME = STG_ACC_INDI_ATTY_WITH_JURIST_ID_SUCCESS.FIRM_NAME
   where LATEST_RECORD = '1' and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')




select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_SUCCESS

select * from STG_CONTACT_INDI_ATTY_WITH_JURIST_ID_FAIL

==========================================================JURIST ID NOT NULL =========================================================================================================

select distinct(nm_atty) from lnd_indi_atty where id_atty_jurist is null

select * from (select *,
row_number() over(partition by NM_ATTY order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is null) as x where x.rn = '1';



WITH CTE
AS (select *,
row_number() over(partition by nm_atty order by DT_CREATED desc) as rn
from LND_INDI_ATTY where ID_ATTY_JURIST is null)
update CTE
set LATEST_RECORD = rn;



select * from lnd_indi_atty where ID_ATTY_JURIST is null and LATEST_RECORD = '1'  and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')


update LND_INDI_ATTY 
set FIRM_NAME = REPLACE(Firm_name,'  ',' ') from LND_INDI_ATTY where ID_ATTY_JURIST is null and firm_name like '%  %'


update LND_INDI_ATTY 
set FIRM_NAME = 'Unknown Firm - ' + FirstName + ' ' + MiddleName + ' ' + LastName 
from LND_INDI_ATTY where LATEST_RECORD = '1' and suffix is null and ID_ATTY_JURIST is null


update LND_INDI_ATTY 
set FIRM_NAME = 'Unknown Firm - ' + FirstName + ' ' + MiddleName + ' ' + LastName + ' ' + Suffix
from LND_INDI_ATTY where LATEST_RECORD = '1' and suffix is not null and ID_ATTY_JURIST is null and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')







select * from STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_SUCCESS

select * from STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_FAIL





UPDATE LND_INDI_ATTY 
   SET LND_INDI_ATTY.ACCOUNT_SALESFORCE_ID = STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_SUCCESS.SalesforceRecordId
   from LND_INDI_ATTY inner join STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_SUCCESS on LND_INDI_ATTY.FIRM_NAME = STG_ACC_INDI_ATTY_WITHOUT_JURIST_ID_SUCCESS.FIRM_NAME
   where ID_ATTY_JURIST is null and LATEST_RECORD = '1'  and (NM_ATTY not like '%ESQ' and
NM_ATTY not like '%LLC%' and NM_ATTY not like '%FIRM%' and
NM_ATTY not like '%SERVICE%' and NM_ATTY not like '%LAW%' and
NM_ATTY not like '%OFFICES%' and
NM_ATTY not like '%&%' and
NM_ATTY not like '%ASSOCIATES%' and
NM_ATTY not like '% AND %')




select * from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_SUCCESS
select * from STG_CONTACT_INDI_ATTY_WITHOUT_JURIST_ID_FAIL





















