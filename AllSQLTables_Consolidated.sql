CREATE TABLE departments(
    dept_no varchar(30) Primary Key,
    dept_name varchar(30) NOT NULL
);

CREATE TABLE department_employee(
    emp_no int NOT NULL,
    dept_no varchar(30) NOT NULL,
    PRIMARY KEY (emp_no, dept_no), 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);

CREATE TABLE department_manager(
   	dept_no varchar(30) NOT NULL,
	emp_no int NOT NULL,
    PRIMARY KEY (emp_no, dept_no), 
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);

CREATE TABLE employees(
    emp_no int Primary Key,
    emp_title_id varchar(30),
    birth_date date NOT NULL, 
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    sex varchar(30),
    hire_date date NOT NULL
);

CREATE TABLE salaries(
    salary_id SERIAL Primary Key,
    emp_no int NOT NULL,
    salary int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
    title_id varchar(30) Primary Key,
    title varchar(30) NOT NULL
);