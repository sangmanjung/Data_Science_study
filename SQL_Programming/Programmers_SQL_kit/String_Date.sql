-- problem #1 루시와 엘라 찾기
SELECT animal_id,name,sex_upon_intake FROM animal_ins
WHERE name = 'Lucy' OR
name = 'Ella' OR
name = 'Pickle' OR
name = 'Rogan' OR
name = 'Sabrina' OR
name = 'Mitty'
ORDER BY animal_id

-- problem #2 이름에 el이 들어가는 동물 찾기
SELECT animal_id,name FROM animal_ins
WHERE name LIKE '%el%' AND animal_type = 'Dog'
ORDER BY name

-- problem #3 중성화 여부 파악하기
SELECT animal_id AS 'ANIMAL_ID',name AS 'NAME',
CASE 
    WHEN left(sex_upon_intake,1) = 'N' THEN 'O'
    WHEN left(sex_upon_intake,1) = 'S' THEN 'O'
    ELSE 'X'
    END AS 중성화
FROM animal_ins
ORDER BY animal_id

-- problem #4 오랜 기간 보호한 동물(2)
SELECT O.animal_id, O.name FROM animal_outs AS O
INNER JOIN animal_ins AS I ON O.animal_id = I.animal_id
ORDER BY O.datetime - I.datetime DESC
LIMIT 2

-- problem #5 DATETIME에서 DATE로 형 변환
SELECT animal_id, name, left(datetime,10) FROM animal_ins
ORDER BY animal_id

-- another solution for problem #5
SELECT animal_id, name, date_format(datetime,'%Y-%m-%d') FROM ANIMAL_INS
ORDER BY animal_id
