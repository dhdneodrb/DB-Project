-- 10. 가입 한지 3년이 넘은 회원들을 “단골 고객” 으로 변환하여 출력 <함수>
create or replace function member_grade 	
      (v_id varchar2) 	
      return varchar2 
is 	
      date_year number; 	
      date_reg date;	 
begin 	
      select member_date into date_reg from member 
      where id = v_id; 	
      date_year := floor(months_between(sysdate,date_reg)/12); 	
      if(date_year>=3) then 		
           return '단골손님'; 	
      else 		
           return '일반'; 	
      end if; 
end; 
/

