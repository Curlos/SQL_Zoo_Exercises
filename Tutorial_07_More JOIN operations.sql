/* Question 1 */
select id, title
from movie
where yr = 1962;

/* Question 2 */
select yr
from movie
where title = 'Citizen Kane';

/* Question 3 */
select id, title, yr
from movie
where title like '%Star Trek%'
order by yr;

/* Question 4 */
select id
from actor
where name = 'Glenn Close';

/* Question 5 */
select id
from movie
where title = 'Casablanca';

/* Question 6 */
select name
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where movie.title = 'Casablanca';

/* Question 7 */
select name
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where movie.title = 'Alien';

/* Question 8 */
select title
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where actor.name = 'Harrison Ford';

/* Question 9 */
select title
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where actor.name = 'Harrison Ford' and ord != 1;

/* Question 10 */
select title, actor.name
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where ord = 1;

/* Question 11 */
SELECT yr, COUNT(title)
FROM
  movie JOIN casting ON movie.id=movieid
  JOIN actor ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 1

/* Question 12 */
select title, actor.name
from actor
  join casting on (actorid=actor.id)
  join movie on (movie.id = movieid)
where ord = 1 and title in (select title
  from actor
    join casting on (actorid=actor.id)
    join movie on (movie.id = movieid)
  where actor.name = 'Julie Andrews');

/* Question 13 */
SELECT name
FROM casting JOIN actor
  ON  actorid = actor.id
WHERE ord=1
GROUP BY name
HAVING COUNT(movieid)>=15

/* Question 14 */
SELECT title, COUNT(actorid)
FROM casting, movie
WHERE yr=1978
  AND movieid=movie.id
GROUP BY title
ORDER BY 2 DESC,1 ASC

/* Question 15 */
SELECT DISTINCT d.name
FROM actor d JOIN casting a ON (a.actorid=d.id)
  JOIN casting b on (a.movieid=b.movieid)
  JOIN actor c on (b.actorid=c.id
    and c.name='Art Garfunkel')
WHERE d.id!=c.id