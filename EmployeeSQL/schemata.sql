-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Titles (
    emp_title_id varchar   NOT NULL,
    title_name varchar   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        emp_title_id
     )
);

CREATE TABLE Departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments_Manager (
    dept_no varchar   NOT NULL,
    emp_no_manager int   NOT NULL,
    CONSTRAINT pk_Departments_Manager PRIMARY KEY (
        emp_no_manager
     )
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments_Employees (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
    CONSTRAINT pk_Departments_Employees PRIMARY KEY (
        emp_no,dept_no
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (emp_title_id);

ALTER TABLE Departments_Manager ADD CONSTRAINT fk_Departments_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Departments_Manager ADD CONSTRAINT fk_Departments_Manager_emp_no_manager FOREIGN KEY(emp_no_manager)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Departments_Employees ADD CONSTRAINT fk_Departments_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Departments_Employees ADD CONSTRAINT fk_Departments_Employees_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);


