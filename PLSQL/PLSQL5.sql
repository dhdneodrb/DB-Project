-- 5.	위탁 제품 등록 시 판매 가격의 20%를 위탁 판매 수수료 적용 <프로시저>

create sequence consign_sq 
increment by 1 
start with 284 
maxvalue 9000; 

create or replace procedure consign_in( 		
v_category	  consignment.cate_sub_no%type, 		
v_member_no consignment.member_no%type, 		
v_item	  consignment.itemname%type,
v_brand     consignment.brand%type,
v_size	  consignment.con_size%type, 
v_quantity	  consignment.quantity%type,
v_price	  consignment.con_price%type, 	
v_state	  varchar2)	 	 
is 	
   v_comm	  number; 
   v_state_reult varchar2(5); 
   v_consign_no varchar2(6);		 
begin 	
    select c_con_no into v_state_reult from c_condition 
    where state = upper(v_state);
    v_comm := v_price * 0.2; 	 	
    v_consign_no := 'C'||consign_sq.nextval; 	
    insert into CONSIGNMENT( 			
                consignment_no, 			
                cate_sub_no, 			
                member_no, 
                itemname, 			
                brand, 			
              con_size, 			
              quantity, 			
              availability, 			
              registdate, 			
              con_price, 			
              consignment_fee, 			
              c_con_no) 		
         values( 
              v_consign_no, 			
              v_category, 			
              v_member_no, 			
              v_item, 			
              v_brand, 			
              v_size, 			
              v_quantity, 			
              'Y', 			
              sysdate, 			
              v_price, 			
              v_comm, 			
              v_state_reult); 
end; 
/

