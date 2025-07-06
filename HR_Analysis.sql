
-- employees earn more than $70,000

SELECT full_name, salary FROM employees WHERE salary > 70000 ;

-- top 5 highest-paid employees
SELECT full_name, salary FROM employees ORDER BY salary DESC LIMIT 5;

--  average salary by department?
SELECT * FROM departments;
SELECT department ,ROUND(AVG(salary),2) AS avg_salary FROM employees GROUP BY department  ORDER BY avg_salary DESC;

-- total salary

SELECT SUM(salary) AS total_salary FROM employees;


SELECT department, COUNT(*) AS total_employee FROM employees
GROUP BY department ORDER BY total_employee DESC;

--  employees have left the company?
SELECT COUNT(*) AS departed_employees FROM employees WHERE is_active = 0;



