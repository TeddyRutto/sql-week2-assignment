
-- ============================================
-- Section C: Date and Time Functions
-- Name: Teddy Rutto 
-- Date: 4/22/2026
-- ============================================


--1)Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.

select first_name, last_name,
extract(year from date_of_birth) as birth_year,
extract(month from date_of_birth) as birth_month,
extract(day from date_of_birth) as birth_day
from students;

--2)Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.

select first_name, last_name, date_of_birth,
age(current_date, date_of_birth) as age
from students
order by age desc;

--3)Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. Call the column formatted_date.

select to_char(exam_date, 'day, ddth Month yyyy') AS formatted_date
from exam_results;