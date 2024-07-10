select 
	* 
from 
	master_tb mt
    left outer join join1_tb jt1 on(jt1.join1_id = mt.name_id and jt1.join1_id < 4)
    left outer join join2_tb jt2 on(jt2.join2_id = mt.phone_id)
    # inner join = 교집합 (둘 다 참인 경우에만 참인 조건의 데이터 출력)
    # outer join = 합집합 (둘 중 참인 경우 무조건 출력하고 거짓인 경우 null로 출력)
    # 왼쪽을 기준으로 오른쪽에 join 시킨다.
    # on = where, join1 테이블에서 조건을 만족하는 데이터를 가져와서 join 시킨다.
    # and를 사용하여 조건을 여러개 줄 수 있다.
    