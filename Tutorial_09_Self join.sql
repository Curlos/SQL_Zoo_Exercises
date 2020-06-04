/* Question 1 */
select id
from route;

/* Question 2 */
SELECT id
FROM stops
WHERE name='Craiglockhart'

/* Question 3 */
SELECT id, name
FROM stops, route
WHERE id=stop
  AND company='LRT'
  AND num='4'

/* Question 4 */
SELECT company, num, COUNT(*)
FROM route
WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*)=2

/* Question 5 */
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop = 53 AND b.stop=149

/* Question 6 */
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'
  AND stopb.name='London Road'

/* Question 7 */
SELECT DISTINCT R1.company, R1.num
FROM route R1, route R2
WHERE R1.num=R2.num AND R1.company=R2.company
  AND R1.stop=115 AND R2.stop=137

/* Question 8 */
SELECT R1.company, R1.num
FROM route R1, route R2, stops S1, stops S2
WHERE R1.num=R2.num AND R1.company=R2.company
  AND R1.stop=S1.id AND R2.stop=S2.id
  AND S1.name='Craiglockhart'
  AND S2.name='Tollcross'

/* Question 9 */
SELECT DISTINCT S2.name, R2.company, R2.num
FROM stops S1, stops S2, route R1, route R2
WHERE S1.name='Craiglockhart'
  AND S1.id=R1.stop
  AND R1.company=R2.company AND R1.num=R2.num
  AND R2.stop=S2.id

/* Question 10 */
/* Question 11 */
/* Question 12 */
/* Question 13 */
/* Question 14 */
/* Question 15 */