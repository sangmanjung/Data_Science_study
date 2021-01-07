-- problem #1 최댓값 구하기
SELECT datetime FROM animal_ins
ORDER BY datetime DESC
LIMIT 1

-- problem #2 최솟값 구하기
SELECT datetime FROM animal_ins
ORDER BY datetime ASC
LIMIT 1

-- problem #3 동물 수 구하기
SELECT count(animal_type) as 'count' FROM animal_ins

-- problem #4 중복 제거하기
SELECT count(DISTINCT name) FROM animal_ins
WHERE name is not null
