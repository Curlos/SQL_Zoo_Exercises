/* Question 1 */
select teacher.name
from teacher
where dept is null;

/* Question 2 */
SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
  ON (teacher.dept=dept.id);

/* Question 3 */
SELECT teacher.name, dept.name
FROM teacher LEFT JOIN dept
  ON (teacher.dept=dept.id)

/* Question 4 */
SELECT teacher.name, dept.name
FROM teacher right JOIN dept
  ON (teacher.dept=dept.id)

/* Question 5 */
select teacher.name, coalesce(mobile, '07986 444 2266')
from teacher;

/* Question 6 */
select teacher.name, coalesce(dept.name, 'None')
from teacher
  left join dept
  on teacher.dept = dept.id;

/* Question 7 */
select count(teacher.name) as teachers_num, count(mobile) as mobile_num
from teacher;

/* Question 8 */
select dept.name, count(teacher.name) as num_staff
from dept
  left join teacher
  on teacher.dept = dept.id
group by dept.name;

/* Question 9 */
select teacher.name,
  case when dept = 1 or dept = 2 then 'Sci'
     else 'Art'
     end
from teacher;

/* Question 10 */
select name,
  case when dept = 1 or dept = 2 then 'Sci'
     when dept = 3 then 'Art'
     else 'None'
     end
from teacher;