--멤버 테이블 생성
-- mpk : pk, mid : id, mpw : password, mname : 이름, mphone : 전화번호
-- mfile : 사진 이름,  mfile2 : 저장소에 구분되는 사진 이름, mpath : 저장되는 경로

-- 변경 전 테이블
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


-- 위의 테이블 수정
--ASTMember table 수정 - mfile, pfile2, mpath 삭제
ALTER Table ASTMember drop column mfile;
alter table astmember drop column mfile2;
alter table astmember drop column mpath;


-- 프로필 사진을 위한 테이블 생성
create table ASTProfile (
  ppk number,
  pfile varchar2(50),
  ppath varchar2(30),
  mpk number,
  constraint ASTProfile_pk primary key (ppk),
  constraint ASTProfile_fk foreign key (mpk) references ASTMember (mpk)
);


--pfile 크기 100byte로 변경
ALTER TABLE ASTProfile MODIFY (pfile VARCHAR2(200));


-- member table primary key를 위한 Sequence 생성
create sequence mem_seq start with 1 increment by 1;
-- profile table pk를 위한 sequence 생성
create sequence prf_seq start with 1 increment by 1;


-- 멤버 테이블 조회
select * from astMember;
--프로필 테이블 조회
select * from astprofile;


-- 관리자 아이디 생성
insert into astmember (mpk, mid, mpw, mname, mphone) 
values (mem_seq.nextval, 'astour1865@gmail.com', 'ArSnsTour4', 'Admin', '');

-- 테스트 아이디 생성
insert into astmember (mpk, mid, mpw, mname, mphone) 
values (mem_seq.nextval, 'asd@asd', '1234', 'asd', '');


-- 멤버 테이블 조회
select * from astMember;
--프로필 테이블 조회
select * from astprofile;

commit;