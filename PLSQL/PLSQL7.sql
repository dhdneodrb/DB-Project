-- 7. ȸ�� ���̵� �Է��ϸ� �ش� ȸ���� ��Ź �Ǹ� ���� ��ǰ Ȯ�� ���� ���� <���� ����>

create or replace function c_price 	
          (v_price in number) 
          return number 
is 	
v_tot number; 
begin 	
v_tot :=	v_price*0.2; 	
v_tot := 	v_price - v_tot; 	
return v_tot; end; /



