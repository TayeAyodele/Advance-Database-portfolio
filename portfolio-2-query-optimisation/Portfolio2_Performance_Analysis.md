# Portfolio 2: Query Processing and Optimisation

## 1. Introduction
This portfolio demonstrates SQL query processing, execution plan analysis, and indexing using SQLite.

## 2. Query Processing
A SQL query was executed to join the Student, CourseRegistration, Course, Semester, and Result tables. The query successfully returned the student's details, registered course, semester, score, and grade.

## 3. Execution Plan Analysis
The `EXPLAIN QUERY PLAN` statement was used to examine how SQLite processes the five-table join. The execution plan showed a scan of the Result table and primary-key lookups on related tables. This illustrates how SQLite accesses records when processing the join.

## 4. Indexing and Optimisation
Two indexes were created:

- `idx_registration_student` on `CourseRegistration(StudentID)`
- `idx_student_program` on `Student(ProgramID)`

The execution plans for the corresponding filtered queries showed that SQLite used these indexes to search for records. The plans changed from table scans to indexed searches for the Student query, demonstrating the role of indexes in query optimisation.

## 5. Performance Analysis
Indexes can reduce the amount of data SQLite needs to examine when searching on indexed columns, particularly as tables grow. In this practical exercise, the execution plans confirmed index usage. However, no formal timing benchmark was performed, so a numerical improvement in execution speed cannot be claimed. The optimiser did not use the registration index for the five-table join, indicating that index usefulness depends on the query and the chosen execution plan.

## 6. Conclusion
The practical exercise demonstrated SQL joins, execution plan inspection, and index usage in SQLite. The results show how execution plans can help assess query behaviour and guide database optimisation decisions.
