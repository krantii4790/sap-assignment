# Assignment 10 - Sort Numbers in Ascending Order

## 📖 Problem Statement

Write an SAP ABAP Classical Report to sort **10 input numbers in ascending order**.

The program accepts 10 numbers as input parameters and sorts them from the smallest number to the largest number.

### Example

```text
Input:
1, 5, 2, 4

Output:
1, 2, 4, 5
```

> **Note:** The program must perform the sorting **without using an Internal Table**.

---

## 🎯 Objective

The objective of this assignment is to understand:

* Multiple Input Parameters
* Control Statements
* Loops
* Conditional Statements
* Comparison Operators
* Swapping Values
* Sorting Logic
* Classical Report Programming

---

## 🛠 SAP Concepts Used

* Classical Report
* Selection Screen
* Parameters
* `START-OF-SELECTION`
* `DO...ENDDO`
* `IF...ENDIF`
* Comparison Operator `>`
* Temporary Variable
* Value Swapping
* `WRITE` Statement
* Arithmetic/Control Logic

---

## 📥 Input

The program accepts **10 numbers** as input.

| Parameter | Description          |
| --------- | -------------------- |
| Number 1  | First input number   |
| Number 2  | Second input number  |
| Number 3  | Third input number   |
| Number 4  | Fourth input number  |
| Number 5  | Fifth input number   |
| Number 6  | Sixth input number   |
| Number 7  | Seventh input number |
| Number 8  | Eighth input number  |
| Number 9  | Ninth input number   |
| Number 10 | Tenth input number   |

---

## 🚫 Internal Table Restriction

This assignment specifically requires sorting **without using an Internal Table**.

The program uses individual variables:

```text
gv_num1
gv_num2
gv_num3
gv_num4
gv_num5
gv_num6
gv_num7
gv_num8
gv_num9
gv_num10
```

---

## ⚙️ Program Logic

The program uses repeated comparisons and swapping to arrange the numbers in ascending order.

### Step 1 - Accept Input

The user enters 10 numbers through the selection screen.

### Step 2 - Copy Input Values

The parameter values are copied into separate working variables.

### Step 3 - Compare Adjacent Values

The program compares adjacent numbers:

```text
gv_num1 > gv_num2
```

If the first number is greater than the second number, their values are exchanged.

### Step 4 - Swap Values

A temporary variable is used for swapping:

```text
temp = gv_num2
gv_num2 = gv_num1
gv_num1 = temp
```

### Step 5 - Repeat the Process

The comparison process is repeated using:

```text
DO 10 TIMES.
```

This ensures that the numbers are arranged in ascending order.

### Step 6 - Display Sorted Numbers

Finally, the sorted values are displayed using the `WRITE` statement.

---

## 🔄 Sorting Example

### Input

```text
Number 1  : 5
Number 2  : 2
Number 3  : 8
Number 4  : 1
Number 5  : 4
Number 6  : 9
Number 7  : 3
Number 8  : 7
Number 9  : 6
Number 10 : 0
```

### Output

```text
Sorted Number:

0 1 2 3 4 5 6 7 8 9
```

---

## 🧠 Sorting Technique

The program follows a repeated **adjacent comparison and swapping** approach.

For example:

```text
5  2  8  1
```

Compare:

```text
5 > 2  → Swap
```

Result:

```text
2  5  8  1
```

Then:

```text
5 > 8  → No Swap
```

Then:

```text
8 > 1  → Swap
```

Result:

```text
2  5  1  8
```

The process is repeated until all numbers are arranged in ascending order.

---

## 📊 Sample Output

### Input

```text
1
5
2
4
3
8
7
6
10
9
```

### Output

```text
Sorted Number:

1 2 3 4 5 6 7 8 9 10
```

---

## 📂 Project Structure

```text
Assignment-10/
│
├── Assignment_10.abap
├── README.md
├── INPUT.png
└── OUTPUT.png
```

---

## 💡 Learning Outcomes

After completing this assignment, I learned:

* How to work with multiple parameters.
* How to compare values using conditional statements.
* How to swap two values using a temporary variable.
* How to use a `DO` loop for repeated processing.
* How to implement sorting logic without an Internal Table.
* How to display sorted values in a Classical Report.
* How repeated comparisons can be used to arrange data.

---

## 📸 Screenshots

### 📝 User Input

<p align="center">
  <img src="USERINPUT.png" width="700">
</p>

---

### 📊 Sorted Output

<p align="center">
  <img src="OUTPUT_RESULT.png" width="700">
</p>

---

## 👨‍💻 Author

**Krantikumar Patil**

SAP ABAP on HANA Learner

## 🤝 Connect With Me

* 💼 **LinkedIn:** [Krantikumar Patil](https://www.linkedin.com/in/krantikumarpatil4211/)
* 🌐 **Portfolio:** [Kranti AI Portfolio](https://kranti-ai.vercel.app/)

---

⭐ If you found this project helpful, consider giving this repository a **Star**!

### 🚀 SAP ABAP Learning Journey

**Day 10 / 30 — SAP ABAP Classical Report Assignments**
