# Write your MySQL query statement below
select e.name from employee e, (select managerid, count(id) as total from employee group by managerid)a where a.managerid=e.id and total >=5
