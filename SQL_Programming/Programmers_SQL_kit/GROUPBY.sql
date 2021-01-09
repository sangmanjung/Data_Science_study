-- problem #1 고양이와 개는 몇 마리 있을까
SELECT animal_type as 'ANIMAL_TYPE',count(animal_type) as 'count' FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type ASC

-- problem #2 동명 동물 수 찾기
SELECT name,count(name) FROM animal_ins
WHERE name is not null
GROUP BY name HAVING count(name) > 1
ORDER BY name ASC

-- problem #3 입양 시각 구하기(1)
SELECT substr(datetime,11,3) as 'HOUR', count(datetime) as 'COUNT' FROM animal_outs
GROUP BY HOUR
HAVING HOUR >= 9 AND HOUR <= 19
ORDER BY HOUR

-- problem #4 입양 시각 구하기(2)
SET @h := -1; 
SELECT @h := @h+1 AS 'HOUR',(SELECT count(datetime) FROM animal_outs
                             WHERE HOUR(DATETIME) = @h) AS 'COUNT' 
                             FROM animal_outs
                             WHERE @h < 23;
