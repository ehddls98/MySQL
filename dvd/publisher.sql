insert into publisher_tb(publisher_name)
select
	 -- 발행자,
	 nullif(발행자, "") # nullif(a, b) a와 b가 같으면 null로 바꾼다. 
     -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자없음") 
     -- ifnull(a, b) a가 참이면 b로 바꾼다. 
     -- replace(발행자, " ", "") -> 발행자 중에 공백(" ")이 있으면 빈값("")으로 바꾼다. 
from
	sample_dvd_tb
group by
	발행자
having 
	nullif(발행자, "") is not null;
    
insert into publisher_tb(pulisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having 
	publisher_name is not null;