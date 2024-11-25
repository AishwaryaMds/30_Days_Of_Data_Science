
# 📅 **Day 1: Introduction to MSSQL**  

Welcome to Day 1 of my **100-day journey to becoming a Data Scientist!** 🎉  
Today, I dived into the basics of **MSSQL**, focusing on fundamental SQL queries that form the foundation of database management and analysis.  

---

## 🌟 **Why MSSQL?**  
- MSSQL (Microsoft SQL Server) is a powerful relational database management system widely used in industries.  
- It’s perfect for handling large datasets, ensuring data security, and supporting advanced analytics.  
- Learning MSSQL provides a strong foundation for understanding other SQL-based tools.  

---

## 🛠️ **What I Learned Today**  

### **1️⃣ SELECT Statements**  
Retrieve specific data from a table.  
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

### **2️⃣ WHERE Clause**  
Filter data based on specific conditions.  
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

### **3️⃣ LIKE Operator**  
Find patterns in text data.  
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

### **4️⃣ ORDER BY Clause**  
Sort data in ascending or descending order.  
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
    ├── SELECT_Examples.sql  
    ├── WHERE_Examples.sql  
    ├── LIKE_Examples.sql  
    ├── ORDER_BY_Examples.sql  
```  

---

💡 **Reflection**:  
Today was all about setting the foundation. Learning to fetch and filter data effectively is a crucial step toward becoming a Data Scientist. Excited for tomorrow's lessons! 🚀  

Feel free to explore the code examples and practice alongside me!  

---

# 🔗 **Let’s Connect and Grow Together**  
I’m sharing every day of my learning journey:  
- GitHub: [0 to Hero Data Scientist](https://github.com/)  
- LinkedIn: [Aishwarya M DS](https://www.linkedin.com/in/aishwarya-m-ds/)  

Let’s turn dreams into data-driven realities! 💻✨  
