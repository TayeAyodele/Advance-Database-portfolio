
-- Portfolio 2: Query Processing and Optimisation

-- Query 1: Retrieve student, course, semester and result details
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseCode,
    c.CourseTittle,
    sem.AcademicSession,
    sem.SemesterName,
    r.Score,
    r.Grade
FROM Student AS s
JOIN CourseRegistration AS cr
    ON s.StudentID = cr.StudentID
JOIN Course AS c
    ON cr.CourseID = c.CourseID
JOIN Semester AS sem
    ON cr.SemesterID = sem.SemesterID
JOIN Result AS r
    ON cr.RegistrationID = r.RegistrationID;

-- Query 2: Execution plan for the five-table join
EXPLAIN QUERY PLAN
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseCode,
    c.CourseTittle,
    sem.AcademicSession,
    sem.SemesterName,
    r.Score,
    r.Grade
FROM Student AS s
JOIN CourseRegistration AS cr
    ON s.StudentID = cr.StudentID
JOIN Course AS c
    ON cr.CourseID = c.CourseID
JOIN Semester AS sem
    ON cr.SemesterID = sem.SemesterID
JOIN Result AS r
    ON cr.RegistrationID = r.RegistrationID;

-- Query 3: Find registrations for a student
EXPLAIN QUERY PLAN
SELECT *
FROM CourseRegistration
WHERE StudentID = 1;

-- Query 4: Find students in a program
EXPLAIN QUERY PLAN
SELECT StudentID, FirstName, LastName
FROM Student
WHERE ProgramID = 1; 
