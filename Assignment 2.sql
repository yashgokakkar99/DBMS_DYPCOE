mysql> CREATE DATABASE dbms;
Query OK, 1 row affected (0.00 sec)

mysql> CREATE TABLE a2 (fname varchar(50), lname varchar(50), dept varchar(50), placement varchar(50));
ERROR 1046 (3D000): No database selected
mysql> USE dbms;
Database changed
mysql> CREATE TABLE a2 (fname varchar(50), lname varchar(50), dept varchar(50), placement varchar(50));
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO a2 VALUES('Yash','Gokakkar', 'CS', 'Accenture'),('Sam','Sahoo','ENTC','Jio');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM a2;
+-------+----------+------+-----------+
| fname | lname    | dept | placement |
+-------+----------+------+-----------+
| Yash  | Gokakkar | CS   | Accenture |
| Sam   | Sahoo    | ENTC | Jio       |
+-------+----------+------+-----------+
2 rows in set (0.00 sec)

mysql> UPDATE a2 SET placement = 'Dell' WHERE fname = 'Sam';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM a2;
+-------+----------+------+-----------+
| fname | lname    | dept | placement |
+-------+----------+------+-----------+
| Yash  | Gokakkar | CS   | Accenture |
| Sam   | Sahoo    | ENTC | Dell      |
+-------+----------+------+-----------+
2 rows in set (0.00 sec)

mysql> INSERT INTO a2 VALUES('Emma','Watson', 'IT', 'YGTECH');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM a2;
+-------+----------+------+-----------+
| fname | lname    | dept | placement |
+-------+----------+------+-----------+
| Yash  | Gokakkar | CS   | Accenture |
| Sam   | Sahoo    | ENTC | Dell      |
| Emma  | Watson   | IT   | YGTECH    |
+-------+----------+------+-----------+
3 rows in set (0.00 sec)

mysql> DELETE FROM a2 WHERE dept = 'ENTC';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM a2;
+-------+----------+------+-----------+
| fname | lname    | dept | placement |
+-------+----------+------+-----------+
| Yash  | Gokakkar | CS   | Accenture |
| Emma  | Watson   | IT   | YGTECH    |
+-------+----------+------+-----------+
2 rows in set (0.00 sec)

mysql>
