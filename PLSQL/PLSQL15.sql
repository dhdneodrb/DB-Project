-- 15. �뿩 �� ǰ�� ���̺��� ���� ����� F���(�ڵ� 6)���� ���� ��, ��� ���̺� ��� ����, ��¥ �Է��ϴ�  <Ʈ����>



create or replace trigger rentpyegi 	
after update on rent 	
for each row 	
when (new.r_condition_no =6) 
begin
 	insert into disuse(disuse_no, rent_no, disuse_date) values(r_return_sq.nextval, :new.rent_no, sysdate); end;
/

