mysql> select * from StaffId;
+----------+----------+---------+------------------------+--------------+-------------+------------+
| StaffId  | Forename | Surname | Email                  | MobileNumber | HomeNumber  | Level      |
+----------+----------+---------+------------------------+--------------+-------------+------------+
| rpaton   | Ross     | Paton   | paton04@hotmail.com    | 07666555444  | 01698765456 | Apprentice |
| ksmith   | Kieran   | Smith   | super-afro@hotmail.com | 07867228930  | 01698987123 | CEO        |
| aneilson | Adam     | Neilson | beans@hotmail.com      | 07668223098  | 01698798123 | Supervisor |
+----------+----------+---------+------------------------+--------------+-------------+------------+
3 rows in set (0.00 sec)

mysql> select * from Clients;
+-----------------+----------+----------+---------------------------+--------------+-------------+
| ClientId        | Forename | Surname  | Email                     | MobileNumber | HomeNumber  |
+-----------------+----------+----------+---------------------------+--------------+-------------+
| kirstymckenna94 | Kirsty   | Mckenna  | weekirsty95@hotmail.com   | 07668223598  | 01698799923 |
| fionacee89xx    | Fiona    | Campbell | fionacee89xx@hotmail.com  | 07668229998  | 01698888923 |
| mariays         | Maria    | Smith    | mariays@hotmail.com       | 07668224598  | 01698798823 |
| lilysmith       | Lily     | Smith    | lilysmith@hotmail.com     | 07668323598  | 01698559923 |
| joyceforpm      | Joyce    | Paton    | joyceforpm@hotmail.com    | 07664223598  | 01692399923 |
| jimthebutcher   | Jim      | Meats    | jimthebutcher@hotmail.com | 07768223598  | 01198799923 |
+-----------------+----------+----------+---------------------------+--------------+-------------+
6 rows in set (0.00 sec)

mysql> select * from Appointments;
+-------+-------------------+----------+----------+----------+
| AppId | DateTime          | StaffId  | ClientId | BranchId |
+-------+-------------------+----------+----------+----------+
| 1     | 14:35, 16/07/2015 | rpaton   | kirstymc | airdrie1 |
| 2     | 11:35, 16/07/2015 | ksmith   | fionacee | airdrie1 |
| 3     | 09:35, 16/07/2015 | aneilson | mariays  | airdrie1 |
| 4     | 11:30, 16/07/2015 | rpaton   | lilysmit | airdrie1 |
| 5     | 11:10, 16/07/2015 | rpaton   | joycefor | airdrie1 |
| 6     | 08:55, 15/07/2015 | aneilson | jimthebu | airdrie1 |
| 7     | 20:35, 15/07/2015 | ksmith   | jimthebu | airdrie1 |
| 8     | 22:05, 15/07/2015 | ksmith   | kirstymc | airdrie1 |
| 9     | 19:00, 15/07/2015 | aneilson | joycefor | airdrie1 |
| 10    | 14:20, 15/07/2015 | rpaton   | fionacee | airdrie1 |
+-------+-------------------+----------+----------+----------+
10 rows in set (0.00 sec)

mysql> describe StaffId
    -> ;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| StaffId      | varchar(10) | YES  |     | NULL    |       |
| Forename     | varchar(20) | YES  |     | NULL    |       |
| Surname      | varchar(8)  | YES  |     | NULL    |       |
| Email        | varchar(40) | YES  |     | NULL    |       |
| MobileNumber | varchar(13) | YES  |     | NULL    |       |
| HomeNumber   | varchar(13) | YES  |     | NULL    |       |
| Level        | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> Describe Clients;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ClientId     | varchar(20) | YES  |     | NULL    |       |
| Forename     | varchar(20) | YES  |     | NULL    |       |
| Surname      | varchar(8)  | YES  |     | NULL    |       |
| Email        | varchar(40) | YES  |     | NULL    |       |
| MobileNumber | varchar(13) | YES  |     | NULL    |       |
| HomeNumber   | varchar(13) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> describe Appointments
    -> ;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| AppId    | varchar(8)  | YES  |     | NULL    |       |
| DateTime | varchar(20) | YES  |     | NULL    |       |
| StaffId  | varchar(8)  | YES  |     | NULL    |       |
| ClientId | varchar(8)  | YES  |     | NULL    |       |
| BranchId | varchar(8)  | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> 

mysql> 
mysql> select * from Appointments A, StaffId S where A.StaffId = "rpaton" and S.StaffId = A.StaffId;
+-------+-------------------+---------+----------+----------+---------+----------+---------+---------------------+--------------+-------------+------------+
| AppId | DateTime          | StaffId | ClientId | BranchId | StaffId | Forename | Surname | Email               | MobileNumber | HomeNumber  | Level      |
+-------+-------------------+---------+----------+----------+---------+----------+---------+---------------------+--------------+-------------+------------+
| 1     | 14:35, 16/07/2015 | rpaton  | kirstymc | airdrie1 | rpaton  | Ross     | Paton   | paton04@hotmail.com | 07666555444  | 01698765456 | Apprentice |
| 4     | 11:30, 16/07/2015 | rpaton  | lilysmit | airdrie1 | rpaton  | Ross     | Paton   | paton04@hotmail.com | 07666555444  | 01698765456 | Apprentice |
| 5     | 11:10, 16/07/2015 | rpaton  | joycefor | airdrie1 | rpaton  | Ross     | Paton   | paton04@hotmail.com | 07666555444  | 01698765456 | Apprentice |
| 10    | 14:20, 15/07/2015 | rpaton  | fionacee | airdrie1 | rpaton  | Ross     | Paton   | paton04@hotmail.com | 07666555444  | 01698765456 | Apprentice |
+-------+-------------------+---------+----------+----------+---------+----------+---------+---------------------+--------------+-------------+------------+
4 rows in set (0.00 sec)

mysql> 