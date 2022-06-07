-- 1) Deliverable 1: The Number of Retiring Employees by Title

drop table retirement_titles;

-- Create retirement_titles table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (to_date = '9999-01-01')
ORDER BY emp_no;

-- Create unique_titles table
-- remove duplicates
SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no, to_date DESC;

-- Create retiring_titles table
SELECT COUNT (ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT DESC;


-- view retirement_titles table
SELECT * FROM retirement_titles;

-- view unique_titles table
SELECT * FROM unique_titles;

-- view retiring_titles table
SELECT * FROM retiring_titles;



-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- Create table that current employees who were born between January 1, 1965 and December 31, 1965.
drop table mentorship_eligibility;

SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- view mentorship_eligibility table
SELECT * FROM mentorship_eligibility;