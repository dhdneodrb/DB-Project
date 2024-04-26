--5. 현재 대여 연체 중인 회원들의 회원 명과 연락처 추출

select r.r_oder_no,m.name, m.tel 
from member@camping m, r_order@camping r, r_overdue@camping o 
where m.member_no=r.member_no and r.r_order_no=o.r_order_no;

