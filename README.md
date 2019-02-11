# GIS 5577 Week 2

This is your repository for week 2. You will find this same material on canvas. Basic-SQL - is a introduction to the basic SQL commands available in PostgreSQL.

### Purpose
1. Introduce Relational Databases and basic SQL commands

### Class Exercise Instructions
I have added a sample dataset for you to explore on the server. The dataset is 2000 Census tracts for the state of Minnesota. Students should practice loading the dataset onto their personal database.

1. Connect to your database

```
host address: 1XX.1XX.1XX.XXX, port: 5432
```

2. Create the mn_2000_census tracts table, by executing the create table statement ```mn_2000_census_tracts_tables.sql``` in the pgAdmin. The simplest way, is to can copy and paste this into a query. The text file ```mn_2000_census_tracts_tables.sql``` can be opened in a text editor (notepad++) to see the contents.

```SQL
CREATE TABLE mn_census_tracts_2000(GID serial primary key, GIS_Join_Match_Code text,...);
```

3. Load the table using the psql console
  1. Option 1. While you are still in psql execute the following command. Remember to change the file path with your own.
  
  ```SQL
  \copy mn_census_tracts_2000 from 'C:\git\GIS5577_spring_2019\GIS5577_week1\mn_census_tracts.csv' with header CSV;
  ```
  1. Option 2. Upload from the command line. When connecting to the server using 
  the psql command. Use the ```-c``` flag to issue a single command. The file path will need to be altered to reflect where your file is located.
  
  ```
  psql -h <hostaddress> -p 5432 -U <user> -d <database> -c "\copy mn_census_tracts_2000 from 'C:\git\GIS5577_spring_2019\GIS5577_week1\mn_census_tracts.csv' with header CSV"
  ```


### Please Complete by Next Week
1. Please read chapters 1 & 2 of Beginning Relational Data Modeling for class next week.

### Make sure you understand
1. How to connect to a remote PostgreSQL database
1. How to create a table
1. How to load data into a table

### Additional Resources
1. [Tutorials Point](https://www.tutorialspoint.com/sql/)
1. [Code Academcy](https://www.codecademy.com/learn/learn-sql)
1. [PSQL Reserved Words](https://www.postgresql.org/docs/9.6/static/sql-keywords-appendix.html)

