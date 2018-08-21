drop table bbs cascade constraint;
drop table bbs_user cascade constraint;
drop sequence bbs_id_seq;

create sequence bbs_id_seq;

CREATE TABLE "JSPUSER"."BBS" 
(	
"BBSID" VARCHAR2(20) primary key, 
"BBSTITLE" VARCHAR2(50) not null, 
"USERID" VARCHAR2(20) not null, 
"BBSDATE" DATE not null, 
"BBSCONTENT" VARCHAR2(4000) not null);


CREATE TABLE "JSPUSER"."bbs_user"
(	
   "USERID" VARCHAR2(20) primary key, 
	"USERPASSWORD" VARCHAR2(20), 
	"USERNAME" VARCHAR2(20), 
	"USERGENDER" char(2), 
	"USEREMAIL" VARCHAR2(50)
);