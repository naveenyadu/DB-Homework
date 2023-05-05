


CREATE TABLE departments (
  dept_id NUMBER(10) PRIMARY KEY,
  dept_name VARCHAR2(50),
  location VARCHAR2(50)
);
DROP TABLE  departments;
CREATE TABLE employees (
  emp_id NUMBER(10) PRIMARY KEY,
  first_name VARCHAR2(50),
  last_name VARCHAR2(50),
  email VARCHAR2(50),
  phone VARCHAR2(20),
  hire_date DATE,
  job_title VARCHAR2(50),
  dept_id NUMBER(10),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salaries (
  salary_id NUMBER(10) PRIMARY KEY,
  emp_id NUMBER(10),
  salary NUMBER(10,2),
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE time_off_requests (
  request_id NUMBER(10) PRIMARY KEY,
  emp_id NUMBER(10),
  start_date DATE,
  end_date DATE,
  status VARCHAR2(20),
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE performance_reviews (
  review_id NUMBER(10) PRIMARY KEY,
  emp_id NUMBER(10),
  review_date DATE,
  rating NUMBER(1),
  comments VARCHAR2(500),
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO departments (dept_id, dept_name, location)
VALUES (1, 'Sales', 'New York');

INSERT INTO departments (dept_id, dept_name, location)
VALUES (2, 'Marketing', 'Chicago');

INSERT INTO departments (dept_id, dept_name, location)
VALUES (3, 'Engineering', 'San Francisco');

INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '555-1234', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Sales Manager', 1);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', '555-2345', TO_DATE('2021-02-01', 'YYYY-MM-DD'), 'Marketing Coordinator', 2);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (3, 'Bob', 'Johnson', 'bobjohnson@example.com', '555-3456', TO_DATE('2021-03-01', 'YYYY-MM-DD'), 'Software Engineer', 3);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (4, 'Alice', 'Lee', 'alicelee@example.com', '555-4567', TO_DATE('2021-04-01', 'YYYY-MM-DD'), 'Marketing Manager', 2);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (5, 'Chris', 'Clark', 'chrisclark@example.com', '555-5678', TO_DATE('2021-05-01', 'YYYY-MM-DD'), 'Sales Representative', 1);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (6, 'David', 'Garcia', 'davidgarcia@example.com', '555-6789', TO_DATE('2021-06-01', 'YYYY-MM-DD'), 'Software Engineer', 3);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (7, 'Emily', 'Davis', 'emilydavis@example.com', '555-7890', TO_DATE('2021-07-01', 'YYYY-MM-DD'), 'Sales Representative', 1);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (8, 'Frank', 'Wilson', 'frankwilson@example.com', '555-8901', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 'Marketing Coordinator', 2);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (9, 'Grace', 'Brown', 'gracebrown@example.com', '555-9012', TO_DATE('2021-09-01', 'YYYY-MM-DD'), 'Software Engineer', 3);
INSERT INTO employees (emp_id, first_name, last_name, email, phone, hire_date, job_title, dept_id)
VALUES (10, 'Henry', 'Taylor', 'henrytaylor@example.com', '555-0123', TO_DATE('2021-10-01', 'YYYY-MM-DD'), 'Sales Representative', 1);

INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (1, 1, 80000.00, to_date('2021-01-01', 'YYYY-MM-DD'), to_date('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (2, 2, 50000.00, to_date('2021-02-01', 'YYYY-MM-DD'), to_date('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (3, 3, 100000.00, to_date('2021-03-01', 'YYYY-MM-DD'), to_date('2022-03-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (4, 4, 70000.00, to_date('2021-04-01', 'YYYY-MM-DD'), to_date('2022-04-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (5, 5, 60000.00, to_date('2021-05-01', 'YYYY-MM-DD'), to_date('2022-05-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (6, 6, 90000.00, to_date('2021-06-01', 'YYYY-MM-DD'), to_date('2022-06-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (7, 7, 55000.00, to_date('2021-07-01', 'YYYY-MM-DD'), to_date('2022-07-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (8, 8, 45000.00, to_date('2021-08-01', 'YYYY-MM-DD'), to_date('2022-08-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (9, 9, 85000.00, to_date('2021-09-01', 'YYYY-MM-DD'), to_date('2022-09-01', 'YYYY-MM-DD'));
INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date)
VALUES (10, 10, 50000.00, to_date('2021-10-01', 'YYYY-MM-DD'), to_date('2022-10-01', 'YYYY-MM-DD'));

INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (1, 1, to_date('2022-01-01', 'YYYY-MM-DD'), to_date('2022-01-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (2, 2, to_date('2022-02-01', 'YYYY-MM-DD'), to_date('2022-02-03', 'YYYY-MM-DD'), 'Approved');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (3, 3, to_date('2022-03-01', 'YYYY-MM-DD'), to_date('2022-03-03', 'YYYY-MM-DD'), 'Denied');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (4, 4, to_date('2022-04-01', 'YYYY-MM-DD'), to_date('2022-04-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (5, 5, to_date('2022-05-01', 'YYYY-MM-DD'), to_date('2022-05-03', 'YYYY-MM-DD'), 'Approved');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (6, 6, to_date('2022-06-01', 'YYYY-MM-DD'), to_date('2022-06-03', 'YYYY-MM-DD'), 'Denied');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (7, 7, to_date('2022-07-01', 'YYYY-MM-DD'), to_date('2022-07-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (8, 8, to_date('2022-08-01', 'YYYY-MM-DD'), to_date('2022-08-03', 'YYYY-MM-DD'), 'Approved');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (9, 9, to_date('2022-09-01', 'YYYY-MM-DD'), to_date('2022-09-03', 'YYYY-MM-DD'), 'Denied');
INSERT INTO time_off_requests (request_id, emp_id, start_date, end_date, status)
VALUES (10, 10, to_date('2022-10-01', 'YYYY-MM-DD'), to_date('2022-10-03', 'YYYY-MM-DD'), 'Pending');

INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (1, 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 4, 'John is a valuable team member and consistently exceeds expectations.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (2, 2, TO_DATE('2022-02-01', 'YYYY-MM-DD'), 3, 'Jane has shown improvement in her performance over the past year.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (3, 3, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 5, 'Mike consistently demonstrates exceptional work and is a strong leader within the department.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (4, 4, TO_DATE('2022-04-01', 'YYYY-MM-DD'), 2, 'Bob has been struggling with meeting deadlines and needs to improve his time management skills.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (5, 5, TO_DATE('2022-05-01', 'YYYY-MM-DD'), 4, 'Sarah is a reliable team member and consistently produces quality work.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (6, 6, TO_DATE('2022-06-01', 'YYYY-MM-DD'), 5, 'David consistently exceeds expectations and is an asset to the team.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (7, 7, TO_DATE('2022-07-01', 'YYYY-MM-DD'), 3, 'Katie has shown improvement in her performance over the past year.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (8, 8, TO_DATE('2022-08-01', 'YYYY-MM-DD'), 2, 'Mark has been struggling to meet expectations and needs to improve his performance.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (9, 9, TO_DATE('2022-09-01', 'YYYY-MM-DD'), 4, 'Lena consistently produces quality work and is a valuable member of the team.');
INSERT INTO performance_reviews (review_id, emp_id, review_date, rating, comments)
VALUES (10, 10, TO_DATE('2022-10-01', 'YYYY-MM-DD'), 5, 'Max is a strong contributor to the team and consistently exceeds expectations.');

SELECT Distinct(d.dept_name), AVG(s.salary) OVER (PARTITION BY d.dept_id) as avg_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id;

SELECT e.first_name, e.last_name, s.salary
FROM (
  SELECT e.*, 
         RANK() OVER (ORDER BY s.salary DESC) as salary_rank,
         s.salary
  FROM employees e
  JOIN salaries s ON e.emp_id = s.emp_id
) s
JOIN employees e ON s.emp_id = e.emp_id
WHERE s.salary_rank <= 3;

SELECT d.dept_name, COUNT(*) OVER (PARTITION BY d.dept_id) as num_employees
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id;

SELECT Distinct(e.job_title), AVG(s.salary) OVER (PARTITION BY e.job_title) as avg_salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id;

SELECT status, COUNT(*) AS num_requests
FROM time_off_requests
GROUP BY status;

SELECT job_title, AVG(rating) AS avg_rating
FROM employees
JOIN performance_reviews ON employees.emp_id = performance_reviews.emp_id
GROUP BY job_title;

SELECT *
FROM (
  SELECT e.*, ROW_NUMBER() OVER (ORDER BY s.salary DESC) AS rn
  FROM employees e
  JOIN salaries s ON e.emp_id = s.emp_id
)
WHERE rn <= 3;

SELECT
  COUNT(CASE WHEN pr.rating >= 4 THEN 1 END) / COUNT(*) * 100 AS percent_high_performers
FROM employees e
LEFT JOIN performance_reviews pr ON e.emp_id = pr.emp_id;

SELECT d.dept_name, e.first_name, e.last_name, s.salary
FROM (
  SELECT dept_id, MAX(salary) AS max_salary
  FROM salaries
  JOIN employees ON salaries.emp_id = employees.emp_id
  GROUP BY dept_id
) ms
JOIN salaries s ON ms.max_salary = s.salary
JOIN employees e ON s.emp_id = e.emp_id
JOIN departments d ON e.dept_id = d.dept_id
AND ms.dept_id = d.dept_id;

SELECT e.first_name, e.last_name, COUNT(*) AS num_time_off_requests
FROM employees e
JOIN time_off_requests tor ON e.emp_id = tor.emp_id
GROUP BY e.first_name, e.last_name;

SELECT d.dept_name, SUM(s.salary) as total_salary
FROM departments d
INNER JOIN employees e ON d.dept_id = e.dept_id
INNER JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY ROLLUP(d.dept_name)
HAVING GROUPING(d.dept_name) = 0





    
SELECT d.dept_name, COUNT(e.emp_id) as num_employees_above_threshold
FROM departments d
INNER JOIN employees e ON d.dept_id = e.dept_id
INNER JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.salary > 50000 -- threshold amount
GROUP BY ROLLUP(d.dept_name)




    
SELECT job_title, dept_name, TO_CHAR(review_date, 'YYYY') AS review_year,
       AVG(rating) AS avg_rating
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN performance_reviews p ON e.emp_id = p.emp_id
GROUP BY CUBE(job_title, dept_name, TO_CHAR(review_date, 'YYYY'))
HAVING GROUPING(job_title) = 0 AND GROUPING(dept_name) = 0 AND GROUPING(TO_CHAR(review_date, 'YYYY')) = 0;






SELECT d.dept_name, COUNT(e.emp_id) AS dept_total_employees
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY ROLLUP(d.dept_name)
ORDER BY d.dept_name NULLS LAST;

SELECT TO_CHAR(hire_date, 'YYYY') as hire_year, COUNT(*) as num_employees
FROM employees
GROUP BY ROLLUP(TO_CHAR(hire_date, 'YYYY'))
ORDER BY hire_year;

SELECT dept_name, job_title, COUNT(*) AS employee_count
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY ROLLUP(dept_name, job_title)
ORDER BY dept_name, job_title;

SELECT TO_CHAR(hire_date, 'YYYY') as hire_year, job_title, COUNT(*) as num_employees
FROM employees
GROUP BY CUBE(TO_CHAR(hire_date, 'YYYY'), job_title)
ORDER BY hire_year, job_title;

SELECT dept_name, SUM(salary) as total_salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY ROLLUP(dept_name)
ORDER BY dept_name;





SELECT d.dept_name, SUM(p.rating) as total_performance_rating
FROM departments d
INNER JOIN employees e ON d.dept_id = e.dept_id
INNER JOIN performance_reviews p ON e.emp_id = p.emp_id
GROUP BY ROLLUP(d.dept_name)

SELECT dept_id, job_title, EXTRACT(YEAR FROM review_date) AS review_year, COUNT(*) AS num_reviews
FROM performance_reviews
JOIN employees ON performance_reviews.emp_id = employees.emp_id
GROUP BY CUBE(dept_id, job_title, EXTRACT(YEAR FROM review_date))
ORDER BY dept_id, job_title, review_year;
