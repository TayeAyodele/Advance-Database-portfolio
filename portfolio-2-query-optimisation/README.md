# Portfolio 2: Query Processing and Optimisation

## Overview

This portfolio demonstrates SQL query processing, execution plan analysis, and indexing using SQLite.

## Activities Completed

- Executed a five-table SQL join involving Student, CourseRegistration, Course, Semester, and Result.
- Captured the query results.
- Examined the execution plan using `EXPLAIN QUERY PLAN`.
- Created indexes on `CourseRegistration(StudentID)` and `Student(ProgramID)`.
- Verified index usage through execution plans.
- Documented the performance analysis and optimisation findings.

## Evidence Files

The following evidence files have been uploaded to the repository root:

- `Portfolio2_Query_Processing.sql`
- `Portfolio2_Query_Result.png`
- `Portfolio2_Execution_Plan.png`
- `Portfolio2_Index_Usage.png`
- `Portfolio2_Student_Index_Usage.png`
- `Portfolio2_Performance_Analysis.md`

## Performance Findings

The execution plans confirmed that SQLite used indexes for the corresponding filtered queries. However, no formal timing benchmark was performed, so a numerical improvement in execution speed cannot be claimed.

## Conclusion

This portfolio demonstrates how SQL joins, execution plans, and indexes can be used to understand and optimize database queries.
