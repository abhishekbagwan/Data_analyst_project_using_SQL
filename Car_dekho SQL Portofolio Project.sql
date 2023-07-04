-- Create a schema --
create schema cars;

-- Use cars database
use cars;


-- Read data
SELECT * FROM car_dekho;


-- TOTAL CAR TO GET A TOTAL COUNT OF TOTAL RECORDS--
SELECT COUNT(*) FROM car_dekho;


-- The manager ask the employee how many cars will be available in 2023--
select count(*) from car_dekho where year=2023;


-- The manager ask the employee how many cars available in 2020,2021,2022
select count(*) from car_dekho where year in (2020,2021,2022) group by year;


-- Client ask me to print the total of all car by year i dont see the all details--
select year, count(*) from car_dekho group by year;


--  Client ask to car dealer agent how many cars disel car will there be in 2020--
select count(*) from car_dekho where year=2020 and fuel='Diesel';

--  Client requested a car delar agent how many petrol car will there be in 2020--
select count(*) from car_dekho where year=2020 and fuel='Petrol';


-- The manager told the employee to print all the fuel cars(PETROL,DIESEL and CNG ) come by all year--
select year, count(*) from car_dekho where fuel='Petrol' group by year;
select year, count(*) from car_dekho where fuel='Diesel' group by year;
select year, count(*) from car_dekho where fuel='CNG' group by year;


-- MANAGER SEE THERE WERE MORE THEN  100 CAR IN A GIVEN YEAR WHICH YEAR HAD MORE THEN 100 CAR--
SELECT year, count(*) from car_dekho group by year having count(*)>100;
SELECT year, count(*) from car_dekho group by year having count(*)<100;


-- The manager said to the employee all cars count details between 2015 and 2023 we need a complete list
select count(*) from car_dekho where year between 2015 and 2023;


-- The manager said to the employee all cars details between 2018 to 2023 we need complete list
select * from car_dekho where year between 2018 and 2023;