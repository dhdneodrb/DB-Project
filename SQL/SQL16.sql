--16. �ֱ� 1�� �Ⱓ ���� ���� �Ǹ� �߿��� ī�װ� �� �Ǹŷ� ����

select c.cate_sub_no, sum(o.quantity) 
from category_sub@camp c, purchase@camp p, sell@camp s, s_order@camp o 
where c.cate_sub_no=p.cate_sub_no 
and p.purchase_no = s.purchase_no 
and s.sell_no=o.sell_no 
and s.quantity=o.quantity 
and o.orderdate >= sysdate - interval '1' year 
group by c.cate_sub_no;


