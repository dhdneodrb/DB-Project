-- 17. ī�� ��ȣ ���ڸ� ****�� �ٲٴ� �Լ� (�Լ�)

create or replace function f_mask_last_4_digits 	
(msk in varchar2) 	
return varchar 
is
begin 
return rpad('*', length(msk) - 4, '*') || substr(msk, -4); 
end; 
/

