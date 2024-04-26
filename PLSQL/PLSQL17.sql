-- 17. 카드 번호 뒷자리 ****로 바꾸는 함수 (함수)

create or replace function f_mask_last_4_digits 	
(msk in varchar2) 	
return varchar 
is
begin 
return rpad('*', length(msk) - 4, '*') || substr(msk, -4); 
end; 
/

