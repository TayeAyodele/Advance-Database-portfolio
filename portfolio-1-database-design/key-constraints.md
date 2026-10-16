### 2.1 Primary Keys (PKs)

- **STUDENT:** StudentID
- **DEPARTMENT:** DepartmentID
- **PROGRAM:** ProgramID
- **COURSE:** CourseID
- **LECTURER:** LecturerID
- **CourseLecturer:** CourseLecturerID
- **COURSE_REGISTRATION:** RegistrationID
- **RESULT:** ResultID
- **SEMESTER:** SemesterID

### 2.2 Foreign Keys (FKs)

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
