--9.�뿩 ��ǰ �߿��� ���� �뿩�� ���� �̷���� ǰ�� ī�װ� ����

with camping_data as 
(select c.cate_main_name, count(*) as "�뿩Ƚ��" 
from category_main@camp c, category_sub@camp s, purchase@camp p, rent@camp r, r_order@camp o 
where c.cate_main_no = s.cate_main_no 
and s.cate_sub_no = p.cate_sub_no 
and p.purchase_no = r.purchase_no 
and r.rent_no = o.rent_no 
group by c.cate_main_name)
select cate_main_name, "�뿩Ƚ��" 
from camping_data 
where "�뿩Ƚ��" = (select max("�뿩Ƚ��") from camping_data );



