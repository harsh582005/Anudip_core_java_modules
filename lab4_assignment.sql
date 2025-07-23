mysql> use stu;
Database changed
mysql> create table student;

mysql> create table student(id int primary key,name varchar(10) not null,address varchar(10) not null,age int not null);
Query OK, 0 rows affected (1.010 sec)

mysql> insert into student values(1,"harsh","Ahmedabad",18),(2,"niraj","Ahmedabad",19),(3,"ravi","surat",19),(4,"dhruvin","rajkot",20);
Query OK, 4 rows affected (0.394 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----+---------+-----------+-----+
| id | fname   | address   | age |
+----+---------+-----------+-----+
|  1 | harsh   | Ahmedabad |  18 |
|  2 | niraj   | Ahmedabad |  19 |
|  3 | ravi    | surat     |  19 |
|  4 | dhruvin | rajkot    |  20 |
+----+---------+-----------+-----+
4 rows in set (0.018 sec)

mysql> select sum(age) from student;
+----------+
| sum(age) |
+----------+
|       76 |
+----------+
1 row in set (0.089 sec)

mysql> select avg(age) from student;
+----------+
| avg(age) |
+----------+
|  19.0000 |
+----------+
1 row in set (0.236 sec)

mysql> select min(age) from student;
+----------+
| min(age) |
+----------+
|       18 |
+----------+
1 row in set (0.282 sec)

mysql> select max(age) from student;
+----------+
| max(age) |
+----------+
|       20 |
+----------+
1 row in set (0.006 sec)

mysql> select count(age) from student;
+------------+
| count(age) |
+------------+
|          4 |
+------------+
1 row in set (0.435 sec)
