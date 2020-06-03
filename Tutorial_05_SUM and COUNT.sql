/* Question 1 */
SELECT SUM(population)
FROM world

/* Question 2 */
select distinct continent
from world;

/* Question 3 */
select sum(gdp)
from world
where continent = 'Africa';

/* Question 4 */
select count(name)
from world
where area >= 1000000;

/* Question 5 */
select sum(population)
from world
where name in ('Estonia', 'Latvia', 'Lithuania');

/* Question 6 */
select continent, count(name)
from world
group by continent;

/* Question 7 */
select continent, count(name)
from world
where population >= 10000000
group by continent;

/* Question 8 */
select continent, sum(population)
from world
group by continent;