create table goodsList (
  category number not null,
  name varchar2(30) not null,
  num number unique,
  image varchar2(2000) not null,
  th_image varchar2(2000) not null,
  title varchar2(100) not null,
  context1 varchar2(2000) not null,
  context2 varchar2(2000) not null,
  isnew varchar2(5)
)

SEQ_MEMBER �̸��� �������� ����. 1����  ++������ �Ѱ�� �ϴ� 10000 �س���