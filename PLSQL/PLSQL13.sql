-- 13. 대여 주문 내역 중에서 오늘 날짜까지 반납이 되지 않은 
주문 건을 연체 관리 테이블에 자동 입력하는 (커서)



set serveroutput on; 
declare 	
cursor o_d is 	select r_order_no, enddate 	from r_order 	
where enddate<sysdate and returnstate='N'; 	
v_odn	r_overdue.r_order_no%type; 	
v_ovd	r_overdue.overduedate%type; 
begin
 	for rec in o_d loop 	 	v_odn := rec.r_order_no; 	v_ovd := rec.enddate; 	insert into r_overdue (r_overdue_no, r_order_no, overduedate) 		values (r_overdue_sq.nextval, v_odn, v_ovd);
 	end loop; 
end; 
/
