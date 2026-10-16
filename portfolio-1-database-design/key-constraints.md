2.KEY CONSTRAINTS

2.1 Primary Keys(PKs)

STUDENT:StudentID DEPARTMENT:
DepartmentID PROGRAMME:ProgrammeID
COURSE:CourseID LECTURER:LecturerID
COURSE_REGISTRATION:RegistrationID
RESULT:ResultID SEMESTER:SemesterID

2.2 Foreign Keys(FKs)

1. STUDENT.ProgrammeID references PROGRAMME.ProgrammeID
2. PROGRAMME.DepartmentID references DEPARTMENT.DepartmentID
3. COURSE.DepartmentIDreferences DEPARTMENT.DepartmentID
4. LECTURER.DepartmentID references DEPARTMENT.DepartmentID
5. COURSE_LECTURER.CourseID references COURSE.CourseID
6. COURSE_LECTURER.LecturerID references LECTURER.LecturerID
7. COURSE_REGISTRATION.StudentID references Student.StudentID
8. COURSE_REGISTRATION.CourseID references COURSE.CourseID
9. COURSE_REGISTRATION.SemesterID references SEMESTER.SemesterID
10.RESULT.RegistrationID refernces COURSE_REGISTRATION.RegistrationID


2.3 Uniqueness Constraints

1. Each Primary Key must be unique and cannot be NULL.
2. StudentID must uniquely identify each student.
3. DepartmentID must uniquely identify each programme.
4. ProgrammeID must uniquely ientify each programme.
5. CourseID must uniquely identify each course.
6. LecturerID must uniquely identify each lecturer.
7. RegistrationID must uniquely identify each course registration.
8. ResultID must uniquely identify each result. 
9. SemesterID must uniquely identify each semester.
10.Email addresses and CourseCode values should be unique wher required by 
the institution rules.

2.4 Referential Integrity Constraints

1. Every foreign key must refer to an existing record in the related table.
2. A student's PregrammeID must exist in the PROGRAMME table.
3. The DepartmentID in the PROGRAMME COURSE, and LECTURER tables mudt exist in
the DEPARTMENT table.
4. Every course registration must refer to an existing student,course, and semester.
5. Every result must refer to an existing course registration.
