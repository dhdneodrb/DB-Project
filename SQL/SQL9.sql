--9.대여 용품 중에서 가장 대여가 많이 이루어진 품목 카테고리 추출

with camping_data as 
(select c.cate_main_name, count(*) as "대여횟수" 
from category_main@camp c, category_sub@camp s, purchase@camp p, rent@camp r, r_order@camp o 
where c.cate_main_no = s.cate_main_no 
and s.cate_sub_no = p.cate_sub_no 
and p.purchase_no = r.purchase_no 
and r.rent_no = o.rent_no 
group by c.cate_main_name)
select cate_main_name, "대여횟수" 
from camping_data 
where "대여횟수" = (select max("대여횟수") from camping_data );



