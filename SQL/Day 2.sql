-- Day 2: SQL Joins and Subqueries

-- 1. INNER JOIN Example
SELECT employees.name, departments.department_name 
FROM employees 
INNER JOIN departments 
ON employees.department_id = departments.department_id;

-- 2. LEFT JOIN Example
SELECT employees.name, departments.department_name 
FROM employees 
LEFT JOIN departments 
ON employees.department_id = departments.department_id;

-- 3. RIGHT JOIN Example
SELECT employees.name, departments.department_name 
FROM employees 
RIGHT JOIN departments 
ON employees.department_id = departments.department_id;

-- 4. FULL OUTER JOIN Example
SELECT employees.name, departments.department_name 
FROM employees 
FULL OUTER JOIN departments 
ON employees.department_id = departments.department_id;

-- 5. Subquery: Retrieve employees with salary above the average salary
SELECT name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 6. Correlated Subquery: Retrieve employees who earn more than the average salary of their department
SELECT e.name, e.salary, e.department_id 
FROM employees e 
WHERE e.salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = e.department_id
);

-- 7. Non-Correlated Subquery: Retrieve all department names that have employees
SELECT department_name 
FROM departments 
WHERE department_id IN (
    SELECT DISTINCT department_id 
    FROM employees
);
