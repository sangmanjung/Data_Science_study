-- problem #1 루시와 엘라 찾기
SELECT animal_id,name,sex_upon_intake FROM animal_ins
WHERE name = 'Lucy' OR
name = 'Ella' OR
name = 'Pickle' OR
name = 'Rogan' OR
name = 'Sabrina' OR
name = 'Mitty'
ORDER BY animal_id
