--17. ���� �Ǹ� ��ǰ�� ���� �ֹ� ���� �ݾ��� ����

select s.sell_no, p.itemname, sum(o.total_amount) 		
from sell@camp s, purchase@camp p, s_order@camp o 		
where s.sell_no = o.sell_no 		
and p.purchase_no = s.purchase_no 	
group by s.sell_no, p.itemname;


