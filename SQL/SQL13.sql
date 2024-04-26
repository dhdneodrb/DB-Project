--13.�뿩 ��ǰ, ��Ź �Ǹ� ��ǰ, ���� �Ǹ� ��ǰ�� �ֹ� ���� �ݾ��� ���� �հ� ����.

with r_order_cte as ( 
select '�뿩' as order_type, 
r_order_no as orderno, 
price as orderamount, 
row_number() over (order by r_order_no) as order_seq 
from r_order@camp ), 
c_order_cte as ( 
select '��Ź �Ǹ�' as order_type, 
c_order_no as orderno, 
total_amount as orderamount, 
row_number() over (order by c_order_no) as order_seq 
from c_order@camp ), 
s_order_cte as ( 
select '���� �Ǹ�' as order_type, 
s_order_no as orderno, 
total_amount as orderamount, 
row_number() over (order by s_order_no) as order_seq 
from s_order@camp ), 
all_orders_cte as ( 
select order_type, orderno, orderamount, order_seq from r_order_cte 
union all 
select order_type, orderno, orderamount, order_seq from c_order_cte 
union all 
select order_type, orderno, orderamount, order_seq from s_order_cte ) 
select order_type, orderno, orderamount, sum(orderamount) over (order by order_seq) as cumulativeamount 
from all_orders_cte order by order_seq
;

