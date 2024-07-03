# where - 조건 

# 단순 비교 연산 
select 
	* 
from
	student_tb
where
	student_name = "김동인";

# OR 연산 
select # 3
	student_id,
    student_name
from # 1
	student_tb
where #2
	student_name = "김서인"
	or student_name = "김북인"; 

# in 연산
select 
	*
from
	student_tb
where
	student_name in ("김동인", "김서인", "김남인"); #in을 사용하면 or처럼 같은 코드를 반복적으로 사용하지 않아도 된다.
        
# AND 연산
select
	* 
from
	student_tb
where
	student_id > 2
    and student_id < 4 # 2 초과 4 미만

# BETWEEN A AND B (~부터 ~까지) 
select
	*
from
	student_tb
where 
	student_id between 2 and 4; # 2 이상 4 이하
    
# NOT 
select 
	*
from 
	student_tb
where
	not student_name = "김동인";
    
# NULL 체크 
# is null 긍정
# is not null 부정
select
	*
from
	student_tb
where
	 introduce is null; 
#	 introduce is not null; 

insert into student_tb
values
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-3333", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());
    
# 와일드 카드(like) 
select 
	*
from	
	student_tb
where
	student_name like "김%"; # "김"으로 시작하는 이름 
    
select 
	*
from 
	student_tb
where
	email like "%gmail.com"; #gmail로 끝나는 이메일
    
select
	*
from
	student_tb
where
	phone like "%2222%" # 가운데 번호가 2222 인 전화번호 
    and not phone like "%2222";

# _ 와일드 카드
select
	* 
from 
	student_tb
where 
	email like "%___bbb%"; # bbb 앞에 아무 3글자가 들어있는 이메일
    

	

	