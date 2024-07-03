-- Group by (집계, 중복제거)

select 
	distinct 
    category_id, # select된 것들 중에서 중복을 제거 
    publisher_id
from
	book_tb;
    
select #4
	category_id,
    count(*)
from #1
	book_tb
where #2
	book_id > 7000
group by #3
	category_id;
    
-- 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오.
-- 그리고 카테고리 별로 도서 개수가 출력되어야 한다.

select #3
	*
from #1
	(select # 1-4 서브 쿼리는 최대한 적게(~3번) 사용하는 것이 좋다. select가 연산 처리량을 늘려 성능을 저하시키기 때문이다. 
		category_id,
        count(*) as category_count
	from # 1-1
		book_tb
	where # 1-2
		book_name like "%돈%"
	group by # 1-3
		category_id) as category_group_book_tb
where #2
	category_count > 10;

# having -> group by된 데이터의 결과에 조건을 걸어주는 것 
select #4
	category_id,
	count(*) as category_count
from #1
	book_tb
where #2
	book_name like "%돈%"
group by #3
	category_id
having #5
	category_count > 10;
    

    
