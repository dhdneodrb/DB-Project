-- 14. 대여 주문 내역 테이블에서 반납 여부를 N에서 Y로 변경 시 반납 테이블에 해당 반납 번호 , 주문 번호 , 일자 입력하고 , 품목 테이블에 반납 수량 추가하는 <트리거>


create or replace trigger rentbannap 	
after update on r_order 	
for each row 	
when (new.returnstate ='Y') 
begin
 	update rent set quantity=(quantity+:new.quantity) where rent_no=:new.rent_no;
 	insert into r_return(r_return_no, r_order_no, returndate) values(r_return_sq.nextval, :new.r_order_no, sysdate);
end; 
/




