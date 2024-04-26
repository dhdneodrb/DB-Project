-- 6. 위탁 용품 주문 시 보유 재고 수량 차감 <트리거>

create or replace trigger c_order_tri 
after insert on c_order 	
for each row 	 
declare 	
v_qu number;
begin 	
select quantity into v_qu from consignment 
where consignment_no = :new.consignment_no; 	 	
if(v_qu = 0) then 		
    raise_application_error(-20001, '남은 수량이 없어 판매가 불가능 합니다.'); 
else 		
    update consignment set quantity = (quantity-:new.quantity) 
    where consignment_no = :new.consignment_no; 	
end if; 
end; 
/


