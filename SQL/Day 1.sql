### **Day 1: SQL Basics**  

#### **Topics Covered**  
- **SELECT**: Extract specific columns from a table.  
- **WHERE**: Filter rows based on conditions.  
- **GROUP BY**: Aggregate data meaningfully (e.g., counts, sums).  

#### **Practice Queries**  
Here are the SQL queries I practiced today:  

1. **Basic SELECT Query**:  
```sql
SELECT name, age 
FROM employees;
```  

2. **Using WHERE Clause**:  
```sql
SELECT name, department 
FROM employees 
WHERE age > 30;
```  

3. **GROUP BY Example**:  
```sql
SELECT department, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department;
```  

4. **Combining WHERE and GROUP BY**:  
```sql
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
WHERE salary > 50000 
GROUP BY department;
```  

#### **Reflection**  
- Gained a solid understanding of the SELECT statement and its uses.  
- Practiced filtering rows with WHERE to retrieve specific data.  
- Learned to group data with GROUP BY for meaningful insights.  
