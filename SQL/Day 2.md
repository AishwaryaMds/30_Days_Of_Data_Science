---

# **Day 2: SQL Joins and Subqueries**

## **Introduction**  
Today, I dived into **SQL Joins** and **Subqueries**, two powerful tools for working with relational databases. Joins allow us to combine data from multiple tables, while subqueries provide flexibility to perform advanced filtering and calculations. Below is an explanation of the queries in the SQL file.

---

## **SQL Queries**

### **1. INNER JOIN Example**
```sql
SELECT employees.name, departments.department_name 
FROM employees 
INNER JOIN departments 
ON employees.department_id = departments.department_id;
```
#### **Explanation:**  
- Combines `employees` and `departments` tables where `department_id` matches in both.  
- **Use case:** Fetching employee names alongside their department names.

---

### **2. LEFT JOIN Example**
```sql
SELECT employees.name, departments.department_name 
FROM employees 
LEFT JOIN departments 
ON employees.department_id = departments.department_id;
```
#### **Explanation:**  
- Returns all rows from `employees`, with matching rows from `departments`. Non-matching rows show `NULL`.  
- **Use case:** Listing all employees, including those not assigned to any department.

---

### **3. RIGHT JOIN Example**
```sql
SELECT employees.name, departments.department_name 
FROM employees 
RIGHT JOIN departments 
ON employees.department_id = departments.department_id;
```
#### **Explanation:**  
- Returns all rows from `departments`, with matching rows from `employees`. Non-matching rows show `NULL`.  
- **Use case:** Ensuring all departments are included, even if they have no employees.

---

### **4. FULL OUTER JOIN Example**
```sql
SELECT employees.name, departments.department_name 
FROM employees 
FULL OUTER JOIN departments 
ON employees.department_id = departments.department_id;
```
#### **Explanation:**  
- Combines rows from `employees` and `departments`, including unmatched rows with `NULL`.  
- **Use case:** Comprehensive view of all employees and departments, even without matches.

---

### **5. Subquery: Retrieve Employees with Salary Above Average**
```sql
SELECT name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
```
#### **Explanation:**  
- The subquery calculates the average salary.  
- The outer query retrieves employees earning above this average.  
- **Use case:** Identifying high performers based on salary.

---

### **6. Correlated Subquery: Salary Above Department Average**
```sql
SELECT e.name, e.salary, e.department_id 
FROM employees e 
WHERE e.salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = e.department_id
);
```
#### **Explanation:**  
- For each employee, the subquery calculates the average salary for their department.  
- The outer query retrieves employees earning above their department’s average.  
- **Use case:** Comparing individual performance within a group.

---

### **7. Non-Correlated Subquery: Departments with Employees**
```sql
SELECT department_name 
FROM departments 
WHERE department_id IN (
    SELECT DISTINCT department_id 
    FROM employees
);
```
#### **Explanation:**  
- The subquery retrieves unique `department_id` values from `employees`.  
- The outer query fetches names of departments with employees.  
- **Use case:** Listing active departments.

---

## **Why These Concepts Matter**
1. **Joins** simplify combining data from related tables, enabling a holistic view.  
2. **Subqueries** allow complex queries by embedding logic within SQL statements.

---

## **Reflection**  
Day 2 was all about learning how to extract, filter, and combine data across multiple tables. These skills are essential for building advanced queries and extracting actionable insights from relational data. Excited to apply these in real-world scenarios! 🚀  

--- 
