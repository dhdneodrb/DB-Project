-- 14. �뿩 �ֹ� ���� ���̺��� �ݳ� ���θ� N���� Y�� ���� �� �ݳ� ���̺� �ش� �ݳ� ��ȣ , �ֹ� ��ȣ , ���� �Է��ϰ� , ǰ�� ���̺� �ݳ� ���� �߰��ϴ� <Ʈ����>


create or replace trigger rentbannap 	
after update on r_order 	
for each row 	
when (new.returnstate ='Y') 
begin
 	update rent set quantity=(quantity+:new.quantity) where rent_no=:new.rent_no;
 	insert into r_return(r_return_no, r_order_no, returndate) values(r_return_sq.nextval, :new.r_order_no, sysdate);
end; 
/




