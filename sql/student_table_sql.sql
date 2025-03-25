-- DEPARTMENT tablosu
CREATE TABLE department (
    department_no VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(50),
    address VARCHAR(50)
);

-- STUDENT tablosu
CREATE TABLE student (
    name VARCHAR(50),
    student_number INT PRIMARY KEY,
    class VARCHAR(10),
    department VARCHAR(10),
    FOREIGN KEY (department) REFERENCES department(department_no)
);

-- COURSE tablosu
CREATE TABLE course (
    course_name VARCHAR(100),
    course_number VARCHAR(10) PRIMARY KEY,
    credit_hours INT,
    department VARCHAR(10),
    FOREIGN KEY (department) REFERENCES department(department_no)
);

-- SECTION tablosu
CREATE TABLE section (
    section_identifier INT PRIMARY KEY,
    course_number VARCHAR(10),
    semester VARCHAR(20),
    year INT,
    instructor VARCHAR(50),
    FOREIGN KEY (course_number) REFERENCES course(course_number)
);

-- GRADE_REPORT tablosu
CREATE TABLE grade_report (
    student_number INT,
    section_identifier INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_number, section_identifier),
    FOREIGN KEY (student_number) REFERENCES student(student_number),
    FOREIGN KEY (section_identifier) REFERENCES section(section_identifier)
);

-- PREREQUISITE tablosu
CREATE TABLE prerequisite (
    course_number VARCHAR(10),
    prerequisite_number VARCHAR(10),
    PRIMARY KEY (course_number, prerequisite_number),
    FOREIGN KEY (course_number) REFERENCES course(course_number),
    FOREIGN KEY (prerequisite_number) REFERENCES course(course_number)
);


-- DEPARTMENT tablosuna veri ekleme
INSERT INTO department (department_no, department_name, address)
VALUES
('ARCH', 'Architecture', 'Block B'),
('CS', 'Computer Science', 'Block A'),
('MATH', 'Mathematics', 'Block A');

-- STUDENT tablosuna veri ekleme
INSERT INTO student (name, student_number, class, department)
VALUES
('Alice', 279, 'B101', 'MATH'),
('David', 371, 'A109', 'CS'),
('Susan', 1684, 'A109', 'CS'),
('John', 1704, 'A109', 'ARCH');

-- COURSE tablosuna veri ekleme
INSERT INTO course (course_name, course_number, credit_hours, department)
VALUES
('Intro to Computer Science', 'CS50', 4, 'CS'),
('Data Structures', 'CS221', 4, 'CS'),
('Discrete Mathematics', 'MATH240', 3, 'MATH'),
('Architectural Design', 'ARCH201', 4, 'ARCH');

-- SECTION tablosuna veri ekleme
INSERT INTO section (section_identifier, course_number, semester, year, instructor)
VALUES
(85, 'MATH240', 'Fall', 2007, 'Charlotte'),
(92, 'CS50', 'Fall', 2007, 'Oliver'),
(102, 'CS221', 'Spring', 2008, 'William'),
(117, 'ARCH201', 'Fall', 2008, 'Emily');

-- GRADE_REPORT tablosuna veri ekleme
INSERT INTO grade_report (student_number, section_identifier, grade)
VALUES
(1684, 92, 'AA'),
(1684, 102, 'CB'),
(279, 85, 'BB'),
(1704, 117, 'BA');

-- PREREQUISITE tablosuna veri ekleme
INSERT INTO prerequisite (course_number, prerequisite_number)
VALUES
('CS221', 'CS50'),
('MATH240', 'MATH202'),
('ARCH201', 'ARCH101'),
('CS221', 'CS303');
