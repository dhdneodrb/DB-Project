--15. 매입 판매 용품 중 상태가 ‘C’ 등급인 상품 정보 추출

select * from purchase@camp s, sell@camp d 
where s.purchase_no=d.purchase_no and s.p_condition_no= 4;



