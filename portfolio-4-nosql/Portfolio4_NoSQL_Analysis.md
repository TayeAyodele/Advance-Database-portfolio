# Portfolio 4: NoSQL and Advanced Data Models Analysis

## Overview

This analysis examines how a document-oriented NoSQL model can represent student information, course registrations, and academic results in the University Student Result Portal.

## Document-Based Data Model

The JSON document contains student details, programme information, academic session, semester, course registration, and result information. Related information is embedded within the same document.

## Comparison Between Relational and NoSQL Models

| Feature | Relational Model (SQLite) | Document Model (JSON) |
|---|---|---|
| Data structure | Tables with rows and columns | Documents with nested fields |
| Relationships | Foreign keys and joins | Embedded documents or references |
| Student and result data | Stored across related tables | Can be grouped in one document |
| Schema | Defined table structures | Flexible document structure |
| Querying | SQL | Depends on the NoSQL database used |

## Advantages of the Document Model

- Related student and result information can be retrieved as one document.
- Nested structures represent relationships between a student, course registration, and result.
- The document can be extended with additional fields when requirements change.

## Limitations

- Embedding repeated information across many documents can lead to duplication.
- Updating shared information may require changes to multiple documents.
- Relationships and data consistency require careful design.
- JSON is a data format; creating a JSON file alone does not demonstrate a running NoSQL database.

## Suitability for the Student Result Portal

A document-oriented model may be useful when student records and their academic results are commonly accessed together. A relational database remains useful when maintaining structured relationships, enforcing foreign-key constraints, and joining data across entities are important.

The appropriate choice depends on the portal's query patterns, consistency requirements, data volume, and operational needs.

## Conclusion

This portfolio demonstrates a sample document-based representation of student result information and
