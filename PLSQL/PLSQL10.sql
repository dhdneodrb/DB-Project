-- 10. ���� ���� 3���� ���� ȸ������ ���ܰ� ���� ���� ��ȯ�Ͽ� ��� <�Լ�>
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
           return '�ܰ�մ�'; 	
      else 		
           return '�Ϲ�'; 	
      end if; 
end; 
/

