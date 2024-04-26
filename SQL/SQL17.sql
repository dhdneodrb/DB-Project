--17. 매입 판매 용품의 누적 주문 결제 금액을 추출

select s.sell_no, p.itemname, sum(o.total_amount) 		
from sell@camp s, purchase@camp p, s_order@camp o 		
where s.sell_no = o.sell_no 		
and p.purchase_no = s.purchase_no 	
group by s.sell_no, p.itemname;


