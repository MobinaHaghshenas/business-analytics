# Industrial Organization Management Information System

## Project overview

This project models key operational and administrative processes of an industrial organization and brings the work together through a relational database design and a Power BI reporting layer. The portfolio demonstrates how business processes can be documented, represented as data entities and relationships, and explored through management-facing reports.

## Business scope

The process models cover eight functional areas:

- **Energy management** — review of electricity substations and energy consumption, reporting, and escalation when usage remains abnormal.
- **Maintenance and repairs** — equipment inspection, preventive maintenance planning, emergency repair handling, and return-to-production checks.
- **Production planning and control** — review of production notices and raw-material information, planning, collection of operating statistics, and periodic reporting.
- **Product production** — ore inspection and routing through crushing, drying, storage, and production-line decisions.
- **Quality control** — measurement against standards, reinspection where results do not conform, and quality reporting.
- **Human resources** — organizational structure, role responsibilities, recruitment, candidate review, onboarding/training, and employee feedback.
- **Financial accounting** — review and registration of financial documents, payroll and statutory lists, treasury activities, and financial reporting.
- **Warehouse management** — stock verification, shortage escalation and purchasing requests, issuing materials, and updating inventory records.

## Repository structure

| Folder / file | Purpose |
|---|---|
| `process-modeling/` | Eight Visual Paradigm project files documenting the business processes above |
| `database/manufacturing-operations-database.sql` | Main SQL Server script containing table definitions, sample records, and table-inspection queries |
| `database/manufacturing-operations-schema-export.sql` | Separate SQL Server-generated schema export associated with the database name `EX3` |
| `database/ex3.ssmssln` | SQL Server Management Studio solution file |
| `power-bi/manufacturing-operations-dashboard.pbix` | Editable Power BI report |
| `power-bi/manufacturing-operations-dashboard.pdf` | Static PDF version of the report for quick review |

## Data and reporting

The relational model represents operational and supporting entities such as raw materials, manufactured products, suppliers, consumers, buyers, contractors, employees, job/department assignments, accounting, warehouse inventory, consumption, purchasing, production, sales, invoices/factors, and training courses. Foreign-key relationships connect records across these areas.

The Power BI report presents views related to buyers and invoices, workforce composition and salary, production rates, products, and raw-material inventory/consumption. The PBIX is the primary artifact for exploring report pages and visuals; the PDF is a read-only snapshot.

## How to explore the project

1. Start with the process models to understand the operational workflows and decision points.
2. Review the main SQL script to understand the entities, attributes, relationships, and sample data.
3. Open the Power BI report to explore the management views and compare the reported concepts with the database model.

## Implementation context

The repository contains the project artifacts rather than a packaged production deployment. The main SQL script and the generated schema export are separate database artifacts and should not be executed as consecutive setup steps. The Power BI report is included as a report deliverable; a live data connection from the PBIX to the committed SQL script is not established by the repository files alone.
