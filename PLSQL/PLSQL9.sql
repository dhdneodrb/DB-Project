-- 9. ��ǰ ��ȣ�� �޾Ƽ� ��ǰ�� ������ ��� <���ν���>

create or replace procedure purchase_info 	
        (v_no in varchar2, v_res out sys_refcursor) 
is 
begin 	
        open v_res for select * 	from purchase@camp 	where purchase_no = v_no; end; /




