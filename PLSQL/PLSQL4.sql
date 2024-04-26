-- 4.	매입 용품 판매 수량이 0 일 때 품절로 변경 <트리거>

create or replace trigger s_order_tri
 		after insert on s_order
 		for each row 
	 
declare 		v_quantity number;

begin 		select quantity into v_quantity from sell
               where sell_no = :new.sell_no;
 	 	if	(v_quantity = 0) then 
                raise_application_error(-20001, '품절');
          else 	 update sell set quantity = (quantity-:new.quantity)
                where sell_no = :new.sell_no;
 	end if; 
end; 
/


