-- operator select 
--select * from models where company='company1';
--select * from car_owners where birth_date between '1990-01-01' and '1995-12-31';
--select * from car_owners where phone like '050%';

--operator projection
--select name, date_part('year', age(birth_date)) from car_owners where birth_date  > '1995-01-01';

--Get phone prefixes for car owners living in city1

select city, substring (phone from 1 for 3)as area_code from car_owners where city='city1';

--Get full data about models, the value of engine power greater than 
--6% from the value of engine capacity

select * from models where (cast (engine_power as decimal) / cast (engine_capacity as decimal) * 100) > 6.0;

--Get name and phone of the owners who were born at December (Try to use ANSI SQL, not only
--PostgreSQL)

SELECT name, phone
FROM car_owners
WHERE DATE_PART('month', birth_date) = 12;

--Get car number, model name and year of the cars with more than 5000 kilometers in a good
--state

SELECT number, model_name, model_year
FROM cars
WHERE kilometers > 5000 AND state='good';

--Get car numbers and trade deal dates for the cars sold in spring
SELECT car_number, date
FROM trade_deals
WHERE DATE_PART('month', date) BETWEEN 3 AND 5;



