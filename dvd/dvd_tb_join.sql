# 쿼리문 우선 순위(mysql 기준) : from -> where -> group by -> select -> having -> order by -> limit (select, having은 dbms에 따라 순서가 달라질 수 있음)

select 
	dvd_id,
    registration_number,
    title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    publication_year,
    database_date
from
	dvd_tb dt
    left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
limit 10, 10; # limit index, index부터 갯수

