
/*SQLite is a software library that implements a self-contained, serverless,                        */
/*zero-configuration, transactional SQL database engine. SQLite is the most widely                  */
/*deployed SQL database engine in the world. The source code for SQLite is in the public domain.    */

/* detailed information see    http://www.sqlite.org/lang.html                                      */


/****************************************************************************************************/

/* an example for Database Course  for data analysis                 */

/* create a database of students in the university  */

/****************************************************************************************************/

.mode columns
.headers on
.nullvalue NULL


drop table if exists students;
drop table if exists courses;
drop table if exists teachers;
drop table if exists sc;

create table students(sid int primary key,name char[10],dept char[2],age int default 20);
create table courses (cid int primary key, cname text, spring boolean, teacher char[10]);
create table teachers(teacher char[10] primary key,dept char[2]);
create table sc (sid int, cid int,teacher char [10],grade int);

/* insert data into the database  */

insert into students values(1,'smith','cs',25);
insert into students values(2,'martin','cs',20);
insert into students values(3,'Bern','cs',28);
insert into students values(4,'Hone','cs',23);
insert into students values(5,'Lihong','ee',18);
insert into students values(6,'John','ee',29);
insert into students values(7,'Flower','ee',25);
insert into students values(8,'martin','ee',20);
insert into students values(9,'smith','ma',21);
insert into students values(10,'wang','ma',19);

insert into courses values(1,'database',1,'lifang');
insert into courses values(2,'softwareEngineering',0,'lifang');
insert into courses values(3,'object-oriented method',0,'lifang');
insert into courses values(4,'compiler',1,'chen');
insert into courses values(5,'C++',1,'chen');
insert into courses values(6,'Operating System',0,'wang');
insert into courses values(7,'Artificial Intelligence',1,'wang');
insert into courses values(8,'data structure',1,'wang'); 
insert into courses values(9,'data analysis',0,'wang'); 
insert into courses values(10,'100% success',0,NULL);

insert into sc values(1,8,'wang',80);
insert into sc values(1,5,'chen',90);
insert into sc values(1,1,'lifang',NULL);
insert into sc values(1,2,'lifang',60);
insert into sc values(1,4,'chen',50);


insert into sc values(2,8,'wang',50);
insert into sc values(2,5,'chen',90);
insert into sc values(2,1,'lifang',NULL);
insert into sc values(2,2,'lifang',90);
insert into sc values(2,4,'chen',80);

insert into sc values(3,8,'wang',85);
insert into sc values(3,5,'chen',50);
insert into sc values(3,1,'lifang',NULL);
insert into sc values(3,2,'lifang',60);
insert into sc values(3,4,'chen',50);
insert into sc values(3,6,'wang',NULL);

insert into sc values(4,8,'wang',55);
insert into sc values(4,5,'chen',60);
insert into sc values(4,1,'lifang',NULL);
insert into sc values(4,2,'lifang',60);
insert into sc values(4,4,'chen',60);
insert into sc values(4,6,'wang',NULL);

insert into sc values(5,8,'wang',85);
insert into sc values(5,5,'chen',70);

insert into sc values(6,8,'wang',NULL);
insert into sc values(6,5,'chen',70);

insert into sc values(7,8,'wang',55);
insert into sc values(7,5,'chen',80);

insert into teachers values ('lifang','cs');
insert into teachers values ('chen','cs');
insert into teachers values ('wang','ee');







