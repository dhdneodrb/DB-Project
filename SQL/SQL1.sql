--1. 위탁 판매 용품 중 상태가 ‘A’ 등급인 상품 정보 추출
col itemname format a50 
select c.itemname, s.state, c.c_con_no 
from consignment@camp c, c_condition@camp s 
where c.c_con_no = ( 
select c_con_no from c_condition@camp where state = 'A') 
and c.c_con_no = s.c_con_no;


