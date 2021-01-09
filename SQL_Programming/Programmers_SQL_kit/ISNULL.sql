-- problem #1 이름이 없는 동물의 아이디
SELECT animal_id FROM animal_ins
WHERE isnull(name)

-- problem #2 이름이 있는 동물의 아이디
SELECT animal_id FROM animal_ins
WHERE name is not null
ORDER BY animal_id ASC

-- problem #3 NULL 처리하기
SELECT animal_type AS 'ANIMAL_TYPE',
CASE
    WHEN isnull(name)
    THEN 'No name'
    ELSE name
    END AS 'NAME',
sex_upon_intake AS 'SEX_UPON_INTAKE' FROM animal_ins
ORDER BY animal_id
