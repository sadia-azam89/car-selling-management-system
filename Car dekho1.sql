create schema cars;
use cars;

-- Read Data--
select * from car_dekho;

-- Total cars : toget a count of total records--
select count(*) from car_dekho;

-- The manager asked the employee how many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023;

-- the manager asked the employee how many cars will be available in 2020 ,2021,2022, 2023? --
-- group by --
select count(*) from car_dekho where year in (2020 , 2021, 2022) group by year;

-- client asked me to print the total of all cars by year.I dont see all the details. --
select year, count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will be there in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel" ;

-- client requested a car dealer agent how many petrol cars wiill there in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "petrol" ;

-- the manager told the employee to give a print all the fuel cars(petrol , diesel , and CNG ) come by all year. --
select count(*) from car_dekho where fuel = "petrol" group by year;
select count(*) from car_dekho where fuel = "Diesel" group by year;
select count(*) from car_dekho where fuel = "CNG" group by year;

-- the manager said there were more than 100 cars in a given year , which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*) >100;
select year, count(*) from car_dekho group by year having count(*) <50;

-- the manager said to the employee all cars count details between 2015 and 2023; we need a complete list. --
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 to 2023 we need complete list --

-- END --


