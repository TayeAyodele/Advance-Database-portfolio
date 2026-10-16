3. DATABASE NORMALISATION

3.1 First Normal Form (1NF)

A table in the First Normal Form (1NF) when each cell contains oly one value and there are no 
repeating groups of data.

In the University Student Result Portal,each student should have a separate record, and each field
should contain a single value . For example, a student's phone number should be stored in one field
rather than storing multiple phone numbers in the same cell.
This makes the database easier to organise,search, and maintain.

3.2 Second Normal Form (2NF)

A table is in Second Normal Form(2NF) when it is already First Normal Form(1NF) and every non-key
attribute depends on the whole primary key.
This means that each non-key attribute must depend on the entire primary key,not just part of it.

In the University Student Result Portal, student details are stored in the STUDENT table, and course
details are stored in the COURSE table. The COURSE_REGISTRATION table links students to the courses 
they register for.

This reduces data duplication and make sure each table stores information about the correct entity.

3.3 Third Normal Form (3NF)

A table in Third Normal Form (3NF) when it is already in. Second Normal Form (2NF) and its non-key attributes
 depend dirrectly on the primary key,not on other non-key attributes.
In the University Student Result Portal,the STUDENT table stores the programmeID of each student, while 
the PROGRAMME table stores the programme details,such as ProgrammeName,ProgrammeType,and Duration.

This prevents programme details from being unecessarily repeated in the STUDENT table and helps maintain
data consistency.

Therefore,applying 3NF reduces data duplication and makes the database easier to maintain.
