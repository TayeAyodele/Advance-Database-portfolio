# RELATIONAL SCHEMA

The relational schema for the University Student Result Portal is presented below. Primary keys (PKs) uniquely identify records, while foreign keys (FKs) establish relationships between tables.

**STUDENT**(StudentID **PK**, FirstName, LastName, DateOfBirth, Gender, Email, Phone, ProgramID **FK**)

**DEPARTMENT**(DepartmentID **PK**, DepartmentName, FacultyName)

**PROGRAM**(ProgramID **PK**, ProgramName, ProgramType, Duration, DepartmentID **FK**)

**COURSE**(CourseID **PK**, CourseCode, CourseTittle, CreditUnit, DepartmentID **FK**)

**LECTURER**(LecturerID **PK**, FirstName, LastName, Email, DepartmentID **FK**)

**CourseLecturer**(CourseLecturerID **PK**, CourseID **FK**, LecturerID **FK**)

**COURSE_REGISTRATION**(RegistrationID **PK**, StudentID **FK**, CourseID **FK**, SemesterID **FK**, RegistrationDate)

**RESULT**(ResultID **PK**, RegistrationID **FK**, Score, Grade, GradePoint, Remark)

**SEMESTER**(SemesterID **PK**, AccademicSession, SemesterName)

## Relationship Summary

1. Each student belongs to a programme.
2. Each programme belongs to a department.
3. Each course belongs to a department.
4. Each lecturer belongs to a department.
5. CourseLecturer links courses with lecturers.
6. Each course registration links a student, a course, and a semester.
7. Each result is associated with a course registration.
