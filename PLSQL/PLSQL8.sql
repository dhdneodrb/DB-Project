-- 8. 위탁 용품 판매 시 판매가 에서 20%를 제외한 정산 금액을 계산 <함수>

create or replace procedure consign_info 	
      (v_member_id in varchar2, 	v_res out sys_refcursor) 
is 
begin 	
        open v_res for select * 	from consignment@camp 	
        where member_no = (
        select m.member_no from member@camp m where m.id = v_member_id); 
end; 
/



