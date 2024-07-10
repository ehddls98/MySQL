-- producer 정규화
insert into producer_tb
select
	distinct # 중복제거
    0,
	제작자
from
	sample_dvd_tb;

# distinct를 사용하지 않고 group by 사용 
insert into producer_tb 
select
    0,
	제작자
from
	sample_dvd_tb
group by
	제작자;