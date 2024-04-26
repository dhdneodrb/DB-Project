-- 3.	특별 할인 기간 동안 매입 판매 <특정> 제품에 20% 할인 일괄 적용 <커서>

CREATE OR REPLACE PROCEDURE discount_sell_curs IS
 	CURSOR mycursor IS
 	SELECT dis_sell_no, sellprice 	FROM discount_sell
 	WHERE start_date <= TO_DATE('2023-12-31', 'YYYY-MM-DD') AND end_date >= TO_DATE('2023-12-01', 'YYYY-MM-DD');
 	v_dsn discount_sell.dis_sell_no%type;
 	v_sp discount_sell.sellprice%TYPE; 
BEGIN 	
          OPEN mycursor; LOOP
 		BEGIN FETCH mycursor INTO v_dsn, v_sp;
 		EXIT WHEN mycursor%NOTFOUND; -- 할인된 금액 업데이트
 		
	        UPDATE discount_sell SET sellprice = v_sp * 0.8
 		   WHERE dis_sell_no = v_dsn;
               end;
 	 	end loop; 
	CLOSE mycursor;
 	 END; 
/

