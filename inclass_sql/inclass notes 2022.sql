CREATE TABLE family_db (
family_id integer,
first_name text,
last_name text,
age integer, -- this is the extra comma
);

-- Running with an extra comma

-- ERROR:  syntax error at or near ")"
-- LINE 6: );
--         ^

CREATE TABLE family_db (
family_id integer,
first_name text,
last_name text,
age integer
);


--- this code worked
        ^
--- GRANT CREATE access for students??
INSERT INTO family_db (family_id, first_name, last_name, age) VALUES (1, 'David', 'Haynes', 41);
-- We went with single quotes on the name fields
-- We wen with no quotes on the number fields
-- Yeah it worked
-- INSERT 0 1

-- Query returned successfully in 439 msec.

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (373.1, 'David', 'Haynes', 41);
-- testing field 1 value in 373.1
-- it rounded

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (373.5, 'David', 'Haynes', 41);
-- It rounded up.

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES ('Chucky', 'David', 'Haynes', 41);
-- This doesn't work

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (5, 55, 'Haynes', 41);
-- This worked
-- Postgresql is doing a bit of converting behind the scenes

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (5, 'Jack', 'Haynes', 48), (56, 'Jill', 'Haynes', 45);


INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (5, 'Clark', 'Kent', 48);

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (5, 'Bizzaro', 'Superman', 48);
--- I want Bizzaro as the last name

INSERT INTO family_db (family_id, first_name, last_name, age) 
VALUES (5, 'Superman','Bizzaro', 48);
--- I switched the VALUES tuple order and Bizzaro is the last name

INSERT INTO family_db (family_id, last_name, first_name,  age) 
VALUES (5, 'Bizzaro', 'Superman-Backwards', 48);

-- What if i don't have an age
INSERT INTO family_db (family_id, first_name, last_name, age) -- Define what I want to insert
VALUES (5, 'David', 'No age haynes');

-- ERROR:  INSERT has more target columns than expressions
-- LINE 1: ...INTO family_db (family_id, first_name, last_name, age) -- De...

INSERT INTO family_db (family_id, first_name, last_name) -- Define what I want to insert
VALUES (5, 'David', 'No age haynes');

INSERT INTO family_db (family_id, first_name, last_name, age) -- Define what I want to insert
VALUES (5, 'David', 'No age haynes', NULL);
-- This will work also

INSERT INTO family_db () VALUES (5, 'David', 'Nothing in the first tuple', 656);
-- This errored
INSERT INTO family_db VALUES (5, 'David', 'Nothing in the first tuple', 656);
-- This was accepted. 
-- What fields do are required?




select * 
from family_db;

select 1, 2*
-- this gave us two columns

select 1*2+30, 3/2::float, 3/2, 'Jack';
-- Commas create columns
-- Data type in is data type out.
-- Don't mix data types

select * --Wildcard, get everything
from family_db
-- Don't pay attention to the order with out specifying the order clause

select 'first_name', first_name, "first_name"
from family_db
-- Double quotes works for specifying a field, and no quotes works for specifying a field

-- Why is the string return so many times
select 'first_name'
-- Using only the select we got a single result
from family_db
-- When I add the from I got 12.
-- Any operation will be happen across the entire lenght of the table.


select first_name, last_name
from family_db

-- I want age to be first
select age, first_name, last_name
from family_db

select first_name, first_name || ' ' || last_name as full_name
-- (first_name, last_name)
-- Paranthese create a new datatype called record. 
from family_db

		
		
CREATE TABLE family_db (family_id integer, first_name text, last_name text,	age integer);
						  
create table 



select *
from us_census_tracts_2014_2018
limit 20;

-- What is the SQL for just total_male population by census tract?
select state_name, county_name, 
-- male,
-- male_under_5_years, male_5_to_9_years, male_10_to_14_years, male_15_to_17_years,
sum(male_under_5_years + female_under_5_years) as toddlers
from us_census_tracts_2014_2018
group by state_name, county_name
order by sum(male_under_5_years + female_under_5_years) desc

where 






select state_name, fips_codes
sum(male_under_5_years + female_under_5_years) as toddlers
from us_census_tracts_2014_2018
group by state_name


select state_name, county_name, upper(county_name) as county_name
from us_census_tracts_2014_2018
where lower(county_name) LIKE 'm%'