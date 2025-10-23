SET IDENTITY_INSERT Departments off;
SET IDENTITY_INSERT Students off;
SET IDENTITY_INSERT instructors off;

INSERT INTO Departments (department_id, department_name, department_code, building, budget) 
VALUES 
(1, 'Computer Science', 'CS', 'Tech Building', 500000),
(2, 'Mathematics', 'MATH', 'Science Wing', 300000),
(3, 'Physics', 'PHY', 'Science Wing', 350000),
(4, 'Business Administration', 'BUS', 'Commerce Building', 450000),
(5, 'Electrical Engineering', 'EE', 'Engineering Block', 400000),
(6, 'Biology', 'BIO', 'Science Wing', 320000),
(7, 'Chemistry', 'CHEM', 'Lab Building', 380000),
(8, 'Psychology', 'PSY', 'Social Sciences', 280000),
(9, 'Economics', 'ECON', 'Commerce Building', 290000),
(10, 'English Literature', 'ENG', 'Arts Building', 250000);

INSERT INTO Students (student_id, first_name, last_name, email, date_of_birth, major, enrollment_date, phone, address)
VALUES 
(1, 'John', 'Smith', 'john.smith@uni.edu', '2000-05-15', 'Computer Science', '2022-08-20', '555-0101', '123 Main St'),
(2, 'Sarah', 'Johnson', 'sarah.j@uni.edu', '2001-02-28', 'Mathematics', '2022-08-22', '555-0102', '456 Oak Ave'),
(3, 'Michael', 'Brown', 'm.brown@uni.edu', '1999-11-10', 'Physics', '2021-08-15', '555-0103', '789 Pine Rd'),
(4, 'Emily', 'Davis', 'emily.d@uni.edu', '2000-07-22', 'Business Administration', '2022-08-25', '555-0104', '321 Elm St'),
(5, 'David', 'Wilson', 'd.wilson@uni.edu', '2001-03-18', 'Electrical Engineering', '2023-01-10', '555-0105', '654 Maple Dr'),
(6, 'Jessica', 'Miller', 'j.miller@uni.edu', '2000-09-05', 'Biology', '2022-08-18', '555-0106', '987 Cedar Ln'),
(7, 'Daniel', 'Taylor', 'd.taylor@uni.edu', '2001-12-12', 'Chemistry', '2023-01-15', '555-0107', '147 Birch St'),
(8, 'Amanda', 'Anderson', 'a.anderson@uni.edu', '2000-04-30', 'Psychology', '2022-08-28', '555-0108', '258 Walnut Ave'),
(9, 'Christopher', 'Thomas', 'c.thomas@uni.edu', '2001-08-08', 'Economics', '2022-09-01', '555-0109', '369 Spruce Rd'),
(10, 'Jennifer', 'Lee', 'j.lee@uni.edu', '2000-11-25', 'English Literature', '2022-08-30', '555-0110', '741 Oakwood Dr');

INSERT INTO Instructors (instructor_id, first_name, last_name, email, department_id, hire_date, phone, office_location)
VALUES 
(1, 'Robert', 'Williams', 'r.williams@uni.edu', 1, '2015-08-01', '555-0201', 'Tech-201'),
(2, 'Patricia', 'Jones', 'p.jones@uni.edu', 2, '2018-01-15', '555-0202', 'Sci-105'),
(3, 'James', 'Garcia', 'j.garcia@uni.edu', 3, '2016-03-20', '555-0203', 'Sci-108'),
(4, 'Linda', 'Martinez', 'l.martinez@uni.edu', 4, '2019-08-25', '555-0204', 'Com-301'),
(5, 'Charles', 'Rodriguez', 'c.rodriguez@uni.edu', 5, '2017-06-10', '555-0205', 'Eng-205'),
(6, 'Barbara', 'Hernandez', 'b.hernandez@uni.edu', 6, '2020-01-08', '555-0206', 'Sci-112'),
(7, 'Thomas', 'Lopez', 't.lopez@uni.edu', 7, '2014-09-15', '555-0207', 'Lab-305'),
(8, 'Susan', 'Gonzalez', 's.gonzalez@uni.edu', 8, '2018-03-12', '555-0208', 'Soc-201'),
(9, 'Paul', 'Wilson', 'p.wilson@uni.edu', 9, '2019-08-20', '555-0209', 'Com-205'),
(10, 'Karen', 'Anderson', 'k.anderson@uni.edu', 10, '2016-01-30', '555-0210', 'Arts-101');

SET IDENTITY_INSERT courses on;
INSERT INTO Courses (course_id, course_code, course_name, credits, description, department_id, is_active)
VALUES 
(1, 'CS101', 'Introduction to Programming', 3, 'Basic programming concepts', 1, 1),
(2, 'MATH201', 'Calculus I', 4, 'Differential and integral calculus', 2, 1),
(3, 'PHY101', 'General Physics', 4, 'Mechanics and thermodynamics', 3, 1),
(4, 'BUS101', 'Business Fundamentals', 3, 'Introduction to business concepts', 4, 1),
(5, 'EE201', 'Circuit Analysis', 4, 'DC and AC circuit analysis', 5, 1),
(6, 'BIO101', 'Biology I', 4, 'Cell biology and genetics', 6, 1),
(7, 'CHEM101', 'General Chemistry', 4, 'Atomic structure and chemical bonding', 7, 1),
(8, 'PSY101', 'Introduction to Psychology', 3, 'Basic psychological principles', 8, 1),
(9, 'ECON101', 'Principles of Economics', 3, 'Micro and macroeconomics', 9, 1),
(10, 'ENG201', 'English Composition', 3, 'Academic writing and research', 10, 1);
SET IDENTITY_INSERT courses off;

SET IDENTITY_INSERT classes on;
INSERT INTO Classes (class_id, course_id, instructor_id, semester, schedule, room, max_capacity, current_enrollment)
VALUES 
(1, 1, 1, 'Fall 2024', 'Mon/Wed 10:00 AM', 'Tech-101', 30, 0),
(2, 2, 2, 'Fall 2024', 'Tue/Thu 9:00 AM', 'Sci-201', 25, 0),
(3, 3, 3, 'Fall 2024', 'Mon/Wed 2:00 PM', 'Sci-301', 20, 0),
(4, 4, 4, 'Fall 2024', 'Tue/Thu 11:00 AM', 'Com-101', 35, 0),
(5, 5, 5, 'Fall 2024', 'Mon/Wed/Fri 1:00 PM', 'Eng-101', 25, 0),
(6, 6, 6, 'Fall 2024', 'Tue/Thu 3:00 PM', 'Sci-401', 30, 0),
(7, 7, 7, 'Fall 2024', 'Mon/Wed 11:00 AM', 'Lab-201', 20, 0),
(8, 8, 8, 'Fall 2024', 'Tue/Thu 1:00 PM', 'Soc-101', 40, 0),
(9, 9, 9, 'Fall 2024', 'Mon/Wed 3:00 PM', 'Com-201', 35, 0),
(10, 10, 10, 'Fall 2024', 'Tue/Thu 10:00 AM', 'Arts-201', 30, 0);
SET IDENTITY_INSERT classes off;

SET IDENTITY_INSERT Enrollments on;
INSERT INTO Enrollments (enrollment_id, student_id, class_id, enrollment_date, status)
VALUES 
(1, 1, 1, '2024-08-01', 'Active'),
(2, 2, 2, '2024-08-02', 'Active'),
(3, 3, 3, '2024-08-01', 'Active'),
(4, 4, 4, '2024-08-03', 'Active'),
(5, 5, 5, '2024-08-02', 'Active'),
(6, 6, 6, '2024-08-01', 'Active'),
(7, 7, 7, '2024-08-03', 'Active'),
(8, 8, 8, '2024-08-02', 'Active'),
(9, 9, 9, '2024-08-01', 'Active'),
(10, 10, 10, '2024-08-03', 'Active');
SET IDENTITY_INSERT Enrollments off;

SET IDENTITY_INSERT Grades on;
INSERT INTO Grades (grade_id, enrollment_id, letter_grade, points_earned, graded_date, comments)
VALUES 
(1, 1, 'valid', 4.0, '2024-12-15', 'Excellent work'),
(2, 2, 'valid', 3.3, '2024-12-16', 'Good performance'),
(3, 3, 'valid', 3.7, '2024-12-14', 'Very good'),
(4, 4, 'valid', 3.0, '2024-12-17', 'Satisfactory'),
(5, 5, 'valid', 4.0, '2024-12-15', 'Outstanding'),
(6, 6, 'valid', 2.3, '2024-12-16', 'Needs improvement'),
(7, 7, 'valid', 2.7, '2024-12-14', 'Average'),
(8, 8, 'valid', 3.7, '2024-12-17', 'Very good work'),
(9, 9, 'valid', 3.3, '2024-12-15', 'Good effort'),
(10, 10, 'valid', 4.0, '2024-12-16', 'Excellent');
SET IDENTITY_INSERT Grades off;