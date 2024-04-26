--16. 최근 1년 기간 동안 매입 판매 중에서 카테고리 별 판매량 집계

select c.cate_sub_no, sum(o.quantity) 
from category_sub@camp c, purchase@camp p, sell@camp s, s_order@camp o 
where c.cate_sub_no=p.cate_sub_no 
and p.purchase_no = s.purchase_no 
and s.sell_no=o.sell_no 
and s.quantity=o.quantity 
and o.orderdate >= sysdate - interval '1' year 
group by c.cate_sub_no;


