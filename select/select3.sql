# group by - 그룹
# 집계 -> count, max, min, sum, avg

select #3
	admission_date,
	count(*) # null은 카운트 되지 않는다. 
from #2
	student_tb
group by #1
	admission_date;


