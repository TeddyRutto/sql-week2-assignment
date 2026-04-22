
-- ============================================
-- Section D: Joins Functions
-- Name: Teddy Rutto
-- Date: 4/22/2026
-- ============================================

--1)Write an INNER JOIN query to show each appointment alongside the patient's full name, the doctor's full name, the appointment date, and the diagnosis.

select p.full_name, d.full_name, a.appt_date, a.diagnosis
from appointments a
inner join patients p
on p.patient_id=a.patient_id
inner join doctors d
on d.doctor_id=a.doctor_id;

--2)Write a LEFT JOIN query to show ALL patients - and if they have an appointment, show the appointment date and diagnosis. Patients with no appointments should still appear with NULL values

select p.full_name, a.appt_date, a.diagnosis, a.patient_id
from patients p
left join appointments a
on p.patient_id=a.patient_id;

--3)Write a RIGHT JOIN query to show ALL doctors - and if they have seen a patient, show the patient name. Doctors with no appointments should still appear.

select a.appointment_id, d.full_name, p.full_name
from patients p
join appointments a
on a.patient_id=p.patient_id
right join doctors d
on a.doctor_id=d.doctor_id;

--4)Write a query using LEFT JOIN and WHERE IS NULL to find all patients who have NEVER had an appointment. Show patient full_name and city.
select a.appointment_id, p.full_name, p.city
from patients p
left join appointments a
on p.patient_id=a.patient_id
where a.appointment_id is null;

--5)Write a three-table INNER JOIN to show each appointment with: the patient name, the doctor name, and the medicine prescribed (from prescriptions). Show appointment_id, patient name, doctor name, and medicine_name

SELECT a.appointment_id, p.full_name, d.full_name, pr.medicine_name
FROM appointments a
INNER JOIN patients p 
ON a.patient_id = p.patient_id
INNER JOIN doctors d 
ON a.doctor_id = d.doctor_id
INNER JOIN prescriptions pr 
ON a.appointment_id = pr.appointment_id;