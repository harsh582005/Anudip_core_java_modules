#create student table=> id int primary key,name varchar(10) not null,address   varchar(10) not null,age int not null

mysql> use stu;
Database changed
mysql> create table student;

mysql> create table student(id int primary key,name varchar(10) not null,address varchar(10) not null,age int not null);
Query OK, 0 rows affected (1.010 sec)

mysql> select * from student;
Empty set (0.601 sec)

mysql> insert into student values(1,"harsh","Ahmedabad",18);
Query OK, 1 row affected (0.081 sec)

mysql> select * from student;
+----+-------+-----------+-----+
| id | name  | address   | age |
+----+-------+-----------+-----+
|  1 | harsh | Ahmedabad |  18 |
+----+-------+-----------+-----+
1 row in set (0.234 sec)

mysql> insert into student values(2,"niraj","Ahmedabad",19);
Query OK, 1 row affected (0.060 sec)

mysql> select * from student;
+----+-------+-----------+-----+
| id | name  | address   | age |
+----+-------+-----------+-----+
|  1 | harsh | Ahmedabad |  18 |
|  2 | niraj | Ahmedabad |  19 |
+----+-------+-----------+-----+
2 rows in set (0.010 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.553 sec)

mysql> alter table student add sname varchar(10);
Query OK, 0 rows affected (0.635 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
| sname   | varchar(10) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.016 sec)

mysql> alter table student drop column sname;
Query OK, 0 rows affected (0.337 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.029 sec)

mysql> alter table student drop primary key;
Query OK, 2 rows affected (1.194 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   |     | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.034 sec)

mysql> alter table student add constraint primary key(id);
Query OK, 0 rows affected (1.434 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.031 sec)

mysql> alter table student rename column name to fname;
Query OK, 0 rows affected (0.420 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| fname   | varchar(10) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.034 sec)

mysql> alter table student modify column fname varchar(50);
Query OK, 0 rows affected (1.009 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| fname   | varchar(50) | YES  |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.027 sec)

mysql> alter table student modify column fname varchar(50) not null;
Query OK, 0 rows affected (1.328 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| fname   | varchar(50) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.013 sec)
