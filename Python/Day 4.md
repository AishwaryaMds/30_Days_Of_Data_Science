# **Day 4: Python Basics** 🐍

## **Introduction** 🌟
Today, I explored the fundamentals of Python, focusing on **Data Types**, **Functions**, and **Loops**. These are the building blocks of Python programming and crucial for any data science workflow. Below is the breakdown with code examples and detailed explanations. 🚀

---

## **Topics Covered**

### **1. Data Types** 🧮
```python
# Examples of different data types
integer_var = 10          # Integer
float_var = 20.5          # Float
string_var = "Hello"     # String
list_var = [1, 2, 3]      # List
tuple_var = (4, 5, 6)     # Tuple
dict_var = {"a": 1, "b": 2}  # Dictionary
```
#### **Explanation:**
- **Integer:** Whole numbers like `10`.
- **Float:** Decimal numbers like `20.5`.
- **String:** Text data enclosed in quotes, e.g., "Hello".
- **List:** Ordered, mutable collection, e.g., `[1, 2, 3]`.
- **Tuple:** Ordered, immutable collection, e.g., `(4, 5, 6)`.
- **Dictionary:** Key-value pairs, e.g., `{"a": 1, "b": 2}`.

📝 **Why Important?** Understanding data types ensures you handle variables correctly and avoid errors. Each data type has unique characteristics and use cases.

---

### **2. Functions** ✍️
```python
# Function to calculate the square of a number
def square(num):
    return num ** 2

# Calling the function
result = square(5)
print(result)  # Output: 25
```
#### **Explanation:**
- **Function Definition:** Use `def` to define a function.
- **Parameters:** Input values (`num` in this case) that the function accepts.
- **Return Statement:** Outputs the result of the function.
- **Calling a Function:** Use the function name followed by parentheses, passing arguments if needed.

💡 **Use case:** Functions help organize code, making it reusable and modular.

---

### **3. Loops** 🔄
```python
# Example of a for loop
for i in range(5):
    print("Iteration", i)

# Example of a while loop
count = 0
while count < 3:
    print("Count is", count)
    count += 1
```
#### **Explanation:**
- **For Loop:** Iterates over a sequence (e.g., `range(5)` generates numbers 0 to 4).
- **While Loop:** Repeats as long as the condition is `True`.
- Use loops to perform repetitive tasks efficiently.

## **Why These Concepts Matter**
Loops are essential for tasks like data processing, automation, and applying operations to collections.

---

## **Reflection** 🤔
Today’s session was exciting and gave me a solid foundation in Python basics. These concepts are the stepping stones for diving deeper into advanced topics like NumPy, Pandas, and beyond. 💪

