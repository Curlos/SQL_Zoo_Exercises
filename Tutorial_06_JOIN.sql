/* Question 1 */
select matchid, player
from goal
where teamid = 'GER';

/* Question 2 */
select id, stadium, team1, team2
from game
where id = 1012;

/* Question 3 */
select player, teamid, stadium, mdate
from goal join game on (game.id=goal.matchid)
where teamid = 'GER';

/* Question 4 */
select team1, team2, player
from goal join game on (game.id=goal.matchid)
where player like 'Mario%';

/* Question 5 */
select player, teamid, coach, gtime
from goal join eteam on teamid = id
where gtime <= 10;

/* Question 6 */
select mdate, teamname
from game join eteam on (team1=eteam.id)
where coach = 'Fernando Santos';

/* Question 7 */
select player
from goal join game on (game.id = goal.matchid)
where stadium = 'National Stadium, Warsaw';

/* Question 8 */
SELECT distinct player
FROM game JOIN goal ON matchid = id
WHERE (team1='GER' or team2='GER') and teamid != 'GER';

/* Question 9 */
select teamname, count(*) as total_goals
from eteam join goal on (id=teamid)
group by teamname;

/* Question 10 */
select stadium, count(*) as goals_scored
from game join goal on (id=matchid)
group by stadium;

/* Question 11 */
SELECT matchid, mdate, count(*) as goals_scored
FROM game JOIN goal ON matchid = id
WHERE (team1 = 'POL' OR team2 = 'POL')
group by matchid, mdate;

/* Question 12 */
select distinct matchid, mdate, count(*) as goals_scored
from goal join game on (matchid = id)
where (team1 = 'GER' or team2 = 'GER') and teamid = 'GER'
group by matchid, mdate;

/* Question 13 */
SELECT distinct mdate,
  team1, count(*) as goals_team1,
  CASE WHEN teamid=team1 THEN 1 ELSE 0 END score1
FROM game JOIN goal ON matchid = id
group by mdate, matchid, team1, team2, teamid;