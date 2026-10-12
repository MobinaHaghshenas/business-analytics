# Relational Database

## Purpose

The database models the core records and cross-functional relationships needed to represent purchasing, production, warehousing, sales, workforce administration, training, and accounting within the industrial organization.

## Main script — `manufacturing-operations-database.sql`

This is the primary, human-readable SQL script in the repository. It defines 17 tables and includes sample records and `SELECT` statements for inspecting the populated tables.

### Data domains

| Domain | Tables / concepts represented |
|---|---|
| Materials and products | `tbl_Primarysubstance`, `tbl_ManufacturedProduction` |
| External parties | `tbl_Supplyer`, `tbl_consumer`, `tbl_buyer`, `tbl_Contractor` |
| Workforce and organization | `tbl_employee`, `tbl_jobdep`, `tbl_Training`, `tbl_Course` |
| Inventory and material flow | `tbl_warehouse`, `tbl_Consumption` |
| Purchasing and finance | `tbl_Phurchse`, `tbl_accounting`, `tbl_factor`, `tbl_sales` |
| Production | `tbl_Production` |

The schema uses identity-based primary keys and foreign-key references to connect operational records—for example, production records to materials, products, employees, and job/department assignments; warehouse records to materials and products; and sales records to buyers, invoices/factors, and warehouse entries.

### Running and reviewing the script

Use a SQL Server environment. Review the table definitions and foreign-key dependencies, then execute the script in a development or test database. The sample data and trailing inspection queries are useful for understanding the intended relationships and checking the resulting records.

The script represents the project’s database implementation; before using it as a deployment script, validate SQL syntax, creation order, data types, and referential integrity. In particular, some table definitions contain trailing commas and the sample production data includes a material ID that is not present in the sample material records.

## Schema export — `manufacturing-operations-schema-export.sql`

This file is a SQL Server-generated schema export for a database named `EX3`. It is retained as a separate schema snapshot/reference, not as an additional step after the main script. It includes SQL Server environment-specific configuration, so local database file paths and generated settings may need adaptation before reuse.

## SQL Server workspace — `ex3.ssmssln`

This is a SQL Server Management Studio solution file associated with the original database workspace. It is not itself a database definition or a replacement for either SQL script.
