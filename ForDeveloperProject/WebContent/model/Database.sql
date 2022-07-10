CREATE TABLE TBL_DEVELOPER(				
	ID VARCHAR2(15),
	PASSWORD VARCHAR2(15),
	DUID VARCHAR2(20),
	DNAME VARCHAR2(25),			
	DLANGUAGE VARCHAR2(20),			
	NOWSTATUS CHAR(1),			
	GROUPUID VARCHAR2(20),			
	REGISTDAY DATE,			
	ENDPROCNT NUMBER(3),			
	DSTATUS CHAR(1),		 --현재 활동중--	
	DPHONE CHAR(11),			
	position VARCHAR2(40),
	PRIMARY KEY(DUID, GROUPUID)
);	
SELECT * FROM TBL_DEVELOPER
select recipient, gname, requesttype, decode(requesttype, 'group','그룹 참가 요청','sc','스카우트') requestTitle
from request, TBL_GROUP
where recipient='admin'

CREATE TABLE TBL_GROUP (				
	GUID VARCHAR2(20),			
	GNAME VARCHAR2(30),			
	GCONTENTS VARCHAR2(150),			
	REGISTERDAY DATE,			
	GSTATUS CHAR(1),			
	GROUPLEADER VARCHAR2(20),
	CONSTRAINT TBL_GROUP_PK PRIMARY KEY (GROUPLEADER)
);
create table request(
	sender varchar2(20),
	recipient varchar2(20),
	requestType varchar2(20)
);
 FlhcMRgLMMxQjUF jsp 프로젝트  과제        2022-07-10 00:00:00.0 o       oWaVKCQtCfADDvW

select * from request
insert into request values('FlhcMRgLMMxQjUF','admin','sc');
drop table request
select guid, gname, gcontents, registerday, decode(gstatus, 'o','모집중','N','모집완료') gstatus, dname
from TBL_DEVELOPER, TBL_GROUP
where duid=groupleader
order by registerday

insert into TBL_GROUP values(DBMS_RANDOM.STRING('A', 15),'ios 프젝','ios고수되기','2022-07-08','o','zaEXTSZDgoObpys');
select password from tbl_developer where id = 'admin'
INSERT INTO TBL_DEVELOPER VALUES (?,?,DBMS_RANDOM.STRING('A', 15),?,?,'N',NULL,?,0,'N',?,?); --ȸ������--
DROP TABLE TBL_DEVELOPER
update TBL_DEVELOPER set dstatus='N' where id='worms0627'
DROP TABLE TBL_GROUP
SELECT * FROM TBL_AUTH
--SELECT DBMS_RANDOM.STRING('A', 15) STR FROM DUAL; UID 
INSERT INTO TBL_developer VALUES('admin','1234', DBMS_RANDOM.STRING('A', 15),'관리자','Swift','N','NULL','2022-06-28',0,'N','01098031837','ios 앱개발자');
SELECT DNAME, POSITION, DLANGUAGE, ENDPROCNT, DECODE(DSTATUS, 'N','접속안됨','Y', '접속중') DSTATUS
FROM TBL_DEVELOPER
ORDER BY DNAME
select * from TBL_GROUP
select duid from TBL_DEVELOPER where id='admin'
 zaEXTSZDgoObpys

