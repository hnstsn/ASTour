--��� ���̺� ����
-- mpk : pk, mid : id, mpw : password, mname : �̸�, mphone : ��ȭ��ȣ
-- mfile : ���� �̸�,  mfile2 : ����ҿ� ���еǴ� ���� �̸�, mpath : ����Ǵ� ���

-- ���� �� ���̺�
create table ASTMember (
  mpk number primary key,
  mid varchar2(30) not null,
  mpw varchar2(20) not null,
  mname varchar2(20) not null,
  mphone varchar2(15),
  mfile varchar2(20),
  mfile2 varchar2(30),
  mpath varchar2(50)
);


-- ���� ���̺� ����
--ASTMember table ���� - mfile, pfile2, mpath ����
ALTER Table ASTMember drop column mfile;
alter table astmember drop column mfile2;
alter table astmember drop column mpath;


-- ������ ������ ���� ���̺� ����
create table ASTProfile (
  ppk number,
  pfile varchar2(50),
  ppath varchar2(30),
  mpk number,
  constraint ASTProfile_pk primary key (ppk),
  constraint ASTProfile_fk foreign key (mpk) references ASTMember (mpk)
);


--pfile ũ�� 100byte�� ����
ALTER TABLE ASTProfile MODIFY (pfile VARCHAR2(200));


-- member table primary key�� ���� Sequence ����
create sequence mem_seq start with 1 increment by 1;
-- profile table pk�� ���� sequence ����
create sequence prf_seq start with 1 increment by 1;


-- ��� ���̺� ��ȸ
select * from astMember;
--������ ���̺� ��ȸ
select * from astprofile;


-- ������ ���̵� ����
insert into astmember (mpk, mid, mpw, mname, mphone) 
values (mem_seq.nextval, 'astour1865@gmail.com', 'ArSnsTour4', 'Admin', '');

-- �׽�Ʈ ���̵� ����
insert into astmember (mpk, mid, mpw, mname, mphone) 
values (mem_seq.nextval, 'asd@asd', '1234', 'asd', '');


-- ��� ���̺� ��ȸ
select * from astMember;
--������ ���̺� ��ȸ
select * from astprofile;

commit;