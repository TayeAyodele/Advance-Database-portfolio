# Portfolio 5: Distributed Database Architecture

## 1. Introduction

The University Student Result Portal stores student details, course registrations, semester information, and academic results. A distributed and cloud-based architecture could improve availability, scalability, and access to academic records.

## 2. Proposed Architecture

The proposed system consists of the following components:

- **Users:** Students, lecturers, and authorised administrators access the portal.
- **Web application:** Provides the interface for viewing and managing academic records.
- **Application server:** Processes requests and enforces business rules and access permissions.
- **Primary database:** Stores student, course, registration, semester, and result records.
- **Replica or standby database:** Maintains a copy of selected data to support recovery and availability.
- **Backup storage:** Stores database backups for disaster recovery.

## 3. Data Distribution and Replication

The primary database would handle authorised record changes. A replica could receive copies of committed changes, depending on the replication configuration. Replication can improve availability and support read operations, but replication delays and conflicts must be managed where applicable.

## 4. Cloud Database Benefits

A suitable managed cloud database could provide:

- Flexible storage and computing capacity.
- Managed backups and recovery options.
- Monitoring and maintenance support.
- Access from authorised locations.
- Options for high availability and replication.

## 5. Security and Reliability

The proposed system should use role-based access control, secure connections, encryption, regular backups, monitoring, and tested recovery procedures. Only authorised personnel should be able to modify official student results.

## 6. Challenges

Potential challenges include network interruptions, cloud service costs, data privacy requirements, configuration errors, replication delays, and dependence on the service provider.

## 7. Limitations

This architecture is a design proposal for the portfolio. A cloud database was not deployed, and replication or failover was not tested in a live environment.

## 8. Conclusion

A distributed and cloud-based design could improve the availability and scalability of the University Student Result Portal. Its effectiveness would depend on appropriate database configuration, security controls, backup procedures, and ongoing monitoring.
