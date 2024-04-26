-- 4.	���� ��ǰ �Ǹ� ������ 0 �� �� ǰ���� ���� <Ʈ����>

create or replace trigger s_order_tri
 		after insert on s_order
 		for each row 
	 
declare 		v_quantity number;

begin 		select quantity into v_quantity from sell
               where sell_no = :new.sell_no;
 	 	if	(v_quantity = 0) then 
                raise_application_error(-20001, 'ǰ��');
          else 	 update sell set quantity = (quantity-:new.quantity)
                where sell_no = :new.sell_no;
 	end if; 
end; 
/


