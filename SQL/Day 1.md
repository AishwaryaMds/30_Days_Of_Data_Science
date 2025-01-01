
# **Day 1: SQL Basics**

## **Introduction**  
Today, I focused on mastering the basics of SQL: **SELECT**, **WHERE**, and **GROUP BY**. These are fundamental for querying and manipulating data in databases. 
Below is an explanation of each query in the SQL file.

---

## SQL Queries

### **1. Basic SELECT Query**
```sql
SELECT name, age 
FROM employees;
```
#### **Explanation:**  
- The `SELECT` statement is used to retrieve specific columns from a table.  
- Here, we are extracting two columns, `name` and `age`, from the `employees` table.  
- **Use case:** Quickly preview specific data points without fetching the entire dataset.  

---

### **2. Using WHERE Clause**
```sql
SELECT name, department 
FROM employees 
WHERE age > 30;
```
#### **Explanation:**  
- The `WHERE` clause filters rows based on a condition.  
- In this query, we are selecting `name` and `department` for employees whose `age` is greater than 30.  
- **Use case:** Filtering data to work with a subset that meets specific criteria.  

---

### **3. GROUP BY Example**
```sql
SELECT department, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department;
```
#### **Explanation:**  
- The `GROUP BY` clause is used to group rows that have the same values in specified columns.  
- `COUNT(*)` calculates the number of employees in each `department`.  
- The alias `total_employees` is used to rename the result column for better readability.  
- **Use case:** Summarizing data to understand patterns or aggregate information like counts or totals.  

---

### **4. Combining WHERE and GROUP BY**
```sql
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
WHERE salary > 50000 
GROUP BY department;
```
#### **Explanation:**  
- Here, we combine the `WHERE` clause and `GROUP BY` clause.  
- The `WHERE` clause filters out employees whose salary is less than or equal to 50,000.  
- After filtering, the `GROUP BY` clause groups the remaining employees by their `department`.  
- `AVG(salary)` calculates the average salary for each group.  
- **Use case:** Analyzing specific segments of data while aggregating meaningful metrics.  

---

## **Why These Concepts Matter**
1. **SELECT** is the foundation of all SQL queries, letting you retrieve the data you need.  
2. **WHERE** helps narrow down results, making queries efficient and relevant.  
3. **GROUP BY** enables grouping and aggregation, vital for creating summary reports and dashboards.  

---

## **Practice Ideas**
- Try adding more filters to the `WHERE` clause (e.g., age range, department-specific queries).  
- Use other aggregate functions like `SUM`, `MAX`, or `MIN` with the `GROUP BY` clause.  
- Experiment with ordering results using `ORDER BY`.  

---

## **Reflection**  
Learning SQL basics today gave me a better understanding of querying data effectively. 
These concepts form the backbone of any data analysis task and are crucial for building more complex queries.  

