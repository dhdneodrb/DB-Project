--1. ��Ź �Ǹ� ��ǰ �� ���°� ��A�� ����� ��ǰ ���� ����
col itemname format a50 
select c.itemname, s.state, c.c_con_no 
from consignment@camp c, c_condition@camp s 
where c.c_con_no = ( 
select c_con_no from c_condition@camp where state = 'A') 
and c.c_con_no = s.c_con_no;


