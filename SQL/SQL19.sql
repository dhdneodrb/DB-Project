--19. 업체 매입 물품 중 수량이 5개 이하인 품목 추출

select * from purchase@camp 
where member_no between 901 and 904 and quantity <= 5;



