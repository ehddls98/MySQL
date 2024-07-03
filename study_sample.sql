SELECT * FROM study.study_sample;

insert into study_sample 
values 
("정상훈", "국어, 수학", 10000 + 20000),
("정상일", "국어, 영어, 과학", 10000 + 30000 + 40000),
("정상이", "국어, 과학",  10000 + 40000);

truncate study_sample;

# 정규화(Normalization)
# 제 1정규형(1NF - 1 Norrmal Form) *하나의 컬럼에는 하나의 값만 들어간다*
insert into study_sample
values 
("정상훈", "국어", 10000), # 두개의 조합("정상훈", "국어") 이 하나의 키가 되는것을 Composite Primary Key 라고 한다
("정상훈", "수학", 20000), # 국어(10000), 수학(20000), 영어(30000), 과학(40000) 은 종속성 관계이다
("정상일", "국어", 10000),
("정상일", "영어", 30000),
("정상일", "과학", 40000),
("정상이", "국어", 10000),
("정상이", "과학", 40000);

# 제 2정규형(2NF) 부분 종속성(Partial Depandency)을 제거해야한다
# Partial Depandency란? -> Composite Primary Key를 가진 데이터를 의미한다, 
# Composite Primary Key는 여러개의 컬럼을 합쳐서 하나의 키값으로 사용하는 것이다.
# Primary Key -> 기본키

insert into course_register_list
values 
("정상훈", "국어"),
("정상훈", "수학"),
("정상일", "국어"),
("정상일", "영어"),
("정상일", "과학"),
("정상이", "국어"),
("정상이", "과학");

insert into course_list
values 
("국어", 10000),
("수학", 20000),
("영어", 30000),
("과학", 40000);

insert into instructor_list
values 
("국어", "홍길동"),
("수학", "김영자"),
("영어", "이숙자"),
("과학", "박영구");

# 제 3정규형 -> a=b, b=c, c=b 일때 사용할 수 있다.
#제 3정규형을 적용하기 위해서는 제 2정규형이 되어있는 테이블이어야 한다.

