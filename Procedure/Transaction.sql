# 트랜잭션(Transaction)

set @name = "김준일";
select @name;

select @@autocommit; ## @@: 전역세팅 
set autocommit = 0; ## 기본설정은 1이다. 

insert into master_tb
values
	(0, 6, 2);
    
commit; ## 커밋을 하지 않으면 데이터가 보조기억 장치로 이동되지 않아서 데이터가 날라간다. 
