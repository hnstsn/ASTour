Drop table faq;
Drop Sequence faq_SEQ;

CREATE SEQUENCE faq_SEQ START WITH 1 INCREMENT BY 1;
Create table faq(anum number primary key, alabel varchar2(100), acontent varchar2(4000));

insert into faq values(faq_SEQ.NEXTVAL, 'AStour가 무엇인가요?','AStour는 여행지 정보를 웹과 앱에서 제공합니다. </br>
여행지에 대한 기본정보와 사용자의 리뷰를 볼 수 있습니다.');

insert into faq values(faq_SEQ.NEXTVAL, '이용방법이 알고 싶습니다.', '로그인 후 지역선택 창에서 여행지들을 볼 수 있으며 더 자세한 정보는 상세보기를 통해 가능합니다.</br>
상세보기를 통해서 가이드와 리뷰를 볼 수 있습니다.</br>
SNS통해서 다른 사용자들과 정보공유, 여행기작성이 가능합니다.');


insert into faq values(faq_SEQ.NEXTVAL, '알고 싶은 여행지가 지도에 없습니다.', 'AStour는 추가 여행지에 대한 지속적 업데이트를 하고 있습니다. </br>
아래 메일로 문의시 더 빠른 업데이트가 가능합니다.');

insert into faq values(faq_SEQ.NEXTVAL, '웹사이트에 오류가 있습니다.', '크롬까세요.');

insert into faq values(faq_SEQ.NEXTVAL, '아이디, 비밀번호를 잊어버렸습니다.', '우측상단에 로그인 화면 선택 후 아이디,비밀번호 찾기를 선택해주세요.');

select * from faq;
commit;
