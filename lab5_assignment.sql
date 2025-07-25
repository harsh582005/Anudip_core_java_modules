
mysql> create database mine;
Query OK, 1 row affected (1.296 sec)

mysql> use mine;
Database changed

mysql> create table customer(customer_id int primary key not null,first_name varchar(20) not null,last_name varchar(20) not null);
Query OK, 0 rows affected (1.801 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| first_name  | varchar(20) | NO   |     | NULL    |       |
| last_name   | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.885 sec)

mysql> create table orders(order_id int primary key not null,customer_id int not null,order_date date not null,total_amount int not null,foreign key(customer_id) references customer(customer_id));
Query OK, 0 rows affected (1.501 sec)

mysql> desc orders;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| order_id     | int  | NO   | PRI | NULL    |       |
| customer_id  | int  | NO   | MUL | NULL    |       |
| order_date   | date | NO   |     | NULL    |       |
| total_amount | int  | NO   |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
4 rows in set (0.289 sec)

mysql> insert into customer values(1,"harsh","rathod"),(2,"ram","shah"),(3,"
mohan","varma");
Query OK, 3 rows affected (0.692 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+------------+-----------+
| customer_id | first_name | last_name |
+-------------+------------+-----------+
|           1 | harsh      | rathod    |
|           2 | ram        | shah      |
|           3 | mohan      | varma     |
+-------------+------------+-----------+
3 rows in set (0.243 sec)

mysql> insert into orders values(1,1,"2025-07-03",2000),(2,1,"2025-06-20",30
00),(3,2,"2024-10-30",1000),(4,3,"2025-03-11",5000);
Query OK, 4 rows affected (0.412 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |           1 | 2025-07-03 |         2000 |
|        2 |           1 | 2025-06-20 |         3000 |
|        3 |           2 | 2024-10-30 |         1000 |
|        4 |           3 | 2025-03-11 |         5000 |
+----------+-------------+------------+--------------+
4 rows in set (0.015 sec)

mysql> select first_name,last_name,order_date,total_amount from customer inner join orders on customer.customer_id=orders.customer_id;
+------------+-----------+------------+--------------+
| first_name | last_name | order_date | total_amount |
+------------+-----------+------------+--------------+
| harsh      | rathod    | 2025-07-03 |         2000 |
| harsh      | rathod    | 2025-06-20 |         3000 |
| ram        | shah      | 2024-10-30 |         1000 |
| mohan      | varma     | 2025-03-11 |         5000 |
+------------+-----------+------------+--------------+
4 rows in set (0.022 sec)

mysql> create table department(department_id int primary key not null,department_name varchar(20) not null);
Query OK, 0 rows affected (0.408 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(20) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.055 sec)

mysql> create table employee(employee_id int primary key not null,first_name varchar(20) not null,last_name varchar(20) not null,department_id int not null,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (1.031 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| first_name    | varchar(20) | NO   |     | NULL    |       |
| last_name     | varchar(20) | NO   |     | NULL    |       |
| department_id | int         | NO   | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.284 sec)

mysql> insert into department values(1,"IT"),(2,"HR"),(3,"finance"),(4,"marketing");
Query OK, 4 rows affected (0.208 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | IT              |
|             2 | HR              |
|             3 | finance         |
|             4 | marketing       |
+---------------+-----------------+
4 rows in set (0.011 sec)

mysql> insert into employee values(1,"ram","ronaliya",1),(2,"bablu","bondal"
,2),(3,"chotu","shah",2),(4,"devid","patel",4);
Query OK, 4 rows affected (0.328 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+------------+-----------+---------------+
| employee_id | first_name | last_name | department_id |
+-------------+------------+-----------+---------------+
|           1 | ram        | ronaliya  |             1 |
|           2 | bablu      | bondal    |             2 |
|           3 | chotu      | shah      |             2 |
|           4 | devid      | patel     |             4 |
+-------------+------------+-----------+---------------+
4 rows in set (0.012 sec)

mysql> select department_name,first_name from department left join employee on department.department_id=employee.department_id;
+-----------------+------------+
| department_name | first_name |
+-----------------+------------+
| IT              | ram        |
| HR              | bablu      |
| HR              | chotu      |
| finance         | NULL       |
| marketing       | devid      |
+-----------------+------------+
5 rows in set (0.172 sec)