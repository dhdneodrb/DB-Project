-- 11. �뿩 ��ǰ �ֹ� �� ���� �뿩 ���� ���� ���� <Ʈ����>

create or replace trigger rentjoomun 	
after insert on r_order 	for each row 
declare 
begin 	
update rent set quantity=(quantity-:new.quantity) 
where rent_no=:new.rent_no; 
end; 
/


