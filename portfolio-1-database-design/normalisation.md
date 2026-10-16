# 3. DATABASE NORMALISATION

Database normalisation is the process of organising data into related tables to reduce unnecessary duplication and improve data integrity.

## 3.1 First Normal Form (1NF)

A table is in First Normal Form (1NF) when each cell contains a single value and there are no repeating groups of data.

In the University Student Result Portal, each student has a separate record, and each field contains a single value. For example, a student's phone number should be stored in a field containing one phone number rather than storing multiple phone numbers in the same cell.

This structure makes the database easier to organise, search, and maintain.

## 3.2 Second Normal Form (2NF)

A table is in Second Normal Form (2NF) when it is already in First Normal Form (1NF) and every non-key attribute depends on the whole primary key, not just part of it.

In the University Student Result Portal, student details are stored in the STUDENT table, while course details are stored in the COURSE table. The COURSE_REGISTRATION table links students to the courses they register for.

The COURSE_REGISTRATION table uses RegistrationID as its primary key. Therefore, its non-key attributes, such as StudentID, CourseID, SemesterID, and RegistrationDate, depend on RegistrationID.

This design helps reduce unnecessary data duplication and ensures that each table stores information about the appropriate entity or relationship.

## 3.3 Third Normal Form (3NF)

A table is in Third Normal Form (3NF) when it is already in Second Normal Form (2NF) and its non-key attributes depend directly on the primary key rather than on other non-key attributes.

In the University Student Result Portal, the STUDENT table stores the ProgramID of each student's programme, while the PROGRAM table stores programme details such as ProgramName, ProgramType, and Duration.

This prevents programme details from being unnecessarily repeated in the STUDENT table and helps maintain data consistency.

Therefore, applying 3NF helps reduce data duplication, minimise update anomalies, and make the database easier to maintain.
