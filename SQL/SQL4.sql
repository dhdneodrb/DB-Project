--4. ü�� ī�װ��� ���� �ִ� ȸ�� ����

col �Һз�ǰ�� format a15 
col ��з�ǰ�� format a15 
select i.member_no "ȸ����ȣ", m.id "���̵�", m.name "�̸�", i.cate_sub_no "�Һз�ǰ��", sub.cate_sub_name "�Һз�ǰ��", main.cate_main_name "��з�ǰ��" from interest@camp i, category_sub@camp sub, category_main@camp main, member@camp m 
where i.cate_sub_no in ( select s.cate_sub_no from category_main@camp m, category_sub@camp s where s.cate_main_no = m.cate_main_no and m.cate_main_name = 'ü��') 
and i.cate_sub_no = sub.cate_sub_no 
and sub.cate_main_no = main.cate_main_no 
and i.member_no = m.member_no;
