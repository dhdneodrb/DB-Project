-- 3.	Ư�� ���� �Ⱓ ���� ���� �Ǹ� <Ư��> ��ǰ�� 20% ���� �ϰ� ���� <Ŀ��>

CREATE OR REPLACE PROCEDURE discount_sell_curs IS
 	CURSOR mycursor IS
 	SELECT dis_sell_no, sellprice 	FROM discount_sell
 	WHERE start_date <= TO_DATE('2023-12-31', 'YYYY-MM-DD') AND end_date >= TO_DATE('2023-12-01', 'YYYY-MM-DD');
 	v_dsn discount_sell.dis_sell_no%type;
 	v_sp discount_sell.sellprice%TYPE; 
BEGIN 	
          OPEN mycursor; LOOP
 		BEGIN FETCH mycursor INTO v_dsn, v_sp;
 		EXIT WHEN mycursor%NOTFOUND; -- ���ε� �ݾ� ������Ʈ
 		
	        UPDATE discount_sell SET sellprice = v_sp * 0.8
 		   WHERE dis_sell_no = v_dsn;
               end;
 	 	end loop; 
	CLOSE mycursor;
 	 END; 
/

