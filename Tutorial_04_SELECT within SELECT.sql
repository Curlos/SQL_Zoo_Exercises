/* Question 1 */
select name
from world
where population > (select population
from world
where name = 'Russia');

/* Question 2 */
select name
from world
where continent = 'Europe' and gdp/population > (select gdp/population
  from world
  where name = 'United Kingdom');

/* Question 3 */
select name, continent
from world
where continent in (select continent
from world
where name in ('Argentina', 'Australia'))
order by name;

/* Question 4 */
select name, population
from world
where population > (select population
  from world
  where name = 'Canada') and population < (select population
  from world
  where name = 'Poland');

/* Question 5 */
select name, concat(round(population / 80000000, 1) * 100, 1)
from world
where continent = 'Europe';

/* Question 6 */
SELECT name
FROM world
WHERE gdp > ALL
   (SELECT gdp
FROM world
WHERE continent = 'Europe'
  AND gdp IS NOT NULL)


/* Question 7 */
SELECT continent, name, area
FROM world x
WHERE area >= ALL
    (SELECT area
FROM world y
WHERE y.continent=x.continent
  and area > 0 )

/* Question 8 */
select continent, name
from world

/* Question 9 */
SELECT name, continent, population
FROM world x
WHERE 25000000 >= ALL (
    SELECT population
FROM world y
WHERE x.continent=y.continent
  AND y.population>0)

/* Question 10 */
select name, continent
from world x
where population >= ALL (select population * 3
from world y
where x.continent = y.continent and population > 0 and x.name <> y.name);
