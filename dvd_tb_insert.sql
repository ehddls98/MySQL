insert into
	producer_tb
select
	0,
	producer
from
	sample_dvd_tb
group by
	producer;
    
insert into 
	dvd_publisher_tb
select
	0,
    dvd_publisher
from
	sample_dvd_tb
group by
	dvd_publisher;
    
insert into 
	database_date_tb
select
	0,
    database_date
from
	sample_dvd_tb
group by
	database_date;
    
# 정규화된 데이터 매칭
update 
	sample_dvd_tb as sdt
    left outer join producer_tb as pt on(lt.producer = sdt.producer) 
    left outer join dvd_publisher_tb dpt on(dpt.dvd_publisher = sdt.dvd_publisher)
set
	producer_id = pt.producer_id,
    dvd_publisher_id = dpt.dvd_publisher_id;

    

    