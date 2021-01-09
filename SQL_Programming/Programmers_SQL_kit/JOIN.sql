-- problem #1 없어진 기록 찾기
SELECT O.animal_id,O.name FROM animal_outs AS O
LEFT JOIN animal_ins AS I ON O.animal_id = I.animal_id
WHERE I.animal_id is NULL

-- problem #2 있었는데요 없었습니다
SELECT O.animal_id, O.name FROM animal_outs AS O
LEFT JOIN animal_ins AS I ON O.animal_id = I.animal_id -- 조건에 맞는 animal_outs의 데이터
WHERE O.datetime < I.datetime -- 보호 시작일보다 입양일이 더 빠른 경우
ORDER BY I.datetime -- 그 중 보호 시작일이 빠른 순

-- problem #3 오랜 기간 보호한 동물
-- solution 1
-- SELECT name,datetime FROM animal_ins
-- WHERE animal_id NOT IN (SELECT animal_id FROM animal_outs)
-- ORDER BY datetime
-- LIMIT 3

-- solution 2
SELECT I.name, I.datetime FROM animal_ins AS I
LEFT JOIN animal_outs AS O ON I.animal_id = O.animal_id
WHERE ISNULL(O.animal_id)
ORDER BY I.datetime
LIMIT 3

-- problem #4 보호소에서 중성화한 동물
SELECT O.animal_id,O.animal_type,O.name FROM animal_outs AS O
LEFT JOIN animal_ins AS I ON O.animal_id = I.animal_id
WHERE left(sex_upon_intake,1) = 'I'
AND (left(sex_upon_outcome,1) = 'N' OR left(sex_upon_outcome,1) = 'S')
