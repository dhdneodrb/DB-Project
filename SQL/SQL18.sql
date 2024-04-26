--18. 이번 주에 입고 된 매입 판매 제품의 품목 카테고리의 정보를 추출

select p.purchase_no, p.itemname, p.cate_sub_no 		
from purchase@camp p, sell@camp s 		
where s.purchase_no = p.purchase_no;


