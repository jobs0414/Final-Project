create table TED(
    ted_no number(10) primary key,
    title varchar(300),
    topic varchar(50),
    views number(30),
    url varchar(300)
);

create table SPEAKER(
    speaker_no number(3) primary key,
    speaker_name varchar(100),
    speaker_occupation varchar(100),
    photo varchar(30),
    ted_no number(10) constraint SPEAKER_fk references TED(ted_no),
    topic varchar(50),
    web_site varchar(300)
);

create table user1(
    userid varchar2(20) not null,
    userpassword VARCHAR(20),
    username VARCHAR(20),
    usergender varchar(20),
    useremail varchar(50)
);

CREATE TABLE MVC_BOARD( 
   BID NUMBER(4,0) primary key, 
   BNAME VARCHAR2(20 BYTE), 
   BTITLE VARCHAR2(100 BYTE), 
   BCONTENT VARCHAR2(1000 BYTE), 
   BDATE DATE DEFAULT SYSDATE, 
   BHIT NUMBER(4,0), 
   BGROUP NUMBER(4,0), 
   BSTEP NUMBER(4,0), 
   BINDENT NUMBER(4,0)
);

create SEQUENCE MVC_BOARD_SEQ;

CREATE TABLE REALTIME (
    TOPIC VARCHAR2(50) primary KEY, 
   REAL_NO NUMBER(5)
);

create table WORDCOUNT(
    topic varchar(50),
    text varchar(50),
    counting number(4)
);
