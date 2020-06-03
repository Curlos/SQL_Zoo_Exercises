/* Question 1 */
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

/* Question 2 */
SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'Literature'

/* Question 3 */
select yr, subject
from nobel
where winner = 'Albert Einstein';

/* Question 4 */
select winner
from nobel
where yr >= 2000 and subject = 'Peace';

/* Question 5 */
select yr, subject, winner
from nobel
where subject = 'Literature' and yr >= 1980 and yr <= 1989;

/* Question 6 */
select *
from nobel
where winner in (
'Theodore Roosevelt', 
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama');

/* Question 7 */
select winner
from nobel
where winner like 'John%'

/* Question 8 */
select yr, subject, winner
from nobel
where (yr = 1980 and subject = 'Physics') or (yr = 1984 and subject = 'Chemistry');

/* Question 9 */
select yr, subject, winner
from nobel
where yr = 1980 and subject not in ('Chemistry', 'Medicine');

/* Question 10 */
select yr, subject, winner
from nobel
where (yr < 1910 and subject = 'Medicine') or (yr >= 2004 and subject = 'Literature');

/* Question 11 */
select *
from nobel
where winner = 'PETER GRÜNBERG';

/* Question 12 */
select *
from nobel
where winner = 'EUGENE O''NEILL';

/* Question 13 */
select winner, yr, subject
from nobel
where winner like 'Sir%'
order by yr, winner asc;

/* Question 14 */
select winner, subject
from nobel
where yr=1984
order by subject
in
('Physics','Chemistry'), subject, winner;


/* Question 15 */