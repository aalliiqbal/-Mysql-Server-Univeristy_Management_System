create database Univeristy_Management_System;

use [Univeristy_Management_System]

create table Students(

student_id INT Primary Key Identity(1,1),
first_name NVARCHAR(50)Not Null,
last_name NVARCHAR(50) Not Null,
email NVARCHAR(100) Unique Not Null,
date_of_birth DATE,
major NVARCHAR(100),
enrollment_date DATE,
phone NVARCHAR(20),
address NVARCHAR(200)

);

ALTER TABLE Students 
ADD CONSTRAINT df_enrollment_date DEFAULT getdate() FOR enrollment_date;

create table instructors(

instructor_id INT Primary Key Identity(1,1),
first_name NVARCHAR(50) Not Null,
last_name NVARCHAR(50) Not Null,
email NVARCHAR(100)  Unique Not Null,
department_id INT,
hire_date DATE,
phone NVARCHAR(20),
office_location NVARCHAR(50)

);

create table departments(

department_id INT Primary Key Identity(1,1),
department_name NVARCHAR(100)  Unique Not Null,
department_code NVARCHAR(10) Unique,
building NVARCHAR(50),
budget DECIMAL(15,2)

);

create table Courses(

course_id INT Primary Key Identity(1,1),
course_code NVARCHAR(20) Unique Not Null,
course_name NVARCHAR(100) Not Null,
credits INT,
description NVARCHAR(500),
department_id INT,
is_active BIT 

);


ALTER TABLE Courses 
ADD CONSTRAINT df_is_active DEFAULT 1 FOR is_active;

aLTER Table courses add constraint ck_credits check (credits > 0 );

create table Classes (

class_id INt Primary Key Identity(1,1),
course_id INT,
instructor_id INT,
semester NVARCHAR(20) Not Null,
schedule NVARCHAR(50),
room NVARCHAR(20),
max_capacity INT,
current_enrollment INT

);


ALTER TABLE classes 
ADD CONSTRAINT df_classes DEFAULT 0 FOR current_enrollment;


aLTER Table classes add constraint ck_classes check (max_capacity > 0 );

create table Enrollments (

enrollment_id INT Primary Key Identity(1,1),
student_id INT,
class_id INT,
enrollment_date DATETIME,
status NVARCHAR(20)

);


ALTER TABLE Enrollments 
ADD CONSTRAINT dfc_enrollment_date DEFAULT getdate() FOR enrollment_date;


ALTER TABLE Enrollments 
ADD CONSTRAINT status DEFAULT 'Active' FOR status;

ALTER TABLE Enrollments
ADD CONSTRAINT uq_student_class_id UNIQUE (student_id,class_id);

create table grades(

grade_id INT Primary Key Identity(1,1),
enrollment_id INT,
letter_grade NVARCHAR(5),
points_earned DECIMAL(4,2),
graded_date DATETIME,
comments NVARCHAR(200)

);

aLTER Table grades add constraint ck_lettergardes check (letter_grade = 'valid');

ALTER TABLE grades
ADD CONSTRAINT uq_enrollment_id UNIQUE (enrollment_id);

