-- 6. ��Ź ��ǰ �ֹ� �� ���� ��� ���� ���� <Ʈ����>

create or replace trigger c_order_tri 
after insert on c_order 	
for each row 	 
declare 	
v_qu number;
begin 	
select quantity into v_qu from consignment 
where consignment_no = :new.consignment_no; 	 	
if(v_qu = 0) then 		
    raise_application_error(-20001, '���� ������ ���� �ǸŰ� �Ұ��� �մϴ�.'); 
else 		
    update consignment set quantity = (quantity-:new.quantity) 
    where consignment_no = :new.consignment_no; 	
end if; 
end; 
/


