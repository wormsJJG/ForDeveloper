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

INSERT INTO TBL_DEVELOPER VALUES('tcfryughbinjo897','sfeda47',DBMS_RANDOM.STRING('A', 15),'정재근','swift','N','NULL','2008-05-12',0,'N','01012345678','개발자');
INSERT INTO TBL_DEVELOPER VALUES('anjgkwl54681','gyids123',DBMS_RANDOM.STRING('A', 15),'안휘성','HTML5','N','NULL','2009-06-22',0,'N','01012345678','웹디자이너');
INSERT INTO TBL_DEVELOPER VALUES('rfgvbnju745','qdsfv965',DBMS_RANDOM.STRING('A', 15),'엄지원','python','N','NULL','2009-08-02',0,'N','01012345678','개발자');
INSERT INTO TBL_DEVELOPER VALUES('qwer1234asdf','4621asd87961',DBMS_RANDOM.STRING('A', 15),'최종학','photoshop','N','NULL','2008-05-12',0,'N','01012345678','그래픽디자이너');
INSERT INTO TBL_DEVELOPER VALUES('shskatn49201','1sd78cv52',DBMS_RANDOM.STRING('A', 15),'노남수','css','N','NULL','2008-05-12',0,'N','01012345678','웹디자이너');
INSERT INTO TBL_DEVELOPER VALUES('ertdyfgubhn0','75521asdzx1',DBMS_RANDOM.STRING('A', 15),'이시우','java','N','NULL','2008-05-12',0,'N','01012345678','개발자');
INSERT INTO TBL_DEVELOPER VALUES('dafsrtg5234','tyuill7854',DBMS_RANDOM.STRING('A', 15),'장수혁','JSP','N','NULL','2008-05-12',0,'N','01012345678','웹디자이너');
INSERT INTO TBL_DEVELOPER VALUES('1w5fvc2v1z','7x5x1w1df41b',DBMS_RANDOM.STRING('A', 15),'운지찬','C','N','NULL','2008-05-12',0,'N','01012345678','개발자');
INSERT INTO TBL_DEVELOPER VALUES('ww12x5v4d5ff4g','2v4v4fa3dx548',DBMS_RANDOM.STRING('A', 15),'김 귤','C++','N','NULL','2008-05-12',0,'N','01012345678','개발자');
INSERT INTO TBL_DEVELOPER VALUES('apple','4and',DBMS_RANDOM.STRING('A', 15),'김사과','swift','N','NULL','2008-05-12',0,'N','01012345678','모바일앱개발자');
INSERT INTO TBL_DEVELOPER VALUES('photo1','4tho',DBMS_RANDOM.STRING('A', 15),'이감자','Arduino','N','NULL','2008-05-12',0,'N','01012345678','IOT개발자');

CREATE TABLE TBL_GROUP (				
	GUID VARCHAR2(20),			
	GNAME VARCHAR2(30),			
	GCONTENTS VARCHAR2(150),			
	REGISTERDAY DATE,			
	GSTATUS CHAR(1),			
	GROUPLEADER VARCHAR2(20),
	CONSTRAINT TBL_GROUP_PK PRIMARY KEY (GROUPLEADER)
);
select guid, gname, gcontents, registerday, decode(gstatus, 'o','모집중','x','모집완료') gstatus, groupleader
from TBL_DEVELOPER, TBL_GROUP
where duid=groupleader and id='worms0627'

select guid
from TBL_DEVELOPER, TBL_GROUP
where duid=groupleader and id='worms0627'
create table request(
	sender varchar2(20),
	recipient varchar2(20),
	requestType varchar2(20)
);
 FlhcMRgLMMxQjUF jsp 프로젝트  과제        2022-07-10 00:00:00.0 o       oWaVKCQtCfADDvW
select recipient, gname, requesttype, decode(requesttype, 'group','그룹 참가 요청','sc','스카우트') requestTitle, dname
from request, TBL_GROUP, tbl_developer
where recipient='worms0627' and sender=id
select * from request
insert into request values('FlhcMRgLMMxQjUF','admin','sc');
drop table request
select id, guid, gname, gcontents, registerday, decode(gstatus, 'o','모집중','N','모집완료') gstatus, dname
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
delete tbl_group where gname='ios 대장모임'
 INSERT INTO TBL_DEVELOPER VALUES (?,?,DBMS_RANDOM.STRING('A', 15),?,?,'N','NULL',?,0,'N',?,?);
 insert into TBL_GROUP values(DBMS_RANDOM.STRING('A', 15),?,?,?,'o',?);
update tbl_developer set groupuid='null' where id='worms0627'

