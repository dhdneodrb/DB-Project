-- 2. �ֹ� �ϰ� �Ǹ� ��� ���� 7�� �̻��̸� x ������ �߻��ϴ� Ʈ���� <Ʈ����>

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
       raise_application_error (-20001, '�ֹ��ϰ� �Ǹ� ����� ���� �Ⱓ�� 7�� �̻��Դϴ�.'); 	
       end if; 
end; 
/

