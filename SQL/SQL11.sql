--11.최근 2개월 간 누적 금액이 100만원 이상인 회원 추출

with order_data as ( 
select r.member_no, m.name ,price as accumulated_amount 
from r_order@camp r, member@camp m 
where r.member_no = m.member_no 
and trunc(sysdate) - trunc(orderdate) <= 60 
union all 
select c.member_no, n.name ,total_amount 
from c_order@camp c, member@camp n 
where c.member_no = n.member_no 
and trunc(sysdate) - trunc(orderdate) <= 60 
union all 
select s.member_no, a.name ,total_amount 
from s_order@camp s, member@camp a 
where s.member_no = a.member_no 
and trunc(sysdate) - trunc(orderdate) <= 60 ) 
select member_no, name , to_char(sum(accumulated_amount),'9,999,990') as total_amount 
from order_data 
group by member_no, name 
having sum(accumulated_amount) >= 1000000 order by member_no;


