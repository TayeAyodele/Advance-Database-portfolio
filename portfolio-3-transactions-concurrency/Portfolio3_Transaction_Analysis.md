# Portfolio 3: Transaction and Concurrency Analysis

## Overview

This exercise demonstrates transaction processing using SQLite in the University Student Result Portal database.

## Transaction Testing

### 1. ROLLBACK

A transaction temporarily changed the student's score from 75 to 80. The `ROLLBACK` command undid the change. A subsequent query confirmed that the score remained 75.

**Finding:** ROLLBACK reverses uncommitted changes made within a transaction.

### 2. COMMIT

A transaction changed the result remark to `Transaction committed successfully`. The `COMMIT` command completed without errors, and the updated remark was visible in the query results.

**Finding:** COMMIT makes the transaction's changes permanent in the current database session, subject to successful saving of the database file.

### 3. Data Restoration

After the COMMIT test, the original remark was restored to `Excellent`. The final query confirmed that the original result remained:

- Score: 75
- Grade: A
- GradePoint: 5.0
- Remark: Excellent

## Concurrency Discussion

SQLite manages database transactions and coordinates access to the database file. This exercise tested transaction behaviour using one database session. It did not perform a simultaneous multi-user concurrency test, so no claim is made about measured concurrent performance.

## Conclusion

The tests demonstrated the difference between ROLLBACK and COMMIT. ROLLBACK reversed a temporary score update, while COMMIT preserved a remark update. The original result was subsequently restored and verified.
## Isolation and Concurrency Analysis

### Isolation Evidence
The SQLite isolation setting was checked using `PRAGMA read_uncommitted;`, which returned `0`. This confirms that the `read_uncommitted` setting is disabled. The database journal mode was also checked and returned `delete`.

### Concurrency Test and Limitation
A concurrency test was attempted using two DB Browser for SQLite windows connected to the same database file. However, the test was inconclusive because SQLite returned transaction-state and database-lock errors when attempting to start a write transaction. Therefore, the test does not establish a successful concurrent transaction or a confirmed locking outcome.

### Data Integrity Verification
After the test attempts, the `Result` table was queried again. RegistrationID 1 retained its original values: Score 75, Grade A, GradePoint 5.0, and Remark Excellent. This confirmed that the saved result remained unchanged during the checks.

### Reflection
This activity demonstrated the importance of checking isolation settings and verifying stored data after transaction operations. It also showed that concurrency tests must be carefully controlled and their results interpreted accurately. A successful concurrency test remains a limitation of this practical exercise.
## Evidence Files

- `Portfolio3_Transactions.sql`
- `Portfolio3_Rollback_Evidence.png`
- `Portfolio3_Commit_Evidence.png`
- `Portfolio3_Transaction_Analysis.md`
