--8. �뿩 ��ǰ �� ���°� ��D�� ����� ǰ�� ���� ����

select r.rent_no, p.itemname, r.rentprice, c.state 
from purchase@camp p, rent@camp r, r_condition@camp c 
where p.purchase_no = r.purchase_no 
and r.r_condition_no=c.r_condition_no 
and c.state='D';



