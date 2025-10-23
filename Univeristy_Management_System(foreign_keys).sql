alter table Instructors add constraint fk_insructors_department_id foreign key (department_id) references departments(department_id);

alter table courses add constraint fk_courses_department_id foreign key (department_id) references departments(department_id);

alter table classes add constraint fk_classes_course_id foreign key (course_id) references courses(course_id);
alter table classes add constraint fk_classes_instructor_id foreign key (instructor_id) references Instructors(Instructor_id);

ALTER TABLE Enrollments ADD CONSTRAINT FK_Enrollments_Student FOREIGN KEY (student_id) REFERENCES Students(student_id);

ALTER TABLE Enrollments ADD CONSTRAINT FK_Enrollments_Class FOREIGN KEY (class_id) REFERENCES Classes(class_id);

ALTER TABLE Grades ADD CONSTRAINT FK_Grades_Enrollment FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id);