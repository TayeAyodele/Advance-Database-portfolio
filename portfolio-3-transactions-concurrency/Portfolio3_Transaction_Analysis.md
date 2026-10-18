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

## Evidence Files

- `Portfolio3_Transactions.sql`
- `Portfolio3_Rollback_Evidence.png`
- `Portfolio3_Commit_Evidence.png`
- `Portfolio3_Transaction_Analysis.md`
