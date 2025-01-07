-- Day 3: Aggregations and Window Functions

-- 1. Basic Aggregation Functions
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

-- 2. Aggregations with HAVING Clause
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- 3. ROW_NUMBER() Function: Assigning a unique rank to each employee based on salary in their department
SELECT name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;

-- 4. RANK() Function: Ranking employees in a department based on salary, handling ties
SELECT name, department, salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;

-- 5. DENSE_RANK() Function: Ranking employees with consecutive ranks, even with ties
SELECT name, department, salary,
       DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;

-- 6. SUM() as a Window Function: Calculating cumulative salary by department
SELECT name, department, salary,
       SUM(salary) OVER (PARTITION BY department ORDER BY salary ASC) AS cumulative_salary
FROM employees;

-- 7. AVG() as a Window Function: Calculating rolling average salary in each department
SELECT name, department, salary,
       AVG(salary) OVER (PARTITION BY department ORDER BY salary ASC ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS rolling_avg_salary
FROM employees;
