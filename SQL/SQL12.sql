--12.업체 매입 제품 중에서 가장 판매가 많이 이루어진 품목 카테고리 추출

col cate_sub_name format a20 
with sell_list as ( 
select p.cate_sub_no as cate_name, count(s.sellprice) as sellcount 
from sell@camp s, purchase@camp p 
where s.purchase_no = p.purchase_no 
and p.member_no > 900 and p.member_no < 905 
group by p.cate_sub_no) 
select s.cate_name, c.cate_sub_name, s.sellcount 
from sell_list s, category_sub@camp c 
where s.sellcount = (
select max(sellcount) from sell_list) 
and s.cate_name = c.cate_sub_no;
