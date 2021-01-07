SELECT sum(city.population) FROM city,country
WHERE city.countrycode = country.code AND country.continent = 'Asia'
