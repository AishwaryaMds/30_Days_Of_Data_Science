-- Day 1: SQL Basics

-- 1. Basic SELECT Query
SELECT name, age 
FROM employees;

-- 2. Using WHERE Clause
SELECT name, department 
FROM employees 
WHERE age > 30;

-- 3. GROUP BY Example
SELECT department, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department;

-- 4. Combining WHERE and GROUP BY
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
WHERE salary > 50000 
GROUP BY department;
