
# 📅 **Day 1: Introduction to MSSQL**  

Welcome to Day 1 of my **100-day journey to becoming a Data Scientist!** 🎉  
Today, I explored foundational SQL concepts, focusing on **creating tables and querying data** using **MSSQL**. These are the building blocks of data management and analysis!  

---

## 🌟 **Why MSSQL?**  
- MSSQL (Microsoft SQL Server) is a robust relational database management system widely used across industries.  
- It supports handling large datasets, ensures data integrity, and facilitates complex analytical queries.  
- Learning MSSQL strengthens your understanding of databases, which is crucial for Data Science workflows.  

---

## 🛠️ **What I Learned Today**  

### **1️⃣ CREATE TABLE**  
This command is used to create a new table in the database.  
- **Syntax**:  
  ```sql
  CREATE TABLE table_name (  
      column1 datatype constraints,  
      column2 datatype constraints,  
      ...  
  );
  ```  
- **Example**:  
  ```sql
  CREATE TABLE Employees (  
      EmpID INT PRIMARY KEY,  
      Name VARCHAR(100) NOT NULL,  
      Age INT,  
      DeptID INT  
  );
  ```  

---

### **2️⃣ SELECT Statements**  
Used to fetch data from a table.  
- **Syntax**:  
  ```sql
  SELECT column1, column2  
  FROM table_name;
  ```  
- **Example**:  
  ```sql
  SELECT Name, Age  
  FROM Employees;
  ```  

---

### **3️⃣ WHERE Clause**  
Filters rows based on specified conditions.  
- **Syntax**:  
  ```sql
  SELECT column1, column2  
  FROM table_name  
  WHERE condition;
  ```  
- **Example**:  
  ```sql
  SELECT Name, Age  
  FROM Employees  
  WHERE Age > 30;
  ```  

---

### **4️⃣ LIKE Operator**  
Searches for patterns in text data.  
- **Syntax**:  
  ```sql
  SELECT column  
  FROM table_name  
  WHERE column LIKE pattern;
  ```  
- **Example**:  
  ```sql
  SELECT Name  
  FROM Employees  
  WHERE Name LIKE 'A%'; -- Names starting with 'A'
  ```  

#### **Patterns for LIKE**:  
- `'A%'`: Starts with "A"  
- `'%A'`: Ends with "A"  
- `'%A%'`: Contains "A"  
- `'A_B'`: "A" followed by any single character and "B"  

---

### **5️⃣ ORDER BY Clause**  
Used to sort the result set in ascending or descending order.  
- **Syntax**:  
  ```sql
  SELECT column1, column2  
  FROM table_name  
  ORDER BY column1 [ASC|DESC];
  ```  
- **Example**:  
  ```sql
  SELECT Name, Age  
  FROM Employees  
  ORDER BY Age DESC;
  ```  

---

## 📂 **Today's Folder Structure**  
```plaintext
📁 Day1_SQL_Basics  
    ├── Day1.md  # Documentation of what I learned today  
    ├── Day1.sql  # Contains all the SQL commands from Day 1  
```  

---

💡 **Reflection**:  
Building tables and querying data are critical skills for any data professional. Learning these basics has been exciting, and I can't wait to dive deeper tomorrow! 🚀  

Feel free to explore the code examples and practice alongside me.  

---

# 🔗 **Let’s Connect and Grow Together**  
I’m sharing every day of my learning journey:  
- GitHub: [0 to Hero Data Scientist](https://github.com/)  
- LinkedIn: [Aishwarya M DS](https://www.linkedin.com/in/aishwarya-m-ds/)  

Let’s build a data-driven future together! 💻✨  
