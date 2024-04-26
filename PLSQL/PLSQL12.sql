-- 12. 대여 용품 연체 시 주문 금액의 15%를 하루의 누적 연체료로 정산하는 <함수>

create or replace function tot_sum 	
 (v_end in date, 
  v_today in date, 	
  price in number) 	
  return number 

is 
	date_tot number; 
	price_tot number;
 	tot number; begin 	
  if(v_end = v_today) then 
		tot := 0; 		
               return tot; 	
else 	
	date_tot := v_today - v_end; 	
	price_tot := price * 0.15; 	
	tot := date_tot * price_tot; 		
       return tot;	 	
   end if; 
end; 
/


