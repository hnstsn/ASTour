create sequence calendar_seq start with 1 increment by 1;

create table calendar_tbl(
  cpk number PRIMARY KEY,
  ctitle varchar2(100),
  startdate varchar2(50),
  enddate varchar2(50),
  mpk number,
  constraint calendar_tbl foreign key (mpk) references ASTMember (mpk)
  );
  
commit;  