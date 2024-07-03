# 데이터 수정(DML - UPDATE)

select * from student_tb;

select 
	student_id
from
	student_tb
where
	student_name = "김준오";

update #1
	student_tb
set #3
	email = "skjil1218@gmail.com"
where #2
	student_id in (	select 
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb 
                        # update 대상 테이블과 where 서브쿼리의 from의 대상이 되는 테이블은 같을 수 없다.
                        # 그래서 임시 테이블을 만들어줘야 쿼리문이 동작하게 된다.
					where
						temp_student_tb.student_name = "김준오");

update 
	student_tb
set
	phone = "010-1234-4321",
    email = "skjil1218@naver.com"
where
	student_id = 3;
    

	