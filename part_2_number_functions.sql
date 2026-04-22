
-- ============================================
-- Section B: Number Functions
-- Name: Teddy Rutto
-- Date: 4/22/2026
-- ============================================

--1)Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR

select marks,
round(marks, 1) as rounded_marks,
ceil(marks/10)*10 as rounded_upten,
floor(marks/10)*10 as marks_floor
from exam_results;

--2)Write a query to calculate the following summary statistics for exam_results in one query: total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).

select 
count(marks) as marks_count,
round(avg(marks), 2) as avg_marks,
max(marks) as max_marks,
min(marks) as min_marks,
sum(marks) as total_marks
from exam_results;

--3)The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number

select result_id, marks, 
round(marks*1.1, 1)as boosted_marks
from exam_results;