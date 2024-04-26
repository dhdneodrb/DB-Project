-- 15. 대여 용 품목 테이블에서 상태 등급을 F등급(코드 6)으로 변경 시, 폐기 테이블에 폐기 정보, 날짜 입력하는  <트리거>



create or replace trigger rentpyegi 	
after update on rent 	
for each row 	
when (new.r_condition_no =6) 
begin
 	insert into disuse(disuse_no, rent_no, disuse_date) values(r_return_sq.nextval, :new.rent_no, sysdate); end;
/

