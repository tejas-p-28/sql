select name from Employee where salary > 2000 and months < 10;
SELECT 
  DATE(submission_date) as submission_date,
  COUNT(DISTINCT hacker_id) as unique_hackers,
  hacker_id, 
  name
FROM 
  submissions
WHERE 
  submission_date >= '2016-03-01' 
  AND submission_date <= '2016-03-15'
GROUP BY 
  DATE(submission_date), hacker_id
ORDER BY 
  submission_date;
with start_table as (select start_date, row_number()over(order by start_date) as 'start'
from projects
where start_date not in (select end_date from projects) ),

end_table as (select end_date, row_number()over(order by end_date) as 'end'
from projects
where end_date not in (select start_date from projects))

select s.start_date,e.end_date 
from start_table s, end_table e
where s.start=e.end
order by datediff(e.end_date,s.start_date), s.start_date;
with start_table as (select start_date, row_number()over(order by start_date) as 'start'
from projects
where start_date not in (select end_date from projects) ),

end_table as (select end_date, row_number()over(order by end_date) as 'end'
from projects
where end_date not in (select start_date from projects))

select s.start_date,e.end_date 
from start_table s, end_table e
where s.start=e.end
order by datediff(e.end_date,s.start_date), s.start_date;