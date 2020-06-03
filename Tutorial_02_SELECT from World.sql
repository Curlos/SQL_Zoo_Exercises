/* Question 1 */
SELECT name, continent, population
FROM world

/* Question 2 */
SELECT name
FROM world
WHERE population >= 200000000;

/* Question 3 */
select name, gdp/population as per_capita_gdp
from world
where population >= 200000000;

/* Question 4 */
select name, population / 1000000 as population_in_millions
from world
where continent = 'South America';

/* Question 5 */
select name, population
from world
where name in ('France', 'Germany', 'Italy');

/* Question 6 */
select name
from world
where name like '%United%';

/* Question 7 */
select name, population, area
from world
where population > 250000000 or area > 3000000;

/* Question 8 */
select name, population, area
from world
where population > 250000000
XOR area > 3000000;

/* Question 9 */
select name, round(population/1000000, 2), round(gdp/1000000000, 2)
from world
where continent = 'South America';

/* Question 10 */
select name, gdp/1000000000000
from world
where gdp >= 1000000000000;

/* Question 11 */
select name, capital
from world
where len(name) = len(capital);

/* Question 12 */
select name, capital
from world
where LEFT(name, 1) = LEFT(capital,1) and name <> capital;

/* Question 13 */
SELECT name
FROM world
WHERE name LIKE '%a%'
  and name like '%e%'
  and name like '%i%'
  and name like '%o%'
  and name like '%u%'
  AND name NOT LIKE '% %';