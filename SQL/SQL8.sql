--8. 대여 용품 중 상태가 ‘D’ 등급인 품목 정보 추출

select r.rent_no, p.itemname, r.rentprice, c.state 
from purchase@camp p, rent@camp r, r_condition@camp c 
where p.purchase_no = r.purchase_no 
and r.r_condition_no=c.r_condition_no 
and c.state='D';



