--10.2023�� 11���� ȸ�� ������ ȸ�� ���� ����

SELECT m.id, m.name, m.member_date, r.membership 
FROM member@camp m, m_rating@camp r 
WHERE m.M_RATING_NO = r.M_RATING_NO 
AND TO_CHAR(m.member_date, 'YYYY-MM') = '2023-11';


