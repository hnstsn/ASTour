drop table attraction_tbl ; --���� ���̺� ����
DROP SEQUENCE ATT_SEQ;      --���� sequence ���� 

SELECT *FROM attraction_tbl where ATITLE like '%��%';
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'����','������','�̹�����','���ͳ��ּ�','�ּ�3��','������ȭ','�Ұ�','�ǳ���');
CREATE TABLE attraction_tbl(
  attpk       NUMBER PRIMARY KEY, --�⺻Ű
  atitle      VARCHAR2(30),       --����(����)
  asort       VARCHAR2(4),        --���OR��� ������
  aimage      VARCHAR2(20),       --�̹�����
  ahomepage   VARCHAR2(50),       --���ͳ��ּ�
  acity       VARCHAR2(20),       --��
  agu         VARCHAR2(20),       --��  
  aaddress    VARCHAR2(70),       --���ּ�
  atel        VARCHAR2(20),       --������ȭ
  aintro      VARCHAR2(500),      --�Ұ�
  acontent    VARCHAR2(4000),     --�ǳ���
  alatitude   number,             -- ����
	alongitude  number              -- �浵
);

CREATE SEQUENCE ATT_SEQ START WITH 1 INCREMENT BY 1;


select * from attraction_tbl;

INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'�¾� ���ղ����� 2017', '���', 'lily.jpg', 'http://www.ffestival.co.kr', '��û����', '�¾ȱ�','���� �������� 200 (����)','041-675-9200', '���Ⱓ : 2017.07.24 ~ 2017.08.03', '�����Ұ� �� �� ���� ��⸦ ǰ�� ������ �� ������ 7��24�Ϻ��� 8�� 3�ϱ��� �泲 �¾ȿ��� ȭ���ϰ� ��������. �߰��������� ķ������� ��췯�� �ϼ������� ������ ��������.<br/>����系�� ���� �Ӹ��� �ƴ� �پ��� ���Ÿ��� ȭ��, �߰����� ������, �Ϸ��� �������� ķ���忡��!', 36.615839, 126.300864);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'���ʹ�','���','Sungnyemun.jpg','http://www.junggu.seoul.kr/tour/','����Ư����','�߱�','������� 40 (���빮��4��)','02-779-8547~8','�̿�ð� : [����ð�] 09:00~18:00<br/>
 �� 6~8���� 18:30���� ����<br/>
�� 12~2���� 17:30���� ����','���ʹ�(����ڦ)�� ���� ���� 5��(1396)�� ���ʷ� �����Ǿ��� 1398�� 2�� �߰ǵǾ���. �� ���� �����ô� �Ѽ� ������ �������� 4�빮 ��� ���ʿ� ��ġ�ϹǷ�, ���빮���ε� �Ҹ���. 1448�⿡�� ũ�� ����������. ���� �����ֶ��� ����ȣ�� ������ ���빮�� ���ظ� ���� �ʾҴ�. ó�� ��������� ���� ������ ������ ����Ǿ� �־����� 1908�� ���θ� ���� ���Ͽ� ��� ���� ������ ��ó�� ���� ������ �־�����, 2006�� ���� ���縦 ��ġ�� ���ݰ� ���� ����� �ϰ� �Ǿ���. 1962�� ��ȭ�纸ȣ���� ���Ͽ� �������� ���� ��1ȣ�� �����Ǿ���. <br/>
�ǹ��� ����� �Ʒ�.������ ��� 5ĭ, ���� 2ĭ�̸�, �ǹ� ������ �Ʒ��� �ٴ��� ȫ���� ������ �߾�ĭ���� �칰������ ��, �ٸ� ĭ�� ��ٴ����� �Ǿ��ְ� ������ �θ����̴�. ����� ���ڿ� ���Ͽ��� �������� ���� ������, <��������>���� ���뱺�� �� ���̶�� ��ϵǾ� �ִ�. �ٸ� ���� ����� ���η� ���� ������ ���ʹ��� ���η� ���� �ִ°��� ����(����)�� �� ���ڰ� �Ҳ��� �ǹ��Ͽ�, �溹���� ���ֺ��� ���ǻ��� �ұ���� ������ �ϱ� ���ؼ���� �Ѵ�. �����ϴ� ���� �ǹ��δ� �츮���󿡼� ���� �Ը� ū ���빮�� �������� ����(����)����� �ǹ��� �߽��� �������๰�� ������ ���̰� �ִ� �ѱ� ������ �߿��� �ǹ��� �ϳ��̴�.<br/>
1997�� �� ����ÿ��� �� ���� ����� ���� �����̰� �ϱ� ���Ͽ� ������ ������ �� �� �ִ�. ���� �߱��� 2005�� 10������ ��� ��������� ȫ���� �Ա� �� 5���� ���� ��ǥ���縦 �ǽ�, ���� �������� ������ �����Ǵ� �Ʒ��κ� ���� ��ܰ� ���뼮(�� �Ʒ� ���ʼ�), �ڼ�(�ٴڿ� ��� ��), ��������(���� �ٴ� �� ������) ���� �߱��ߴ�. �̴� 1907�Ⲳ ���빮�� �����ϴ� �������θ� ���鼭 �� ������ ���� 1���� ���� �׾ƿ÷� �Ʒ��� ��ܰ� �ڼ����� ������ ���� ������ ���δٰ� ������. ���� �߱��� �ùε��� ���ݺ��� 1.6�� �Ʒ��� �ִ� �̵� �������� �� �� �ֵ��� �߾���� �ñ� �κ��� �״�� ���ܵ� ä �����ü��� ��ġ�ߴ�. ���ʹ��� �߾������ ȫ������ ���� ���ʹ��� �ѷ��� �� �ִ�. �׷��� ���ʹ��� 2008�� 2�� 10�� ȭ��� ���Ͽ� ���ҵǾ���, 5�� 3������ ��ģ ���� ����� �Ϸ��ϰ� 2013�� ����Ǿ���. 2013�� 5�� 1�Ͽ��� ���ʹ� ������ ���ϴ� ������(ͱ��)�� ġ������.<br/>
���ʹ� �������� �泲 �¾��� �ȸ���� ���Ǿ���. �ȸ���� ����ô���� �ñ��̳� ���ڿ����� ���Ǿ� ������, �̹� ���ʹ��� ������, ���, ���� � ���Ǿ���.', 37.559950, 126.975303);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'��â �����������', '���', 'Pyeongchang.jpg', 'http://www.���Ǵ�ȭķ����.kr', '������','��â��','��ȭ�� ��ȭ5�� 4 (��ȭ��)','033-334-2277','���Ⱓ : 2017.07.28 ~ 2017.08.06', '�����Ұ� : ������ ����ϴ� 8��, 2017 ��â ������������� 7�� 28�� ���� 8�� 6�ϱ��� ����ȴ�.<br/>
������ �Բ� ������ ��ſ� �����ް�, ������ Ǫ���԰� �˳��� �ν�, ������ �ڿ�ȯ���� �ڶ��ϰ�, �پ��� ü��� �׸��� ���õǾ� �ִ�.<br/>
����系�� : -�ź��� ���칰 ü��<br/>
-���Ǵ�ȭ ķ���� �<br/>
-������ ��õ���� ü��<br/>
-Ǫ���� ��ǰ ��÷<br/>
-���� �۾� �Ǽ���� ü��', 37.502141, 128.453382);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'���ױ����Һ�����', '���', 'Pohang.jpg', 'http://phcf.or.kr', '���ϵ�','���׽�','�ϱ� �ؾȷ� 95 (��ȣ��)','054-289-7851~3','���Ⱓ : 2017.07.26 ~ 2017.07.30', '�����Ұ� : �Ұ� ���� ���� ���׿����� �ظ��� ��ǥ���� �������� <���ױ����Һ�����>�� ������.<br/>
���ױ����Һ������� �������� ö����� �����ڰ� ������ ��¡�ϴ� ���� ��ö�� �뱤�θ� ��¡�ϴ� ���� �̹����� �׸��� ���� 2004�� ���׽ù��� ���� ���� �Ҳɼ ���� ���� �����̴�. ���� �ų� ���� �ް���ũö�� 7����~8���ʰ� �����Ը� �������� Ȯ��ư� ������������ �ܼ��� ���Ҳɡ��߽ɿ��� Ż��, ����� ��ȭ�� ��Ҹ� ������ ��ä�Ӱ� ��ġ�� ȭ���� ������. <br/>
���ش� 7�� 26�Ϻ��� 7�� 30�ϱ��� ���ϴ��ؼ������ ���갭ü�������� ��� �ó��������� ���׸��� �Ұ� �� �� ���� �� ������, ���갭�� ���ϸ� �ٴ��� �Ƹ��ٿ� �߰��� ����� �� 10�������� �Ҳ��� �Ƹ���� ������ ������ �������� ����� �߱��� ������� ���̴�.<br/>
����系�� - ���������<br/>
- �����Ҳɼ�(3����) (7.29) <���갭ü������><br/>
- ���ϸ� �����Ҳɼ�(7.27/7.28/7.30)<br/>
- �Һ�����ŷ�佺Ƽ��(7.26/7.27)<br/>
- ��! �Һ��۷��̵�(7.28)<br/>
- �� ������ ��ȭ ost �Ҳɼ�', 36.057235, 129.377988);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'������','���','Deoksugung.jpg','http://www.deoksugung.go.kr','����Ư����','�߱�','������� 99 (����)','02-771-9951','��ǥ �� ����ð� 09:00 ~ 20:00 <br/>
���³� : ���� ������','���� ��124ȣ�� �������� ���� �ձ��� �ƴϾ���. ���� ������ ���� ����뱺(1454��1488)�� ���̾�����, 1592�� �����ֶ� �� �ձ��� ��� ��Ÿ�� 1593�� ������� ����ϱ� �����Ͽ���. �����ӱ��� ���ַ� �ǳ����ٰ� �Ѿ����� ȯ���� �� �����ÿ��� �ӹ�����. ������ �ڸ� ���� ���ر��� 1608�� �̰� ��ÿ��� ������ �� 1611�� ����� �����̶� ���ĺθ��� 7�⵿�� �ձ����� ����ϴٰ� 1615�⿡ â�������� �ű�鼭 �̰����� ������ ������ ����� �θ� ����� ������״�. 1618�⿡�� �θ����� ��ȣ�� �����ϰ�, ������ �����̶� ���߾� �θ��⵵ �Ͽ���. <br/>
1623�� ������������ ���ر��� �����ǰ� ������ �̰� �����翡�� �����ϰ� â�������� �ű� ���� 270�� ������ �������� ���Ǿ���. 1897�� ����Ȳ���� ���þ� ������ �ִٰ� ȯ���ϸ鼭 �̰��� �ٽ� �ձ����� ����ϰ� �Ǿ��µ�, �׶����� �ٽ� �����̶� �θ��� �Ǿ��� �� �Ը� �ٽ� ������. �׸��� ���� Ȳ���� 1907�� �������� ������ ��, �ձ��� â�������� �ű� �Ŀ��� �̰��� ��ó�Ͽ��µ�, �̶����� ���� Ȳ���� ����� ��� �濡�� �������̶� �θ��� �Ǿ���. �̷� ��߿� ����ͼ��� �����̶�� ������ ��Ī�� ����ؾ� �Ѵٴ� ���嵵 ����ǰ� �ִ�. <br/>
�����ÿ��� ���� �� ���� �ǹ��� �־����� ���� 18,635���� �泻�� ���� �ִ� ���� ���ѹ�, ��ȭ��, ����, �����, �ظ��, ������, �Գ���, ��ȫ�� �� ������ � �Ұ��ϴ�. �������� Ư�� ���Ѹ� ����� Ȳ�� ������ ������ �й����� ������ ������ϰ�, �� ���� ������ �����ٰ� 1919�� 1�� 22�� ������ �Գ������� ������ ���� ������Ͽ� ���ư��� ������ �˷��� 3��1 ������� �������� ��Ⱑ �Ǿ��� ���̴�. <br/>
 * ���ѹ� - ���ѹ��� ���� �������� �����̴�. �̹��� ���� �̸��� ��ȹ�(����ڦ)�̰�, �ñ��� �����̾���. ��ȹ��� 1906�⿡ �ٽ� �����鼭 ���ѹ� �̶�� �̸��� �ٿ���. ���� �۾��� ��� �Ѽ��� ������ ���´� ����ö�� ���. <br/>
 * ���� - �� ���� ���� ħ���� �Գ����� �������� ���� 8��(1904)�� ū���� ���� Ÿ ���� ���� ���� �ؿ� �ٽ� ������. 1938�� �������� �̼������� �����ϸ鼭 ������ �ִ� ȫõ���� ������ â���� ���簢�� �ִ� �ڰݷ縦 ������ �ڸ��� �ű� �� ���� �Ű� ������. <br/>
 * ������ - ���������� �ܱ� ��ŵ��� �����ϴ� ���̴�. ���� 4��(1900)�� �����Ͽ� ���� 3��(1909)�� �ذ��� ���� �ǹ���, ������������ ���������� ���� ū �Ը��� �ǹ��̾���. �ǹ��� �ܰ��� 19���� �� �������� �����ߴ� �Ű������� ����� ���� ������ ���鿡 �ִ� ����� ���κ��� �̿��Ͼƽ����� ó���ϰ� �ǳ��� ������ǳ���� ����Ͽ���. ��ü�� 3���ε� 1���� ���� ��ҷ�, ���������� �����ε��� ��� ��ҷ� ���Ǿ���, 2������ Ȳ���� ��ó�Ͽ���. ���� �Ŀ��� �̼Ұ�������ȸ ȸ����, �����ڹ���, ��������̼���, �����������ð� ������ ����Ͽ���. <br/>
 * �Գ��� - ���� �� 820ȣ�� ������ �Գ����� 1897�� �����Ͽ� ����Ȳ���� ��ó�ϴ� �ǹ���, 1904�� ȭ��� ���� �ҽǵ� ���� �����ؿ� �����Ͽ� ���ÿ� �̸��� �ִ�. ����Ȳ���� 1919�� 1�� 21�� �� �Գ������� ���ư��̴�. �� �� ��� �ִ� �̰��� ��ÿ� ����ϴ� ����, ��ȭ, ���� ���� ��ġ�Ͽ� 100���� ���� ���� ��Ȱ���� ���Ӱ� �����Ͽ���. <br/>
 * ��ȭ�� - ��������(�������)�� �������� ���� ��26�� �� ����(����, 1852~1919 ���� 1863��1907)�� �ٴ� ���� �Ǽ��� ���� �ڽŰ��� ���� �� �ִ� ���̴�. Ư�� ���� �ȿ��� ����(���) �ٷ� ���� ������ ���� ���� �� �� �� �� �ִµ� �̴� ���� õ���� ��� ���� �������� �������� �������� Ȳ���� Ȳ���̾����� ���� �ְ� �ִ�. ���� ���� �ִ� ��ȭ���� 1902�⿡ �������� �Ǹ��Ǿ����� 1904�� ȭ��� �ҽǵ� �� 1906�� �������� �߰ǵ� ���̴�.<br/>
 * �߸��� - �߸���(��٥��)�� ���þ� ���డ ���ƾ(Seredin Sabatin)�� ����� 1897����� 1901�⿡ ���� �Ǹ��� Ȳ�ǵ������̴�. ���� 2��, ���� 1���� ����� �ǹ��� ó������ ������(����)�̶� �ҷ���. 2009�� 12�� ������ ���� 2010�� 8������ ���ð�(������������ ����� ���� ��, ������ �߸�����)���� �Ϲݿ� �����ϰ� �ִ�. <br/>
 * �� �ۿ� �����, �ظ��, ������, ������, ��ȫ��, ���簢 �ڰݷ� ���� �ִ�.', 37.565880, 126.975001);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'������','���','Independent.jpg','http://parks.seoul.go.kr','����Ư����','���빮��','���Ϸ� 251 (������)', '02-364-4686','�̿�ð� ��� ����<br/>
���³� ���߹���','1898�� 1�� ���ֵ����� ��¡�� �Ǹ��� ���Ͽ� ������ȸ�� �ְ����� �̷��������, ����� ��ȸ�� ����� ������ ���Ǿ���. �߱� ����� �����ߴ� ������ �ڸ��� �ѱ��� ��� ���Ǽ��� ���� �߱��� �뵿�ڸ� ����Ͽ� ������ ������ ����� �ǹ��̴�. ���� 14.28m, ���� 11.48m�� ������ �������� ����Ͽ� ���� ���๰�̴�. 1979�� ������ �Ǽ��� ���� ������ ��ġ�� �����ϰ� �Ǿ���. �� �������� ���� ���� ������ȸ�� ��ǥ���� ��� �� �ϳ�������, �Ϻ��̳� �ܼ��κ����� ������ �ǹ��ϱ⺸�� �ַ� �߱����κ����� ���ֵ����� �����ϴ� ��¡���̾���.', 37.574083, 126.956266);


INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'�Ե�����Ÿ�� ���ｺī��','���','LotteTower.jpg','http://seoulsky.lotteworld.com','����Ư����','���ı�','�ø��ȷ� 300 (��õ��)','���ｺī�� 1661-2000','�̿�ð� 09:30 ~ 23:00 (��ǥ���� 22:00)<br/>���³� ���߹���','���� 5��, ���� �ְ� ���� �Ե�����Ÿ�� 117��~123���� ��ġ�� ���� ��ī�̴� 500m ������� ȯ������ ������ ǳ��� �߰��� 360�� �並 ���� ��� �� �ִ� ������ ���ο� ����̴�. ������, ������, ��ī�̵�ũ, ����Ʈī��, ��ī���׶�, ����� ������ �����Ǿ�����, �������� ���� 1��, 2���� ��ġ���ִ�.<br/>
<br/>
������ �� ������ �κ񿡴� �ѱ��� ź���� ������ ����, ����� �ںν��� �����ִ� �̵�� ��Ʈ���� ���õǾ� �־� �پ��� ���Ÿ��� �����ϰ� ������, ���� ���ｺī�̿��� ��ü������ ������ ĳ���� ��ǰ�� �Ե�����Ÿ�� ���� �پ��� ���ǰ���� �־� ���ｺī���� �߾��� �������� ����� �� �ִ� ���ǰ�� ������ �� �ִ�.<br/>
<br/>
������������ �ǹ� 2�� ������ �������� ���� ���� �ó��� �Ѵ��� ������ �� �� �ִ�. ���� 478m ���̿� �ð��� ��ī�̵�ũ�� ���迡�� ���� ���� ���� �ٴ� ������� ��׽� ���� ���ڵ忡 ����ƴ�. ��õ�ķ� ����� ���� ���� ������ ��ī�̽þ��͸� ���� ���� ���� �Ƹ��ٿ� ���� ǳ���� ���� ��ũ������ ���� �� �� �ִ�. 120������ �ö󰡸� �� 486m�� �ٶ��� �Ǻη� ���� �� �ִ� ��ī�� �׶󽺰� �ִ�. <br/>
<br/>
119������ ���ｺī�̸��� ��Ư�� �޴��� �Ǹ��ϴ� ����Ʈ ī���� ��ī��������ī��, ���ｺī���� �ְ����� 123������ ������ ��� �� �ִ� �����̾� ������� �ִ�. �� ���� �ƴ��� �������� ȯ������ ������ ������ �� �ִ� ���￡�� ���� ���� ������̴�. <br/>
<br/>
���ｺī�̸� ���� �ö󰡴� ����ũ ���������� ��ī�� ��Ʋ�� ������ �� ���� ���Ÿ��̴�. �ܼ��� ���������Ͱ� �ƴ� �м� 600m�� �����ϴ� ���������ͷ�, ���� ���ʷ� õ��� ��ü 3�鿡 ����� ȭ���� ��ġ�Ǿ� �־� �ѱ��� ź���� ���� ����� ���� ������ ���Ѵ�. ������� ������ 1�а� �ð����� �ʿ��� ȲȦ���� ������ �� �ִ�.',37.513428,127.102595);

INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'���꼭��Ÿ��','���','Namsan.jpg','http://www.seoultower.co.kr','����Ư����','��걸','��������� 105 (��굿2��)','02-3455-9277, 9288','�̿� �ð� ��~��, �� 10:00~23:00 / �� 10:00~24:00
�� ���Ļ�Ȳ �� ������� ���� ���� ����<br/>���³� ���߹���','���꼭��Ÿ���� �ѱ� ������ Ÿ�������� ������Ҵ�. ���� 236.7m�� ��Ƹ��� Ÿ���� �ع� 243m�� ������ ���̱��� ����ϸ� ���� ���̴� 480m�� �̸��� ���� �����ְ��� Ÿ����� �ڶ��� ���ϴ�. ���꼭��Ÿ���� 40�� ���� �Ϲ��ο��� �����Ǵ� ����Ÿ���ö��ڿ� 2005����� CJǪ����� �Ӵ��Ͽ� � ���� N����Ÿ���� �����Ǿ� �ִ�.<br/> 
���꼭��Ÿ���� 1969�� TV�� ���� ����� �����ǿ� �����ϱ� ���� �ѱ� ������ ���� ����ž���� ����������, ����� ������ ��ǥ���� ���չ�ȭ�������� ���帶ũ�� �ڸ���Ҵ�.',37.551155,126.988165);

INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'���ν���','���','Tong.jpg','http://tonginmarket.co.kr','����Ư����','���α�','���Ϲ���15�� 18 (���ε�)',' 02-722-0911','�̿�ð�<br/> 07:00~21:00 ���� �� ����
11:00~17:00 ���ö�ī�� �̿�ð� <br/>
�Ͽ����޹� �Ŵ� ��° �� ���� �޹�','���ν����� 1941�� 6�� ���������� ȿ�ڵ� �α� �Ϻ��ε��� ���� ������ ���������� �����̴�. 6.25 �������� ���������� �ް��� �α������� ���� �Һ������ �ʿ信 ���� �������� �ֺ����� ������ ������ �����Ǹ鼭 ���� ������ ���¸� ���߾� ������ �Ǿ���. ��ü 75���� ������ ������ ���ν����� �Ĵ�� �������� �� ��İ��� ������ ���� ���� �����Ǿ� �ְ�, ä�ҿ� ����, ���� �� 1�� ����ǰ���� �� ������ �����ϰ� �ִ�. �̿� ���ǿ� �Ź� �� ����ǰ�� �� ����, ���μ����� ���� �Ϻ� �����Ǿ� �ִ�.',37.580713,126.969971);

INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'�溹��','���','Gyeongbokgung.jpg','http://www.royalpalace.go.kr','����Ư����','���α�','������ 161 (������)','02-738-9171','1~2�� 09:00~17:00 / 3~5�� 09:00~18:00
6~8�� 09:00~18:30 / 9~10�� 09:00~18:00
11~12�� 09:00~17:00','�溹���� 1395�� ���� �̼��迡 ���ؼ� ���ο� ���������� �������� ��������. �溹���� ����(â����)�̳� ����(�����)�� ���� ��ġ�� ���ʿ� �־� �ϱ��̶� �Ҹ��⵵ �ߴ�. �溹��(���� ��117ȣ)�� 5�� �ñ� ��� ������ �Ը�� ����̸� �ڶ��Ѵ�. �溹�� ���������� �������� ���� �յ��� ���� ��2�� ����, ��4�� ����, ��6�� ����, ��7�� ����, ��9�� ����, ��11�� ����, ��13�� ���� ���̴�.<br/>
�溹���� �����ֶ� �� ������ �ǹ��� ��Ÿ ������ ������ ���� ������, ���� ���� �Ｑ������� �ֵ� �Ʒ� 7,700��ĭ�� �̸��� �ǹ����� �ٽ� ������. �׷��� �� �ٽ� ��Ȳ�� ���ػ���� �Ͼ�鼭 ������ ������ �Բ� �溹�õ� �ձ����μ��� ����� ����ϰ� ���Ҵ�. �溹�ÿ��� �����ô��� ��ǥ���� ���๰�� ��ȸ��� ������� ������ ������� ���� ������, �������� ����� ��������� ����� �����̼��� ��ǥ�Ѵ�. ���� ��ʹ� �� ������ ������� �ڹ����� ��ġ�ϰ� �ְ�, �溹�� �� ������� ������ �����μ� �ڹ����� ��ġ�ϰ� �ִ�.<br/>
<br/>
<br/>
* �ֿ乮ȭ�� <br/>
1) �溹��(���� ��117ȣ)<br/>
2) �溹�� ������(���� ��223ȣ)<br/>
3) �溹�� ��ȸ��(���� ��224ȣ) <br/>
4) �溹�� �ڰ���(���� ��809ȣ) <br/>
5) �溹�� �ڰ��� ����� ����(���� ��810ȣ)<br/>
6) �溹�� �ƹ̻걼�� (���� ��811ȣ) <br/>
7) �溹�� ������ �� �ఢ(���� ��812ȣ) <br/>
8) �溹�� ǳ���(���� ��847ȣ)',37.579608,126.977041);
INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'��ȭ��','���','Gwanghwamun.jpg','http://www.royalpalace.go.kr','����Ư����','���α�','������ 161 (������)','02-738-9171','�̿�ð�<br/>
����09:30~18:00 (���帶�� 17�ñ���)<br/>ȭ���� �޹�','��ȭ���� �溹���� �����̸�, �ü��� �����̴�. ��ȭ���� ������ �峪��� �����̱⵵ ������, ������ ������ �溹���� �����̾��� ������ �ٸ� �ñ��� ������ ���� �� �Ը�� �ݽ� �鿡���� �ſ� �����ϰ� ȭ���ߴ�. ���� ��ȭ���� ���� �� ���ʰ� ���ʿ� ���� �����ڰ��� �����ڰ��� �ξ� ������ 5�� �ñ� ��� �����ϰ� �ȹ������� ���߰� �ֱ⵵ �ߴ�.<br/>
��ȭ���� �������� �� ���縦 ��ġ�� ��ܼ��࿡ �� ���� ȫ���� �̷���� �ִµ�, �߾��� ȫ���δ� ����, �¿��� ȫ���δ� �ռ��ڿ� ���ϵ��� �����ϵ��� �Ͽ���. ����(ڦק)���� ���� �ɾ� ���� �˸��� �� ����Ͽ���.<br/>
��ó�� �溹���� ���������� �����̶�� ���� ��ȭ���� ����� ������ ���¿����� Ȯ���� �� �ִ�. �ٸ� ���� ������ ���� �� ���� ���� �������� �溹���� ���� ���� ���� ������ �װ� �߾ӿ� ȫ������ ���� ��ġ ������ ���� ���� ����� ���Ѵ�. ��ȭ���� �� �߿����� ȫ������ ���̳� ���� ���� �ݽ� ���� ����� �����ش�. ��ȭ���� ������ �����̶�� ����� �� �巯���ش�.<br/>
<br/>
�溹�� â�� ��ÿ��� Ư���� �̸��� ���� ������ ���� ����(��ڦ)���� �θ��ٰ�, ���� 3��(1395) �������� ���� ����(��ڦ)���� �̸��� �ٲ�����, ���� 8��(1426)�� �溹���� �����ϸ鼭 ���������� ��ȭ��(����ڦ)�̶� �̸��� ���� �ø��鼭 ������ ��ȭ���̶� �̸��� ��� �Ǿ���.<br/>
���� ��ȭ���� �����ѵ��� �ǹ��� �����鼭 �ü��� ������ ���Ṯ �������� �Ű����� �ѱ����� �� ������ �¾� ���簡 �μ����� ������ ź�� �����̰� �Ǿ���. �׷� ��� ��ȭ���� ������ ������� ��ǵ� ���� 1968�� ������ ���ǿ� �̸�������. �ı��� ���縦 �ٽ� ���� ��ȭ���� ������ �ڸ��� �Ű� ���Ҵ� ���̴�. �׷��� ���� ����� ��ȭ���� ö�� ��ũ��Ʈ�� ����������, ��� ��� ��ȭ���� ���� �溹���� �߽��࿡ ���� ���� �ƴ϶� ��� �߾�û���� ���̴� �� �����ѵ���û���� �࿡ ���߾�, �� ��� 3.5�� ���� ������ ��� ��߳��� Ʋ������ ���Ҵ�. �Ӹ� �ƴ϶� ������ ��ȭ�� �ڸ������� 14.5���� ���� �ڷ� ������ ������ �ڸ��� ���ְ� �Ǿ���. �̷��� ������ �Ҿ���� ��ȭ���� �����ϰ��� 2006����� ��ȭ�� ö���۾��� ������ 3�� 8������ ���� ���縦 ��ġ�� 2010�� 8�� 15�� �ϰ��Ǿ���.<br/>
ȭ�������� ������ ����� ����� �� ���� ������ ���縦 ��� �ָ� �����ϱ� ���� �� �ƴ϶� �ñ� �������μ��� ������ ��Ÿ���� �ִ�. ��ܿ� �ִ� 3���� ��ġ�� ���Թ��� �溹���� ������ �����̶�� ������ �����Ѵ�. ���� ���� ��� ������ ���� ���� ����ó�� ���� ������ �������� ���� �ѷ��µ�, ���⸦ ����� �ȱ������� ������ �ñ��� Ư���� �� �ݿ��ϰ��ִ�.',37.576024,126.976937);

INSERT INTO attraction_tbl VALUES (ATT_SEQ.NEXTVAL,'û��õ','���','Cheonggyecheon.jpg','http://www.cheonggyecheon.or.kr','����Ư����','�߱�','�����1�� ~������ �Ŵ�ö��','02-2290-7111','�̿�ð� 24�ð�<br/>���³� ���߹���','û��õ�� ���۵Ǵ� �����ο� ������ û�豤��. <br/>
û��õ ���� ���������� �����Ϻ��� �տ������� �Ŵ�ö�� ���̷� ����160m, ��50m, �� ���� 2õ 106���� �Ը�� �����Ǿ���. �м��� ����, û��õ �̴Ͼ�ó, ��å�ο� Ž��� ������ �ٸ����ְ�, û��õ ������ �ǹ̿� �Բ� ������ ȭ��, ��ȭ�� ������ �����ϴ� ��ҷ� ������� �ִ�.<br/>
<br/>
�� �� ������ û��õ ���� ���������߽ɿ� 741�� �Ը�� �����Ǿ���, �츮���� ���������ڱ� ������ �������� ������ �پ��� ������ ������������ ����� ����̸� �츰��. �� ������ û��õ ��Ҹ����� û�� �̴Ͼ�ó�� ��ġ�Ǿ� ������ û��õ�� ����� �Ѵ��� �� �� �ִ�. û��õ�� ���������� 22�� �ٸ��� ���� �ؼ��ǵ� ��ġ�Ǿ� �ְ�, �̿ܿ��� �پ��� ������ �м��� ������� �Ƹ��ٿ� ����� �����Ѵ�. ����, ���忡�� û��õ���� �����ϱ� ���� �ü��δ� ���� ����� ���Է�, ������ û��Ž��ΰ� ��� �� �ִ�. û�� Ž��� �� 18m �������� �ͳ��� ��ġ�� ���忡�� û��õ���� ��� ���� �ùε鿡�� ���ٸ� ������ �����Ѵ�. <br/>
<br/>
����ô� û��õ���� ���� �� �����Ͽ��� �� ���� �� ���� �Ÿ��� ����� ����, ��������, ���ΰ� �ùε��� �޽İ� ��ȭ�������� �̿�ǵ��� �����س��Ҵ�. ��� ������ ��췯�� ĵ�� �м��� 4m �Ʒ��� �������� 2�� ������ ����� �����Ѵ�. ���� �� ������ �������� ���� ������ 8�������� ���۵� �ȼ����� ��Ҵ�. ���̸� ���� ���� ��췯���� ȯ������ ����� �����Ѵ�. ��, û��õ �������� 1/100�� ����� �̴Ͼ��� ���� ���� ���Ÿ��� �����Ѵ�.<br/>
<br/>
* û��õ�������� 1/100�� �̴Ͼ���ĵ��(�к�)�м�, 4m 2�� ����, �ȵ���',37.571374,127.024387);

select * from attraction_tbl;


// �߰�

insert into attraction_tbl values (ATT_SEQ.NEXTVAL,'���� �̳׶� ��õ', '���', 'sukmodo.jpg', 'http://www.ganghwa.go.kr' , '��õ������', '��ȭ��', 
'��곲�� 865-17', '032-933-3810', '�̿�ð� : 07:00~21:00 <br/> �� ���³� : �ſ� ù��°, ����° ȭ����', '������, �θӷ��ؼ�����, ���𵵼������, �޾縲 �αٿ� ��ġ�� ���� �̳׶� ��õ�� ���عٴٸ� �ٶ󺸸� �������� �Ѿ�� ������ �����ϸ� ��õ�� ��� �� �ִ� ������, ��ǳ�� �޺��� �״�� ������ ������ ���� ������ ������ ���ϱ⿡ ����.<br/> 
��õ���� 460m ȭ���� ��� ����Ǵ� 51�� ����� �̳׶� ��õ���� �������� �� ��ȭ���� �����θ� ����ϰ� ������, Į���� Į��, ���׳׽�,��ȭ��Ʈ�� ���� ǳ���ϰ� �����Ǿ� �ִ�. ��õ���� ���� �̳׶� ������ �������Ǻο�, �Ǽ� �� �Ǻ� ������ ������ �� �Ӹ� �ƴ϶�, �Ǻο� ���� ����Ǿ� �̿�� ����, ���� ��ȯ�� ����, �������� ������ ��� Ź���� ȿ���� �ִٰ� �˷��� �ִ�.',
37.686227,126.311643);

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '�Ϸ�̾�', '���', 'illumia.jpg', 'http://www.illumia.co.kr', '�λ걤����', '������', '������� 929(���浿)', '051-253-6666', '�̿�ð� : ������ 17:00~24:00 <br/> ������ 18:00~24:00 <br/> �س����� ���� ��������', 
'���� ������ �� �� �׸���ũ �Ϸ�̾ư� �����ߴ�. �Ϸ�̾ƿ����� ���� �����, ���� �ͳ�, �����ͳ�, ���Ƿε�, �޲ٴ� ���, ����ε� �� �پ��� ������ �Ƹ��ٿ� ���� ������ �����̰� �ִ�. ���� Ư���� �̺�Ʈ�� ��ä�ο� ��������簡 ����ǰ� �־� ����, ���� ������ �湮�ϱ⿡ ���� ���� �������̴�.',
35.155201,128.876704);

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '�������°���', '���', 'park.jpg', 'http://www.busan.go.kr/nakdong/daejeopark01', '�λ걤����', '������', '���� 1�� �����Ͽ�', '051-971-6011', '�̿�ð� : 06:00~21:00',
'�������°����� ������ ��� ���������������� ���ذ��׷��������� ��ġ��������, �����뱳���� �Ʒ��� �������Ϸ� ö��������(õ����买 ��179ȣ)�� ���ϴ� �����̴�. �Ŵ������� ����� ũ�� ���� ������ ����, ����, ��ä�ɴ���, ���� ü���ü��� �����Ǿ� �־� ������ �޽��� ��� �� �ִ� ���̴�.<br/> ������ ���ʳ��� ü���ü��� �̿����ǽü��� ��ġ�ϰ� �� �� ������ ������ ���� ������ �����Ͽ���. Ư�� �����뱳 �Ʒ������� ������ ��ä�������(370,000��)���� �ų� 4�� ���ֵǴ� ��ä���������� ������ ���������� �湮�ϴ� ���ο� ��ҷ� �ڸ���� �ִ�.',
35.209160,128.984794);

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '������̺����� 365���׸���ũ', '���', 'jejupark.jpg', 'http://www.rosestar.kr', '����Ư����ġ��', '���ֽ�', '�ֿ��� ��ȭ�� 2346', '064-799-6996', '�̿�ð� :<br/> ������(12��~3��) - 17:00~23:00<br/> ������(4��~11��) - 11:00~24:00',
'���ֽ� �ֿ����� ��ġ�� �������׸���ũ�� 365�� ������ �Ƹ��ٿ� ����� ��� �� �ִ� ���̴�.������ �ڿ��� ��췯�� ��,����,�������� �Ƹ��ٿ� ��������, ����� �߰����� ���� LED ������ǰ�� ������ �� �ִ�.',
33.422241,126.409237);


// �ι�° �߰�

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '���»��ڿ��޾縲', '���', 'jangtaesan.jpg', 'https://www.jangtaesan.or.kr:454/', '����������', '����', '��ȷ� 461', '042-270-7883', '�޹���: ���߹���', '������ ������� 12�� �� �ϳ��� ���»��ڿ��޾縲�� ��Ÿ�����̾� ���� ��â�ϰ� �����Ǿ� �ִ� ���̴�.<br/> ���������� 815,855��, 1�� �����ο��� 6,000���� �ڿ��޾縲���� ���� ���ʷ� �ΰ����� ����, ��ϴٰ� ���������ÿ��� �μ��� �� ���Ӱ� �����Ͽ� 2006����� �����ϰ� �Ǿ���. 
���»��� �ڿ������ �� ��췯�� ���»� �޾縲�� �ڿ� ������ ��� ���� ������� ������ ���� ������ �㳪��, �㳪��, ���೪�� ���� ��ȹ������ �����߰�, �̱����� �鿩�� ��Ÿ�����̾�, ���� �����񳪹� �� �ܷ� ������ �迭�Ͽ� �����ߴ�. �������� ���� �ִ� �����뿡�� �ٶ󺸴� ���� ������ �� �Ʒ� ���¿� �������� ��췯�� ����� �̷��. �޾縲���� ������ ��, �߻�ȭ��, ������ �Ĺ���, ��Ż ���̽ü� ���� �����Ǿ� �ִ�.',
36.218493,127.340266);


// ����° �߰�

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '��ȣ��', '���', 'janghohang.jpg', 'http://tour.samcheok.go.kr', '������', '��ô��', '�ٴ��� ��ȣ�ױ� 103', '033-570-3412', '���³� : ���߹���', '��ô �ó����� 25km. ���׶��� ���Ͼ� �ؾȼ��� �Ƹ��ٿ� ���ѱ��� ���������� �Ҹ��� ��ȣ���� �ִ�.<br/> ����� �𷡻���� ��ϱ������� �ѷ��ο� ������, ���� �ٴ幰 �ӿ��� ������ �ػ�, �̿��� �ٽø��� ǳ���ϰ�, �������� ������ �췰�� ��� �����ϴ� �׾߸��� ��ȭ���� ���̴�.
�̰����� ���� �� ���� �ŷ��� �ϳ� ������ �ٷ� ����ȣ�� ����ü�衯�� �װ��̴�.<br/> ��ε�� ���� ��� Ÿ�� ���� ��ġ���� ���� ����⸦ ����� ����� ������ ��ô�� ���� ������ ��� ���� ��ΰ� �� ��, ��½��½ �ٴ� ������ �Ｎ���� ȸ�� ������ �� ������ �ż��� �� ��ü��. �ٴ� �� ����� ü�赵 �̿� ���ݰ��� ��ſ� �� �ϳ�, �޶��޶� �ٴ� �췰�� �ű��ϰ� �������� ������ �۰԰� ������ �޷� ������ �׹��� ���⸸ �ص� �ű��� �̻�ü���̴�.<br/> ���踦 ��°�� ���� ���ø� �ص� ��̰� �����(�����)�� �ܶ� �� ��¡������ �踦 Ÿ�� ���� ���ϴð� ��ٴٰ� ���� ��� ���󿡼� ������ ���������� ��¡� ��� ��ſ��� ���� ���� �߾��� �ȴ�. 
�� ���ٶ� ������ �ȴ� ���к����嵵 �ִ�. 150m�� ���̷� �������δ� �ٴٰ� �������δ� ������ �ٴٹ����� �����ش�. ���к����� ���� �� ���̵��� ����ƴ���� ���̳� ��̿� �� ���ʸ� ������ �ƹ����� ������ ���ø� �ϸ� �������̳� �в�ġ, ���ڹ̿� �ʶ��� ���� �� �ִ�. �̷ν� ���� �غ� ��. ����������� �غ��� ������ �ι������� ���� ������ �� ���� �� �ִ�. Ȥ ���� ���Ѵ� �ϴ��� ��ȣ�׿��� �̽��� �ػ깰�� ������ �� ������ �̸��ص� �����ص� ��̱⸸ �ϴ�. 
���� �� �������� ��ħ���� Ȱó�� �ձ۰� �־��� ����� ������ �ٻ��� ��ȣ���� �����ϰ� ������ ��ȣ�� �� ��ȣ�ؼ����忡�� �ؼ����� ����. �Ѵ��� ������ �ƴ��� ������� ���ܿ�� �αٿ� �ִ� ��Ը� �ؼ�������� �繵 �ٸ� �������� ����ִ� ��õ����.<br/> ��ġ�� �������, �۰� ����� ����, ���� ����, �������, ������ ä��, �߰���¡������ �� TV������ ���� �͵��� ���� �غ� �� �ִ�',
37.288724,129.317475);

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '�����ѿ�����', '���', 'junju.jpg', 'http://hanok.jeonju.go.kr', '����ϵ�', '���ֽ�', '�ϻ걸 ������ 29 �ϴ�', '063-282-1330', '���³� : ���߹���', '�����ѿ������� ���ֽ� ǳ������ ������ ��ġ�� �ִ�. �̰����� �ѱ��� ���� �ǹ��� �ѿ�(���)�� 800�� ä�� �����Ǿ� �ִ�. ������ ��ȭ�� ���� �ӿ� �� ���� �״�� ������ �����ѿ������� �ѱ��� �� ������ ���� �� �ִ� ������ �����ϴ�.<br/><br/>
�����ѿ������� ���� �������ٵ� �ѿ��� �Ƹ��ٿ� ���ؼ��� �ִ�. �����ڶ��� ��¦ �ϴ÷� ���� �ִ� ���� �ѿ��� Ư¡�̰� ���̴�. �ѿ��� ������ ũ�� ��ä�� ���ä�� �������� �ִ�. ��ä�� ���ε��� �ӹ��� ������ �Լ����� �ְ�, ���ä�� ���ڵ��� ����ϴ� ������ ��������� �Ǿ� �ִ�. �ѿ��� ������ Ȱ���� ���еǾ� �־� ������ Ư¡���� ������ �ִ�. �� �� ��ä�� ���� ���ε��� ��Ȱ�ϴ� ���̱� ������ ���� �����ϰ� ����� ���� ��ġ�� �ִ�. �ѿ��� �� �ϳ��� Ư¡�� �µ����̴�. �ѱ��� �ַ� �ɾƼ� ��Ȱ�ϱ� ������ �ٴڿ� �µ��� ���. �µ��� ������ �� �ۿ� �Ʊ���(�Խ�)�� ����� ����(�Ʊ��� ����)������ ���� ���� �µ��� �����ϰ� �������� ���̴�. �������� �ÿ��ϰ� �ܿ￡�� �����ϴٴ� ���� �µ��� ���� ū Ư¡�̴�. �̰��� ���� �ѿ���Ȱü����� ���� ���õǾ� �ִ�. �ѿ���Ȱü����ȿ� �ִ� ������ �Լ��濡�� ���� �µ��� ü���� �� ���� �ִ�. �ѿ���Ȱü�� �� �̰����� �����Ǵ� �����ѽ��� ��û����(ҡ�����)�� ��� ���� ���� ���Ѵ�. �����ѿ��������� ������Ȱ�� �غ��� ���ֱ�� ������ ���ֺ���䵵 ������ �ΰ��� ü���� �� �� �ִ� ���̴�.<br/><br/> <h3>�����ڽ��ȳ�</h3><br/>[�ݳ����ڽ�]<br/><br/>-�ѿ����� �ܼ��� ���� �ڽ�<br/>-���� ü���� �ִ� �ڽ�<br/>-��å�� ����� �ִ� �ڽ�<br/>-���� ���� �����ѿ����� ���ο����� �ڽ�<br/><br/>[�ѿ����� �� �ֺ������ڽ�]<br/><br/>-�ѿ����� �� �ֺ� �����ڽ� 1��<br/>-�ѿ����� �� �ֺ� �����ڽ� 1��2��',
35.815124,127.153921);

insert into attraction_tbl values (ATT_SEQ.NEXTVAL, '����� �綼����', '���', 'sheepranch.jpg', 'http://www.yangtte.co.kr', '������', '��â��', '����ɸ� ����ɸ���� 483-32', '033-335-1966', '�̿�ð� : (1~2��/11~12��) 09:00~17:00<br/>(3��/10��) 09:00~17:30<br/>(4��/9��) 09:00~18:00<br/>(5��/8��) 09:00~18:30<br/><br/> �� ��ǥ���� 16:30<br/>�� �����ð��� ����,���� ��Ȳ � ���� ����� �� ����<br/><br/>���³� : ��/�߼� ����','����� �綼������ �츮���� ������ �� �����̴�. ���忡 �ö� �ٶ󺸴� ������ ���� Ȳȥ�� ��ġ �ްᰰ�� ����� ���̸�, ���� �ʿ����� �Ѱ��Ӱ� Ǯ�� ��� �ִ� �綼���� ����� �̱����� ǳ���� �ھƳ���.<br/>
���� �θ��� �ɾ�� 1.2km�� ��å�δ� 40���̸� ���ϴ�. Ư�� ���� �Ѱ�� �� �ִ� ���θ��� ��ȭ������ �� �糪�̡��� ��Ʈ������ �����Կ� ����Ʈ�̱⵵ �ϴ�. �ʿ��� ���� �ǾƳ���� ���� ���� ���ٸ� ��������� �����Ѵ�.<br/> 
�������� ����� ������� �ʱ� ������ �翡�� ���ʸ� �ִ� ü���� ��翡���� �����ϴ�. ����� ���ٵ����� �ε巯�� ���̺��� ������ �� ����. ��δ밣�� �翡 �� �̰��� ����� �������� ���� ���Ⱑ ���� �ӱ��� ������, ��� �� �ڿ��� �ϳ��� �� ���� ����� ���� �� �ִ� ���̴�.<br/><br/>
* �Ը� - 204,959�� (62,000��)',37.689489,128.752960);

COMMIT;