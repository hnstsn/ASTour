-- sns 테이블
create table sns_tbl (
  spk number primary key,		-- pk
  stitle varchar2(50),			-- 제목
  scontent varchar2(4000),		-- 내용
  sdate date default sysdate,	-- 작성일
  stag varchar2(20),			-- 태그(검색용)
  ssort varchar(10),			-- 구분자(review, myboard)
  shits number default 0,		-- 조회수
  slikes number default 0,		-- 좋아요
  mpk number,  					-- fk
  constraint sns_fk foreign key (mpk) references ASTMember (mpk)
);

-- sns 테이블 용 sequence
create sequence sns_seq start with 1 increment by 1 nocache;

-- sns 파일 테이블
create table snsFile_tbl(
  sfpk number,          --기본키
  sffile varchar2(50),  --snsFile 파일이름
  sfpath varchar2(30),  --snsFile 파일위치
  spk number,           --참조키
  constraint snsFile_pk primary key (sfpk),
  constraint snsFile_fk foreign key (spk) references sns_tbl (spk)
);

-- snsFile 테이블 용 sequence
create sequence sfile_seq start with 1 increment by 1 nocache;

-- sffile 크기 200byte로 변경
ALTER TABLE snsFile_tbl MODIFY (sffile VARCHAR2(200));

--sns table 조회
select * from sns_tbl;

--sns file table 조회
select * from snsfile_tbl;
  

select sns_seq.currval from dual;
select sfile_seq.currval from dual;


SELECT MAX(spk) FROM sns_tbl;