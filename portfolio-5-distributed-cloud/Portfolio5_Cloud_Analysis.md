# Portfolio 5: Cloud Database Analysis

## 1. Purpose

This analysis evaluates how distributed database and cloud computing concepts could support the University Student Result Portal.

## 2. Proposed Design Decisions

**Primary database:** The primary database stores authoritative student, course, registration, semester, and result records.

**Replica database:** A replica can support selected read operations and improve availability. Replication must be configured to maintain appropriate data consistency.

**Cloud backup storage:** Scheduled backups provide a recovery option if the primary database fails or data is accidentally lost.

**Application server:** The application server validates requests and enforces role-based permissions before changes are made to academic records.

## 3. Benefits

- Improved availability when replication and failover are configured correctly.
- Flexible capacity as the number of students and academic records increases.
- Better recovery options through tested backups.
- Centralised monitoring and security management.

## 4. Risks and Mitigation

| Risk | Proposed mitigation |
|---|---|
| Network failure | Monitor connectivity and plan recovery procedures. |
| Unauthorised access | Apply role-based access control and secure connections. |
| Data loss | Maintain scheduled backups and test restoration. |
| Replication delay | Monitor replication health and define consistency requirements. |
| Unexpected cloud costs | Set budgets, monitor resource use, and review capacity. |

## 5. Limitations

The architecture is conceptual. No cloud provider or managed database was configured, and no live replication, failover, backup restoration, or performance test was performed. Therefore, the benefits are expected outcomes rather than measured results.

## 6. Conclusion

A carefully configured cloud and distributed database design could improve the portal's scalability, availability, and recovery capabilities. Security, consistency, cost control, and recovery testing would remain essential.
