-- 12. �뿩 ��ǰ ��ü �� �ֹ� �ݾ��� 15%�� �Ϸ��� ���� ��ü��� �����ϴ� <�Լ�>

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


