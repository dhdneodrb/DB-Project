--10.2023년 11월에 회원 가입한 회원 정보 추출

SELECT m.id, m.name, m.member_date, r.membership 
FROM member@camp m, m_rating@camp r 
WHERE m.M_RATING_NO = r.M_RATING_NO 
AND TO_CHAR(m.member_date, 'YYYY-MM') = '2023-11';


