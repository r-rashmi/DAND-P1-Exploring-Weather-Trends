/*Checking out available cities for India*/

select *
from city_list
where country like 'India'; 

/*Decided to choose 'Bangalore' and proceed with the project*/

/*looking at city_data for Bangalore*/

select *
from city_data
where city like 'Bangalore';

select *
from global_data;

/*noticed the col avg_temp shows the average temperature for both city and global data. This will need to be renamed*/
/*following the commands used in this stackoverflow discussion: https://stackoverflow.com/questions/30290880/rename-a-column-in-mysql */

ALTER TABLE city_data RENAME COLUMN avg_temp to avg_temp_city;
ALTER TABLE global_data RENAME COLUMN avg_temp to avg_temp_global;

/*checking for its working*/

select avg_temp_global
from global_data;

select avg_temp_city
from city_data
limit 10;

/*using SQL Joins to put global and city data for bangalore in the same table*/

select city_data.year, city_data.avg_temp_city, avg_temp_global
from city_data join global_data
on city_data.year = global_data.year
where city like 'Bangalore';

/*downloaded this to perform moving averages on in excel*/
