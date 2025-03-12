-- Database oluşturulması
CREATE DATABASE pmdb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE pmdb;

-- DEPARTMENT tablosu
CREATE TABLE department (
    dname VARCHAR(50) NOT NULL,
    dnumber INT NOT NULL PRIMARY KEY,
    mgr_ssn CHAR(9) NOT NULL,
    mgr_start_date DATE
);

-- DEPENDENT tablosu
CREATE TABLE dependent (
    essn CHAR(9) NOT NULL,
    dependent_name VARCHAR(50) NOT NULL,
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    bdate DATE NOT NULL,
    relationship VARCHAR(50),
    PRIMARY KEY (essn, dependent_name)
);

-- DEPT_LOCATIONS tablosu
CREATE TABLE dept_locations (
    dnumber INT NOT NULL,
    dlocation VARCHAR(50) NOT NULL,
    PRIMARY KEY (dnumber, dlocation)
);

-- EMPLOYEE tablosu
CREATE TABLE employee (
    fname VARCHAR(50) NOT NULL,
    minit CHAR(1),
    lname VARCHAR(50) NOT NULL,
    ssn CHAR(9) NOT NULL PRIMARY KEY,
    bdate DATE,
    address VARCHAR(255),
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    salary DECIMAL(10,2),
    super_ssn CHAR(9),
    dno INT NOT NULL
);

-- PROJECT tablosu
CREATE TABLE project (
    pname VARCHAR(50) NOT NULL,
    pnumber INT NOT NULL PRIMARY KEY,
    plocation VARCHAR(50),
    dnum INT NOT NULL
);

-- WORKS_ON tablosu
CREATE TABLE works_on (
    essn CHAR(9) NOT NULL,
    pno INT NOT NULL,
    hours DECIMAL(5,2),
    PRIMARY KEY (essn, pno)
);

-- ALTER TABLE ile Foreign Key Kısıtlamalarının Eklenmesi

-- EMPLOYEE tablosuna FOREIGN KEY ekleme
ALTER TABLE employee
ADD CONSTRAINT fk_supervisor FOREIGN KEY (super_ssn) REFERENCES employee(ssn);

ALTER TABLE employee
ADD CONSTRAINT fk_department FOREIGN KEY (dno) REFERENCES department(dnumber);

-- DEPARTMENT tablosuna FOREIGN KEY ekleme
ALTER TABLE department
ADD CONSTRAINT fk_manager FOREIGN KEY (mgr_ssn) REFERENCES employee(ssn);

-- DEPENDENT tablosuna FOREIGN KEY ekleme
ALTER TABLE dependent
ADD CONSTRAINT fk_employee FOREIGN KEY (essn) REFERENCES employee(ssn);

-- DEPT_LOCATIONS tablosuna FOREIGN KEY ekleme
ALTER TABLE dept_locations
ADD CONSTRAINT fk_dept FOREIGN KEY (dnumber) REFERENCES department(dnumber);

-- PROJECT tablosuna FOREIGN KEY ekleme
ALTER TABLE project
ADD CONSTRAINT fk_project_department FOREIGN KEY (dnum) REFERENCES department(dnumber);

-- WORKS_ON tablosuna FOREIGN KEY ekleme
ALTER TABLE works_on
ADD CONSTRAINT fk_works_on_employee FOREIGN KEY (essn) REFERENCES employee(ssn);

ALTER TABLE works_on
ADD CONSTRAINT fk_works_on_project FOREIGN KEY (pno) REFERENCES project(pnumber);

SET FOREIGN_KEY_CHECKS = 0;

-- EMPLOYEE tablosuna veri ekleme
INSERT INTO employee (fname, minit, lname, ssn, bdate, address, sex, salary, super_ssn, dno)
VALUES
('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5),
('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, '888665555', 5),
('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, '987654321', 4),
('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '888665555', 4),
('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5),
('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, '987654321', 4),
('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);

-- DEPARTMENT tablosuna veri ekleme
INSERT INTO department (dname, dnumber, mgr_ssn, mgr_start_date)
VALUES
('Research', 5, '333445555', '1988-05-22'),
('Administration', 4, '987654321', '1995-01-01'),
('Headquarters', 1, '888665555', '1981-06-19');

-- DEPT_LOCATIONS tablosuna veri ekleme
INSERT INTO dept_locations (dnumber, dlocation)
VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Sugarland'),
(5, 'Houston');

-- PROJECT tablosuna veri ekleme
INSERT INTO project (pname, pnumber, plocation, dnum)
VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- WORKS_ON tablosuna veri ekleme
INSERT INTO works_on (essn, pno, hours)
VALUES
('123456789', 1, 32.5),
('123456789', 2, 7.5),
('666884444', 3, 40.0),
('453453453', 1, 20.0),
('453453453', 2, 20.0),
('333445555', 2, 10.0),
('333445555', 3, 10.0),
('333445555', 10, 10.0),
('999887777', 30, 30.0),
('987987987', 10, 35.0),
('987987987', 30, 5.0),
('987654321', 30, 20.0),
('888665555', 20, NULL);

-- DEPENDENT tablosuna veri ekleme
INSERT INTO dependent (essn, dependent_name, sex, bdate, relationship)
VALUES
('333445555', 'Alice', 'F', '1986-04-05', 'Daughter'),
('333445555', 'Theodore', 'M', '1983-10-25', 'Son'),
('333445555', 'Joy', 'F', '1958-05-03', 'Spouse'),
('987654321', 'Abner', 'M', '1942-02-28', 'Spouse'),
('123456789', 'Michael', 'M', '1988-01-04', 'Son'),
('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');


-- a. For each department whose average employee salary is more than 
-- $30,000, retrieve the department name and the number of employees 
-- working for that department.

Select department.dname, Count(employee.ssn) as employees
From department 
Join employee On department.dnumber = employee.dno
Group By department.dnumber
Having  AVG(employee.salary) > 30000;



-- Suppose that we want the number of male employees in each department 
-- making more than $30,000, rather than all employees (as in Exer- 
-- cise 7.5a). Can we specify this query in SQL? Why or why not?

Select department.dname, Count(employee.ssn) as employees
From department 
Join employee On department.dnumber = employee.dno
Where employee.salary > 30000 AND employee.sex = "M"
Group by  department.dname;



-- Retrieve the names of all employees who work in the department that has 
-- the employee with the highest salary among all employees.

Select employee.fname, employee.lname, dno
From employee
Where 
	dno = ( -- en yüksek maaşlı çalışanın dno'su
		SELECT dno FROM employee
		WHERE 
		salary = ( -- en yüksek maaş
			SELECT MAX(salary) FROM employee
        )
	);
    

   
-- Retrieve the names of all employees whose supervisor’s supervisor has 
-- ‘888665555’ for Ssn.

Select fname, lname, super_ssn
From employee
Where super_ssn in(
	Select ssn
	From employee
	Where super_ssn = "888665555"
);


-- Retrieve the names of employees who make at least $10,000 more than 
-- the employee who is paid the least in the company.


Select employee.fname, employee.lname, employee.salary
From employee
Where salary - 10000 > ( Select MIN(employee.salary) From employee) -- 25000
;


SELECT 
    e.fname AS employee_first_name,
    e.lname AS employee_last_name,
    e.ssn AS employee_ssn,
    COUNT(d.dependent_name) AS number_of_children_under_18,

    CASE 
        WHEN COUNT(d.dependent_name) = 1 THEN e.salary * 0.05
        WHEN COUNT(d.dependent_name) > 1 THEN e.salary * 0.035 * COUNT(d.dependent_name)
        ELSE 0
    END AS total_child_support_amount

FROM 
    employee e
JOIN 
    dependent d
ON 
    e.ssn = d.essn
WHERE 
	d.relationship IN ('Son', 'Daughter')
    -- AND DATE_PART('year', AGE(DATE '2005-12-27', d.bdate)) < 18
    AND e.salary < 35000
GROUP BY 
    e.fname, e.lname, e.ssn, e.salary
ORDER BY 
    e.lname, e.fname;


