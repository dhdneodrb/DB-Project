--6. 2023�� 8�� �� �� �� ��Ʈ�� �뿩�� ȸ�� ���� ��ü�� ����

with camping_data as
(select * from category_main@camp c, category_sub@camp s, purchase@camp p, rent@camp r, r_order@camp ro, member@camp m 
where c.cate_main_no = s.cate_main_no 
and s.cate_sub_no = p.cate_sub_no 
and p.purchase_no = r.purchase_no 
and r.rent_no = ro.rent_no 
and ro.member_no = m.member_no 
and c.cate_main_name = '��Ʈ' 
and ro.orderdate 
between '2023-08-01' and '2023-08-31') 
select cate_main_name, orderdate, name, id, tel, email, birthdate, address from camping_data;


