-- 1.	���� ��ǰ �ֹ� �� ���� ��� ���� ���� <Ʈ����>

create or replace trigger s_order_intri 
	after insert on s_order 	
     for each row 
declare 
begin 		update sell 		
               set quantity = (:old.quantity-:new.quantity) 		
               where :old.sell_no = :new.sell_no;	 
end;
 /
exec s_order_in@camp('s203',500,20, 1, '2023-11-9',1,298500,'Y');
