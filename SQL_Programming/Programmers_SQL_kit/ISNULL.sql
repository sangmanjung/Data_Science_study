-- problem #1 이름이 없는 동물의 아이디
SELECT animal_id FROM animal_ins
WHERE isnull(name)
