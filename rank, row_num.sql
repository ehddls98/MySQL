# 출판사를 기준으로 category의 count를 집계한다.
-- 한 출판사 내에서 책의 갯수에 따라 순위를 매긴다. 
select
	*
from
	(select
		# rank() over(partition by publisher_id order by book_count desc) as `rank`, 
        # rank -> 비교 대상의 갯수가 같으면 공동 순위를 매긴다. 공동 순위도 그 갯수만큼 랭크 숫자가 올라간다. ex) 1 22 4
		# dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`, 
		# dense_rank -> 비교 대상의 갯수가 같은 데이터들의 순위 다음 순위를 연결해서 오르게 한다. ex) 1 22 3
		# partition by -> 같은 id로 묶는다. 
		row_number() over(partition by publisher_id order by book_count desc) as `num`,
		# row_number -> 랭크와 다르게 비교 대상의 갯수가 같아도 중복되는 순위가 없이 무조건 내림차순으로 번호를 매긴다. ex) 1 2 3 4
		pc_count_tb.*
	from
		(select 
			publisher_id,
			category_id,
			count(*) as book_count
		from
			book_tb
		group by
			publisher_id,
			category_id) as pc_count_tb) as book_row_number_tb
	where
		num = 1; # 각 출판사별로 도서의 개수가 가장 많은 row만 추출