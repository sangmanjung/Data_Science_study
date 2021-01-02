SELECT city, length(city) FROM station
ORDER BY length(city),city ASC
LIMIT 1;

SELECT city, length(city) FROM station
ORDER BY length(city) DESC
LIMIT 1;
