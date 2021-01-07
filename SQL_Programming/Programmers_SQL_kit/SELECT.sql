-- problem #1 모든 레코드 조회하기
SELECT * FROM animal_ins

-- problem #2 역순 정렬하기
SELECT name,datetime FROM animal_ins
ORDER BY animal_id DESC

-- problem #3 아픈 동물 찾기
SELECT animal_id, name FROM animal_ins
WHERE intake_condition = 'Sick'

-- problem #4 어린 동물 찾기
SELECT animal_id,name FROM animal_ins
WHERE intake_condition != 'Aged'

-- problem #5 동물의 아이디와 이름
SELECT animal_id,name FROM animal_ins

-- problem #6 여러 기준으로 정렬하기
SELECT animal_id, name, datetime FROM animal_ins
ORDER BY name ASC, datetime DESC

-- problem #7 상위 n개 레코드
SELECT name FROM animal_ins
ORDER BY datetime
LIMIT 1
