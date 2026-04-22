
-- ============================================
-- Section F: Set Functions
-- Name: Teddy Rutto 
-- Date: 4/22/2026
-- ============================================

--1)Write a UNION query to show a combined list of all unique cities from the students table and the patients table. Order alphabetically

select first_name, city
from nairobi_academy.students
union 
select full_name, city
from patients
order by city desc;

--2)Write a UNION ALL query to combine all student first names and all patient full names into one list. Add a second column called source that says 'Student' or 'Patient' so you can tell where each name came from

select first_name, city, 'student' as source
from nairobi_academy.students
union 
select full_name, city, 'patient' as source 
from city_hospital.patients
order by city desc;

--3)Write an INTERSECT query to find cities that appear in BOTH the students table and the patients table - cities that are home to both students and patients.

select city from nairobi_academy.students
intersect
select city from city_hospital.patients;

--4)Write a query that combines all of the following into one result using UNION ALL - student names (labelled 'Student'), patient full names (labelled 'Patient'), and doctor full names (labelled 'Doctor'). Order the final result by the source label, then by name
 
select first_name, 'student' as source
from nairobi_academy.students 
union all
select full_name, 'patient' as source
from city_hospital.patients
union all 
select full_name, 'doctor' as source
from city_hospital.doctors;
