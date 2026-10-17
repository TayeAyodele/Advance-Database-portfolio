-- Portfolio 3: Transactions and Concurrency
-- University Student Result Portal
-- Database: SQLite

-- Test 1: Begin a transaction and update a student's result.
BEGIN TRANSACTION;

UPDATE Result
SET Score = 80,
    Grade = 'A',
    GradePoint = 5.0,
    Remark = 'Excellent'
WHERE RegistrationID = 1;

-- Check the temporary result within the transaction.
SELECT RegistrationID, Score, Grade, GradePoint, Remark
FROM Result
WHERE RegistrationID = 1;

-- Undo the change to preserve the original result.
ROLLBACK;

-- Test 2: Confirm that the original result remains unchanged.
SELECT RegistrationID, Score, Grade, GradePoint, Remark
FROM Result
WHERE RegistrationID = 1;

-- Test 3: Demonstrate a committed transaction.
BEGIN TRANSACTION;

UPDATE Result
SET Remark = 'Transaction committed successfully'
WHERE RegistrationID = 1;

COMMIT;

-- Verify the committed change.
SELECT RegistrationID, Score, Grade, GradePoint, Remark
FROM Result
WHERE RegistrationID = 1;

-- Restore the original remark after verifying COMMIT.
BEGIN TRANSACTION;

UPDATE Result
SET Remark = 'Excellent'
WHERE RegistrationID = 1;

COMMIT;
