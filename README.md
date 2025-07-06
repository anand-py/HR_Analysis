# HR Analytics SQL Project

## 📘 Project Overview

**Project Title**: HR Analytics Data Exploration  
**Level**: Beginner  
**Database**: `hr_analytics`

This project demonstrates SQL skills essential for data analysts, using HR data to perform cleaning, exploration, and derive meaningful business insights. It includes analyzing employee records to understand workforce distribution, salary patterns, and attrition behavior. Ideal for beginners applying SQL in the Human Resources domain.

---

## 🎯 Objectives

1. **Set up the HR database**: Create and explore the `employees` table.
2. **Data Cleaning**: Handle missing or null values for better accuracy.
3. **Exploratory Data Analysis**: Analyze employee demographics, salary, and departmental metrics.
4. **Business Insights**: Solve HR-specific queries using SQL.

---

## 🏗️ Project Structure

### 1. Database Setup

```sql
CREATE DATABASE hr_analytics;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(100),
    job_title VARCHAR(100),
    hire_date DATE,
    salary FLOAT,
    performance_rating FLOAT,
    manager_id INT,
    is_active BOOLEAN
);
```

### 2. Data Cleaning

```sql
SET SQL_SAFE_UPDATES = 0;


UPDATE employees
SET is_active = FALSE
WHERE is_active IS NULL;
```

### 3. Data Analysis & Business Queries
🔹 Total number of employees:
```sql
SELECT COUNT(*) AS total_employees FROM employees;
```
🔹 Employees earning more than $70,000:
```sql
SELECT full_name, salary FROM employees WHERE salary > 70000;
```
🔹 Top 5 highest-paid employees:
```sql
SELECT full_name, salary FROM employees ORDER BY salary DESC LIMIT 5;
```
🔹 Average salary by department:
```sql
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
```
🔹 Total salary paid by the company:
```sql
SELECT SUM(salary) AS total_salary FROM employees;
```
🔹 Department-wise employee count:
```sql
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY total_employees DESC;
```
🔹 Total number of employees who left:
```sql
SELECT COUNT(*) AS departed_employees FROM employees WHERE is_active = 0;
```
🔹 Average performance rating by department:
```sql
SELECT department, ROUND(AVG(performance_rating), 2) AS avg_rating
FROM employees
GROUP BY department
ORDER BY avg_rating DESC;
```
🔹 Employees hired before 2018:
```sql
SELECT full_name, hire_date FROM employees
WHERE hire_date < '2018-01-01';
```
🔹 Active vs Inactive employee count by department:
```sql
SELECT department,
       SUM(CASE WHEN is_active = 1 THEN 1 ELSE 0 END) AS active_employees,
       SUM(CASE WHEN is_active = 0 THEN 1 ELSE 0 END) AS inactive_employees
FROM employees
GROUP BY department;
```
📊 Findings
Salary Insights: Top earners are mostly in Engineering and Management.

Workforce Composition: Engineering and Marketing have the largest teams.

Attrition: Notable portion of employees have become inactive.

Performance: Certain departments show higher average ratings consistently.

📋 Reports
Salary Report: Overview of top earners and average salary per department.

Attrition Report: Analysis of employees who have left.

Performance Metrics: Department-level performance breakdown.

Tenure Report: List of long-serving employees.

✅ Conclusion
This HR analytics project provides foundational SQL experience with real-world HR datasets. It highlights how simple queries can lead to powerful business insights in workforce planning, retention strategies, and compensation benchmarking.

🚀 How to Use
Clone the Repository:


git clone https://github.com/anand-py/HR_Analysis.git
Set Up Database:
Run the SQL scripts to create and populate the hr_analytics database.

Run Queries:
Execute queries from the analysis_queries.sql file using your SQL client.

Customize:
Explore and modify queries for deeper insights or additional KPIs.
