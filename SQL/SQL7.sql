--7. 2023�� �� �ذ� �뿩 �� �� ���� �հ谡 ���� ���� ������� ������������ �����Ͽ� ����

with monthly_rental_sales as 
(select 	to_char(o.orderdate, 'YYYY-MM') as "����",sum(o.price) as "���ֹ���" from r_order@camp o, rent@camp r 
where o.rent_no = r.rent_no 
and extract(year from o.orderdate) = 2023 
group by to_char(o.orderdate, 'YYYY-MM') ) select "����", "���ֹ���" from monthly_rental_sales order by "���ֹ���" desc;


