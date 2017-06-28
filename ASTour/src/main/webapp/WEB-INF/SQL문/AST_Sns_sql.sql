-- sns TABLE
create table sns_tbl (
  spk number primary key,		-- pk
  stitle varchar2(50),			-- ����
  scontent varchar2(4000),		-- ����
  sdate date default sysdate,	-- �Խ���
  stag varchar2(20),			-- ���, ��� ��
  ssort varchar(10),			-- ����, ���ǰԽñ� ��(review, myboard)
  shits number default 0,		-- ��ȸ��
  slikes number default 0,		-- ���ƿ��
  mpk number,  					-- fk
  constraint sns_fk foreign key (mpk) references ASTMember (mpk)
);

alter Table sns_tbl Modify(stag varchar2(40));

-- sns TABLE sequence
create sequence sns_seq start with 1 increment by 1 nocache;

-- sns file table
create table snsFile_tbl(
  sfpk number,          --pk
  sffile varchar2(50),  --���ϸ�
  sfpath varchar2(30),  --���ϰ��
  spk number,           --fk(sns pk)
  constraint snsFile_pk primary key (sfpk),
  constraint snsFile_fk foreign key (spk) references sns_tbl (spk) on delete CASCADE 
);

-- snsFile sequence
create sequence sfile_seq start with 1 increment by 1 nocache;

-- sffile sffile 200byte�� ����
ALTER TABLE snsFile_tbl MODIFY (sffile VARCHAR2(200));

--���ƿ� Į�� ����
ALTER TABLE sns_tbl drop (slikes);

--sns table ��ȸ
select * from sns_tbl;

--sns file table ��ȸ
select * from snsfile_tbl;

--���ƿ� Į�� ����
ALTER TABLE sns_tbl drop (slikes);

select sns_seq.currval from dual;
select sfile_seq.currval from dual;


SELECT MAX(spk) FROM sns_tbl;