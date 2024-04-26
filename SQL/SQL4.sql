--4. 체어 카테고리에 관심 있는 회원 추출

col 소분류품명 format a15 
col 대분류품명 format a15 
select i.member_no "회원번호", m.id "아이디", m.name "이름", i.cate_sub_no "소분류품번", sub.cate_sub_name "소분류품명", main.cate_main_name "대분류품명" from interest@camp i, category_sub@camp sub, category_main@camp main, member@camp m 
where i.cate_sub_no in ( select s.cate_sub_no from category_main@camp m, category_sub@camp s where s.cate_main_no = m.cate_main_no and m.cate_main_name = '체어') 
and i.cate_sub_no = sub.cate_sub_no 
and sub.cate_main_no = main.cate_main_no 
and i.member_no = m.member_no;
