Drop table faq;
Drop Sequence faq_SEQ;

CREATE SEQUENCE faq_SEQ START WITH 1 INCREMENT BY 1;
Create table faq(anum number primary key, alabel varchar2(100), acontent varchar2(4000));

insert into faq values(faq_SEQ.NEXTVAL, 'AStour�� �����ΰ���?','AStour�� ������ ������ ���� �ۿ��� �����մϴ�. </br>
�������� ���� �⺻������ ������� ���並 �� �� �ֽ��ϴ�.');

insert into faq values(faq_SEQ.NEXTVAL, '�̿����� �˰� �ͽ��ϴ�.', '�α��� �� �������� â���� ���������� �� �� ������ �� �ڼ��� ������ �󼼺��⸦ ���� �����մϴ�.</br>
�󼼺��⸦ ���ؼ� ���̵�� ���並 �� �� �ֽ��ϴ�.</br>
SNS���ؼ� �ٸ� ����ڵ�� ��������, ������ۼ��� �����մϴ�.');


insert into faq values(faq_SEQ.NEXTVAL, '�˰� ���� �������� ������ �����ϴ�.', 'AStour�� �߰� �������� ���� ������ ������Ʈ�� �ϰ� �ֽ��ϴ�. </br>
�Ʒ� ���Ϸ� ���ǽ� �� ���� ������Ʈ�� �����մϴ�.');

insert into faq values(faq_SEQ.NEXTVAL, '������Ʈ�� ������ �ֽ��ϴ�.', 'ũ�ұ��.');

insert into faq values(faq_SEQ.NEXTVAL, '���̵�, ��й�ȣ�� �ؾ���Ƚ��ϴ�.', '������ܿ� �α��� ȭ�� ���� �� ���̵�,��й�ȣ ã�⸦ �������ּ���.');

select * from faq;
commit;
