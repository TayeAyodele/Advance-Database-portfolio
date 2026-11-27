# Portfolio 3: Transactions and Concurrency

## Overview

This portfolio demonstrates database transactions and concurrency control using SQLite in the University Student Result Portal case study.

## Objectives

- Demonstrate the use of `BEGIN`, `COMMIT`, and `ROLLBACK`.
- Understand how transactions maintain database consistency.
- Examine how SQLite handles database transactions.
- Document transaction testing and evidence.

## Activities

The portfolio demonstrates transaction operations using the existing Student Result Portal database. SQL scripts and screenshots provide evidence of the tests performed.

- Checked SQLite's isolation setting using `PRAGMA read_uncommitted;`, which returned `0`.
- Captured the isolation-setting result as `Portfolio3_Isolation_Evidence.png`.


## Evidence Files

The following evidence files document the transaction and concurrency tests performed using the existing Student Result Portal database.

- `Portfolio3_Commit_Evidence.png` – Screenshot of the transaction commit test.
- `Portfolio3_Isolation_Evidence.png` – Screenshot showing the SQLite isolation setting checked using `PRAGMA read_uncommitted;`, which returned `0`.
- `Portfolio3_Rollback_Evidence.png` – Screenshot confirming that the score for RegistrationID 1 returned to its original value of 75 after rollback.
- `Portfolio3_Transaction_Analysis.md` – Transaction analysis and explanation of the test findings.

## Transaction Analysis

The rollback test was performed on the Result table using RegistrationID 1.

After the rollback operation, the query returned the original result values:

- Score: 75
- Grade: A
- GradePoint: 5.0
- Remark: Excellent

This confirmed that the rollback restored the original score and preserved the result record.

The isolation-setting test showed that `PRAGMA read_uncommitted;` returned `0`, indicating that the read-uncommitted setting was disabled in the SQLite database used for the exercise.

## Conclusion

This portfolio demonstrates the use of database transactions to maintain data consistency and reliability. The commit and rollback tests provided practical evidence of transaction operations, while the isolation-setting check helped examine SQLite's transaction isolation behaviour.
