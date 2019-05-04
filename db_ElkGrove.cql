CREATE KEYSPACE db_ElkGrove
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

CREATE TABLE tablename(
   column1 name datatype PRIMARYKEY,
   column2 name data type,
   column3 name data type,
   PRIMARY KEY (column1)
   )