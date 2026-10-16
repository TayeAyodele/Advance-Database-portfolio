# 2. KEY CONSTRAINTS

## 2.1 Primary Keys (PKs)

- **STUDENT:** StudentID
- **DEPARTMENT:** DepartmentID
- **PROGRAM:** ProgramID
- **COURSE:** CourseID
- **LECTURER:** LecturerID
- **CourseLecturer:** CourseLecturerID
- **COURSE_REGISTRATION:** RegistrationID
- **RESULT:** ResultID
- **SEMESTER:** SemesterID

## 2.2 Foreign Keys (FKs)

1. STUDENT.ProgramID references PROGRAM.ProgramID.
2. PROGRAM.DepartmentID references DEPARTMENT.DepartmentID.
3. COURSE.DepartmentID references DEPARTMENT.DepartmentID.
4. LECTURER.DepartmentID references DEPARTMENT.DepartmentID.
5. CourseLecturer.CourseID references COURSE.CourseID.
6. CourseLecturer.LecturerID references LECTURER.LecturerID.
7. COURSE_REGISTRATION.StudentID references STUDENT.StudentID.
8. COURSE_REGISTRATION.CourseID references COURSE.CourseID.
9. COURSE_REGISTRATION.SemesterID references SEMESTER.SemesterID.
10. RESULT.RegistrationID references COURSE_REGISTRATION.RegistrationID.

## 2.3 Uniqueness Constraints

1. Each primary key must be unique and cannot be NULL.
2. StudentID uniquely identifies each student.
3. DepartmentID uniquely identifies each department.
4. ProgramID uniquely identifies each programme.
5. CourseID uniquely identifies each course.
6. LecturerID uniquely identifies each lecturer.
7. CourseLecturerID uniquely identifies each course-lecturer assignment.
8. RegistrationID uniquely identifies each course registration.
9. ResultID uniquely identifies each result.
10. SemesterID uniquely identifies each semester.
11. Email addresses and CourseCode values should be unique where required by institutional rules.

## 2.4 Referential Integrity Constraints

1. Every foreign key must refer to an existing record in the related table, unless NULL is permitted.
2. A student's ProgramID must exist in the PROGRAM table.
3. The DepartmentID in the PROGRAM, COURSE, and LECTURER tables must exist in the DEPARTMENT table.
4. Every course registration must refer to an existing student, course, and semester.
5. Every result must refer to an existing course registration.
6. Each CourseLecturer record must refer to an existing course and lecturer.
