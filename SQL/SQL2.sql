--2. �̹� �� ��Ź �Ǹŷ� ���� ������ �Ѿ��� ����
select o.orderdate, sum(c.consignment_fee) 
from consignment@camp c, c_order@camp o 
where o.consignment_no = c.consignment_no 
and '2023-11-01' <= orderdate and '2023-11-30' >= orderdate 
group by rollup(o.orderdate);

