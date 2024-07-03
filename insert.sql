#데이터 사입(DML - INSERT)

select * from student_tb;

# insert into 'study'.'student_tb' Database가 use 되지 않은 경우
# insert into 'student_tb'		   Database가 use 상태인 경우
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "김동인", "010-1234-5678", "ehddls@naver.com", now());
    
    insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "김동인", "010-1234-5678", "ehddls@naver.com", now()),
	(0, "김서인", "010-1234-5678", "ehddls@naver.com", now()),
	(0, "김남인", "010-1234-5678", "ehddls@naver.com", now()); #다건 insert
    
insert into student_tb
	(student_id, phone, email, introduce, student_name, admission_date)
values
	(0, "010-1234-5678", "ehddls@naver.com", null, student_name, now());
    
insert into student_tb
values
	(0, "김동인", "010-1234-5678", "ehddls@naver.com", null, now()); # 컬럼의 모든 값이 순서대로 들어가 있을떄는 컬럼명 생략 가능


    