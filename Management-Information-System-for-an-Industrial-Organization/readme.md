# Management Information System for an Industrial Organization

This project brings together process models, a SQL Server database script, and a Power BI dashboard for an industrial/manufacturing organization.

## Project components

- **Process modeling** — Visual Paradigm (.vpp) models for warehouse management, energy management, production planning and control, financial accounting, product production, human resources, maintenance, and quality control.
- **Database** — database/manufacturing-operations-database.sql is the main working SQL script, including table definitions and sample records. database/manufacturing-operations-schema-export.sql is a separate SQL Server-generated schema export for the database named EX3; it is retained as a reference, not as a second recommended setup script.
- **Power BI** — The editable .pbix report and its PDF export.
- **SQL exercises** — A separate practice script for DML, joins, and aggregation, kept outside the main database folder.

## Suggested review order

1. Read the process-modeling overview.
2. Review and run the main database script in a test SQL Server database only after checking/fixing its schema and data-integrity issues.
3. Open the Power BI report and compare its fields and measures with the database.

## Important notes

- The Power BI file is provided as a report artifact; a live connection to the SQL script has not been verified.
- The SQL scripts may require corrections before they execute cleanly. Review table creation order, trailing commas, foreign-key references, and SQL Server-specific settings before use.
- The schema export may contain machine-specific SQL Server file paths. Do not assume those paths exist on another computer.
- The .vpp files require compatible modeling software to open.
