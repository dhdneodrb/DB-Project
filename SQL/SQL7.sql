--7. 2023년 한 해간 대여 월 별 매출 합계가 가장 높은 순서대로 내림차순으로 정렬하여 추출

with monthly_rental_sales as 
(select 	to_char(o.orderdate, 'YYYY-MM') as "월별",sum(o.price) as "총주문액" from r_order@camp o, rent@camp r 
where o.rent_no = r.rent_no 
and extract(year from o.orderdate) = 2023 
group by to_char(o.orderdate, 'YYYY-MM') ) select "월별", "총주문액" from monthly_rental_sales order by "총주문액" desc;


