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

Evidence will include SQL scripts, transaction test results, screenshots, and a brief explanation of the findings.

## Conclusion

This portfolio demonstrates how database transactions help maintain data consistency and reliability during database operations.
