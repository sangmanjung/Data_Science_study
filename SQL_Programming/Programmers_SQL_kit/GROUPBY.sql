-- problem #1 고양이와 개는 몇 마리 있을까
SELECT animal_type as 'ANIMAL_TYPE',count(animal_type) as 'count' FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type ASC
