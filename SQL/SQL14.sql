--14. 타프 카테고리에서 브랜드 별 판매량을 내림차순으로 정리

select p.brand,sum(s.quantity) as total_sales 
from purchase@camp p, sell@camp s 
where p.purchase_no= s. purchase_no 
group by p.brand 
order by total_sales desc;


