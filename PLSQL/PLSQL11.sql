-- 11. 대여 상품 주문 시 보유 대여 가능 수량 차감 <트리거>

create or replace trigger rentjoomun 	
after insert on r_order 	for each row 
declare 
begin 	
update rent set quantity=(quantity-:new.quantity) 
where rent_no=:new.rent_no; 
end; 
/


