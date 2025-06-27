-- aggregate_queries.sql for Task 4: Aggregate Functions and Grouping

CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary INTEGER,
    age INTEGER
);

INSERT INTO Employee (emp_id, name, department, salary, age) VALUES
(1, 'Amit', 'IT', 60000, 28),
(2, 'Rina', 'HR', 50000, 32),
(3, 'Sam', 'IT', 75000, 25),
(4, 'Maya', 'Finance', 67000, 30),
(5, 'Raj', 'IT', 72000, 29),
(6, 'Sara', 'HR', 52000, 27),
(7, 'Tom', 'Finance', 63000, 33);


-- 1) Total salary in the company
SELECT SUM(salary) AS total_salary FROM Employee;

-- 2) Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department;

-- 3) Count of employees per department
SELECT department, COUNT(*) AS employee_count
FROM Employee
GROUP BY department;

-- 4) Departments with average salary > 60000
SELECT department, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 60000;

-- 5) Highest salary per department
SELECT department, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department;

-- 6) Rounded average age per department
SELECT department, ROUND(AVG(age), 1) AS avg_age
FROM Employee
GROUP BY department;

-- 7) Count of distinct departments
SELECT COUNT(DISTINCT department) AS distinct_departments
FROM Employee;