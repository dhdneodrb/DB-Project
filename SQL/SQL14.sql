--14. Ÿ�� ī�װ����� �귣�� �� �Ǹŷ��� ������������ ����

select p.brand,sum(s.quantity) as total_sales 
from purchase@camp p, sell@camp s 
where p.purchase_no= s. purchase_no 
group by p.brand 
order by total_sales desc;


