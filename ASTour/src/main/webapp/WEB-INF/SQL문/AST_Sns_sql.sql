-- sns ���̺�
create table sns_tbl (
  spk number primary key,		-- pk
  stitle varchar2(50),			-- ����
  scontent varchar2(4000),		-- ����
  sdate date default sysdate,	-- �ۼ���
  stag varchar2(20),			-- �±�(�˻���)
  ssort varchar(10),			-- ������(review, myboard)
  shits number default 0,		-- ��ȸ��
  slikes number default 0,		-- ���ƿ�
  mpk number,  					-- fk
  constraint sns_fk foreign key (mpk) references ASTMember (mpk)
);

-- sns ���̺� �� sequence
create sequence sns_seq start with 1 increment by 1;

-- sns ���� ���̺�
create table snsFile_tbl(
  sfpk number,          --�⺻Ű
  sffile varchar2(50),  --snsFile �����̸�
  sfpath varchar2(30),  --snsFile ������ġ
  spk number,           --����Ű
  constraint snsFile_pk primary key (sfpk),
  constraint snsFile_fk foreign key (spk) references sns_tbl (spk)
);

-- snsFile ���̺� �� sequence
create sequence sfile_seq start with 1 increment by 1;