-- ��� ���̺�
create table reply_tbl (
	rpk number,					-- pk
	rcontent varchar2(2000),	-- ����
	rtime date default sysdate,	-- �ۼ��ð�
	spk number,					-- fk(sns_tbl pk)
	mpk number,					-- fk(member pk)
	constraint re_pk primary key(rpk),
	constraint re_sns_fk foreign key (spk) references sns_tbl (spk),
	constraint re_mem_fk foreign key (mpk) references ASTMember (mpk)
);

-- ��� ���̺� �� sequence
create sequence rep_seq start with 1 increment by 1;