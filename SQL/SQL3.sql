--3. ��Ź �Ǹŷ� �߻��� ������ ������ ���� �ݾ��� ����

select to_char(o.orderdate,'month') "��", sum(c.consignment_fee) "�հ�" 
from consignment@camp c, c_order@camp o 
where o.consignment_no = c.consignment_no 
group by rollup(to_char(o.orderdate,'month'));
