--3. 위탁 판매로 발생한 수수료 이익의 누적 금액을 추출

select to_char(o.orderdate,'month') "월", sum(c.consignment_fee) "합계" 
from consignment@camp c, c_order@camp o 
where o.consignment_no = c.consignment_no 
group by rollup(to_char(o.orderdate,'month'));
