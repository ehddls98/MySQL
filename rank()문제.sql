SELECT * FROM study.student_tb;

# 각 반에서 1등과 꼴등을 찾아라

select 
	*
from
	(select
		student_tb as score_rank_desc,
		rank() over(partition by class order by score desc) as `score_rank_desc`
	 from 
		student_tb
	 where
		score_rank = 1
	 order by 
		class) as score_rank_desc_tb,
    (select
		student_tb as score_rank_asc,
		rank() over(partition by class order by score) as `score_rank_asc`
	 from 
		student_tb
	 where
		score_rank = 1
	 order by 
		class) as score_rank_asc_tb;
	
select
	rank() over(partition by class order by score desc) as `score_rank_desc`,
    rank() over(partition by class order by score) as `score_rank_asc`
from
	student_tb;
	
	
