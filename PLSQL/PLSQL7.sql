-- 7. 회원 아이디를 입력하면 해당 회원의 위탁 판매 중인 상품 확인 프로 시저 <프로 시저>

create or replace function c_price 	
          (v_price in number) 
          return number 
is 	
v_tot number; 
begin 	
v_tot :=	v_price*0.2; 	
v_tot := 	v_price - v_tot; 	
return v_tot; end; /



