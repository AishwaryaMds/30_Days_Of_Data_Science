# **Day 3: Aggregations and Window Functions**

## **Introduction**  
Today, I focused on understanding SQL **Aggregations** and **Window Functions**, which are essential for summarizing and analyzing data. Below is an explanation of each query in the SQL file.

---

## SQL Queries

### **1. Basic Aggregation Functions**
```sql
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department;
```
#### **Explanation:**  
- Aggregation functions like `COUNT()`, `AVG()`, `MAX()`, and `MIN()` summarize data within groups defined by the `GROUP BY` clause.  
- Here, we calculate the total employees, average salary, maximum salary, and minimum salary for each department.  
- **Use case:** Generating summary statistics for grouped data.

---

### **2. Aggregations with HAVING Clause**
```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```
#### **Explanation:**  
- The `HAVING` clause filters grouped data based on aggregate conditions.  
- In this query, only departments with an average salary greater than 50,000 are displayed.  
- **Use case:** Applying conditional filters on grouped data after aggregation.

---

### **3. ROW_NUMBER() Function**
```sql
SELECT name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;
```
#### **Explanation:**  
- The `ROW_NUMBER()` function assigns a unique rank to each row within a partition, ordered by a specified column.  
- Here, employees are ranked based on their salary in descending order within their respective departments.  
- **Use case:** Assigning a unique identifier to each row in a group.

---

### **4. RANK() Function**
```sql
SELECT name, department, salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;
```
#### **Explanation:**  
- The `RANK()` function assigns ranks to rows, leaving gaps for ties.  
- In this query, employees with the same salary in a department receive the same rank, and the next rank is skipped.  
- **Use case:** Identifying relative standings within a group, handling ties.

---

### **5. DENSE_RANK() Function**
```sql
SELECT name, department, salary,
       DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;
```
#### **Explanation:**  
- The `DENSE_RANK()` function is similar to `RANK()` but assigns consecutive ranks without gaps.  
- Employees with the same salary receive the same rank, but the next rank is not skipped.  
- **Use case:** Ranking data with consecutive ordering, even with ties.

---

### **6. SUM() as a Window Function**
```sql
SELECT name, department, salary,
       SUM(salary) OVER (PARTITION BY department ORDER BY salary ASC) AS cumulative_salary
FROM employees;
```
#### **Explanation:**  
- The `SUM()` function calculates the cumulative sum of salaries within each department, ordered by salary in ascending order.  
- **Use case:** Analyzing cumulative trends in grouped data.

---

### **7. AVG() as a Window Function**
```sql
SELECT name, department, salary,
       AVG(salary) OVER (PARTITION BY department ORDER BY salary ASC ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS rolling_avg_salary
FROM employees;
```
#### **Explanation:**  
- The `AVG()` function calculates a rolling average of salaries within each department.  
- The `ROWS BETWEEN 1 PRECEDING AND CURRENT ROW` clause defines the window for calculating the average.  
- **Use case:** Generating rolling statistics for time-series or sequential data.

---

## **Why These Concepts Matter**
1. **Aggregations** simplify data analysis by summarizing large datasets into meaningful insights.  
2. **Window Functions** provide advanced capabilities for ranking, cumulative calculations, and rolling metrics, which are invaluable for detailed analysis.

---

## **Reflection**  
Exploring Aggregations and Window Functions today expanded my SQL toolkit significantly. These concepts are powerful for data summarization and in-depth analysis, paving the way for more advanced data manipulation tasks.
