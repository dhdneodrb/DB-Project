-- 9. 물품 번호를 받아서 물품의 정보를 출력 <프로시저>

create or replace procedure purchase_info 	
        (v_no in varchar2, v_res out sys_refcursor) 
is 
begin 	
        open v_res for select * 	from purchase@camp 	where purchase_no = v_no; end; /




