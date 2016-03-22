/**************************************************************
    SQLite doesn't support RIGHT or FULL OUTER JOIN
    SQL support table variables and join on conditions
**************************************************************/


/* Set operations  */
/* what is the difference between the following two SQLs  */

select sid from sc;
select sid from sc union select sid from sc;

select sid from sc union all select sid from sc;

/* to see who has not chosen any courses  */
select sid from students except select sid from sc; 


/**************************************************************
   JOIN expressions
  **************************************************************/

select * from students,sc where students.sid=sc.sid;

/*** Rewrite using JOIN condition ***/

select *
from students join sc
on students.sid=sc.sid;

/*   natural join */
select *
from Students natural join sc;
select * from students natural join sc where grade is not null;

/* self join: pairs of students with the same average grade */

select s1.sid, s2.sid
from (select sid,avg(grade) as x from sc group by sid ) s1, (select sid, avg(grade) as x from sc group by sid) s2
where s1.x=s2.x and s1.sid < s2.sid;



/*   first to see who has not chosen a course */

select * from students where sid not in (select sid from sc);

/* then to add those students to course DB with the grade is null */

insert into sc(sid) select sid from students where sid not in (select sid from sc);  

/* update information for those new inserted students  */ 

 
select * from sc where cid is null;

update sc set cid=1, cname='database'  where cid is null;

select * from sc where sid in (8,9,10);


/* delete those students who has taken more than 5 courses  */

delete from sc where sid in (select sid from sc group by sid having count(*) > 5);

select sid,count(*) from sc group by sid; 

















