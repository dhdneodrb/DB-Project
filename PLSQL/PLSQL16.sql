-- 16.회원 별 판매 누적 주문 액 100만원 이상은 VIP, 80만원 이상은 GOLD, 60만원 이상은 SILVER, 60만원 미만은 BRONZE 으로 분류하여 등급에 입력

create or replace trigger update_member_rating 
before insert on r_order
for each row 

DECLARE
   v_total_amount number;
begin 
   select
   (select sum(price) from r_order r where r.member_no = m.member_no) +
   (select sum(total_amount) from s_order s where s.member_no = m.member_no) +
   (select sum(total_amount) from c_order c where c.member_no = m.member_no)
   into v_total_amount
   from member m
   where m.member_no = :NEW.MEMBER_NO
   group by m.member_no;
   
   if(v_total_amount >1000000) then
      update member set m_rating_no = 1 where member_no = :new.member_no;
   elsif(v_total_amount >800000) then
      update member set m_rating_no = 2 where member_no = :new.member_no;
   elsif(v_total_amount >600000) then
      update member set m_rating_no = 3 where member_no = :new.member_no;
   else
      update member set m_rating_no = 4 where member_no = :new.member_no;
   end if;
end;
/
