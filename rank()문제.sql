SELECT * FROM study.student_tb;

# 각 반에서 1등과 꼴등을 찾아라
	
select
	rank() over(partition by class order by score desc) as `score_rank`,
    student_tb.*
from
	student_tb
order by
	class,
	score_rank;
	
	
	
