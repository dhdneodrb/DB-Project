-- 2. 주문 일과 판매 취소 일이 7일 이상이면 x 에러가 발생하는 트리거 <트리거>

create or replace trigger s_order_cancel_tri 		
          after insert on s_cancel 		
          for each row 
declare 	 	
            v_order_date 	
            s_order.orderdate%type; 		
            v_cancel_date 	date; 	 

begin	 	select orderdate into v_order_date from s_order
        	where s_order_no = :new.s_order_no; 	
       if ((:new.canceldate - v_order_date)>7)then  
       raise_application_error (-20001, '주문일과 판매 취소일 간의 기간이 7일 이상입니다.'); 	
       end if; 
end; 
/

