SELECT country.continent, round(avg(city.population)-0.5) FROM city,country
WHERE city.countrycode = country.code
GROUP BY 1
