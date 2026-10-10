RELATIONAL SCHEMA

STUDENT(StudentID,FirstName,LastName,DateOfBirth,
Gender,Email,Phone,ProgrammeID)

DEPARTMENT(DepartmentID,DepartmentName,FacultyName)

PROGRAMME(ProgrammeID,ProgrammeName,ProgrammeType,
Duration,DepartmentID)

COURSE(CourseID,CourseCode,CourseTittle,CreditUnit,
DepartmentID)

LECTURER(LecturerID,FirstName,LastName,Email,DepartmentID)

COURSE_LECTURER(CourseLecturerID,CourseID,LecturerID)

COURSE_REGISTRATION(RegistrationID,StudentID,CourseID,SemesterID,RegistrationDate)

RESULT(ResultID,RegistrationID,Score,Grade,GradePoint,Remark)

SEMESTER(SemesterID,AccademicSession,SemesterName)

