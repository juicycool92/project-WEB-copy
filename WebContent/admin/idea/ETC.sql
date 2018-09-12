 CREATE TABLE IDEA
   (   NAME VARCHAR2(20), 
   EMAIL_1 VARCHAR2(20), 
   EMAIL_2 VARCHAR2(20), 
   CALL_1 VARCHAR2(20), 
   CALL_2 VARCHAR2(20), 
   CALL_3 VARCHAR2(20), 
   TITLE VARCHAR2(30), 
   ETC VARCHAR2(20), 
   CONTENT VARCHAR2(100), 
   I_FILE VARCHAR2(50), 
   PWD VARCHAR2(20), 
   DAY DATE, 
   NUM NUMBER, 
   FILENAME VARCHAR2(30)
   )


create table etc(
key varchar2(20),
name varchar2(20)
);


insert into ETC values(115,'기타');
insert into ETC values(111,'이벤트 문의');
insert into ETC values(113,'아이디어');
insert into ETC values(75,'제품');
commit;