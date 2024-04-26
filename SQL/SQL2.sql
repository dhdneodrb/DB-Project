--2. 이번 달 위탁 판매로 얻은 수수료 총액을 추출
select o.orderdate, sum(c.consignment_fee) 
from consignment@camp c, c_order@camp o 
where o.consignment_no = c.consignment_no 
and '2023-11-01' <= orderdate and '2023-11-30' >= orderdate 
group by rollup(o.orderdate);

