-- 8. ��Ź ��ǰ �Ǹ� �� �ǸŰ� ���� 20%�� ������ ���� �ݾ��� ��� <�Լ�>

create or replace procedure consign_info 	
      (v_member_id in varchar2, 	v_res out sys_refcursor) 
is 
begin 	
        open v_res for select * 	from consignment@camp 	
        where member_no = (
        select m.member_no from member@camp m where m.id = v_member_id); 
end; 
/



