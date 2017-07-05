-- sns TABLE
create table sns_tbl (
  spk number primary key,		-- pk
  stitle varchar2(50),			-- 제목
  scontent varchar2(4000),		-- 내용
  sdate date default sysdate,	-- 게시일
  stag varchar2(20),			-- 명소, 행사 택
  ssort varchar(10),			-- 리뷰, 나의게시글 택(review, myboard)
  shits number default 0,		-- 조회수
  slikes number default 0,		-- 좋아요수
  mpk number,  					-- fk
  constraint sns_fk foreign key (mpk) references ASTMember (mpk)
);
 
-- sns TABLE sequence
create sequence sns_seq start with 1 increment by 1 nocache;
 
-- sns file table
create table snsFile_tbl(
  sfpk number,          --pk
  sffile varchar2(50),  --파일명
  sfpath varchar2(30),  --파일경로
  spk number,           --fk(sns pk)
  constraint snsFile_pk primary key (sfpk),
  constraint snsFile_fk foreign key (spk) references sns_tbl (spk) on delete CASCADE 
);
 
-- snsFile sequence
create sequence sfile_seq start with 1 increment by 1 nocache;
 
-- sffile sffile 200byte로 변경
ALTER TABLE snsFile_tbl MODIFY (sffile VARCHAR2(200));
 
--sns table 조회
select * from sns_tbl;
 
--sns file table 조회
select * from snsfile_tbl;
  
 
select sns_seq.currval from dual;
select sfile_seq.currval from dual;
 
 
SELECT MAX(spk) FROM sns_tbl;