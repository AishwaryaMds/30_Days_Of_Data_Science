# Day 6: Pandas Basics 🐼

## Introduction
Today, I explored **Pandas**, one of the most powerful libraries for data manipulation in Python. The focus was on **DataFrames**, **Indexing**, and **Filtering**, which are essential for handling structured data. Below is a breakdown of these concepts with explanations. 🚀

---

## Topics Covered

### 1. DataFrames 📊
```python
import pandas as pd

# Creating a DataFrame from a dictionary
data = {'Name': ['Alice', 'Bob', 'Charlie'],
        'Age': [25, 30, 35],
        'Salary': [50000, 60000, 70000]}
df = pd.DataFrame(data)
print(df)
```
#### Explanation:
- A **DataFrame** is a table-like structure in Pandas, similar to a spreadsheet.
- It consists of rows (indexed) and columns (named).
- We created a DataFrame from a dictionary, where each key represents a column.

🔹 **Use case:** Storing and manipulating structured data easily.

---

### 2. Indexing & Selection 🎯
```python
# Selecting a column
df['Age']

# Selecting multiple columns
df[['Name', 'Salary']]

# Selecting rows using loc (by label)
df.loc[1]

# Selecting rows using iloc (by index)
df.iloc[0:2]
```
#### Explanation:
- **df['ColumnName']** selects a specific column.
- **df[['Col1', 'Col2']]** selects multiple columns.
- **df.loc[row_label]** selects rows based on labels.
- **df.iloc[row_index]** selects rows based on index position.

🔹 **Use case:** Extracting specific data for analysis.

---

### 3. Filtering Data 🔍
```python
# Filtering rows where Age is greater than 28
filtered_df = df[df['Age'] > 28]
print(filtered_df)
```
#### Explanation:
- **df[condition]** filters rows based on a condition.
- Here, we filter employees older than 28.

🔹 **Use case:** Selecting relevant data for deeper insights.

---

## Why These Concepts Matter
1. **DataFrames** provide a structured way to handle tabular data.
2. **Indexing & Selection** allow efficient data retrieval.
3. **Filtering** helps in extracting meaningful insights from large datasets.

---

## Reflection 🤔
Pandas is an essential tool for any data scientist. Learning how to manipulate DataFrames efficiently makes working with data much easier. Excited to explore more advanced functionalities next! 💪
