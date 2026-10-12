# Relational Database

## Purpose

This database script represents core records for purchasing, production, warehousing, sales, workforce administration, training, and accounting in an industrial organization.

## Main file — `manufacturing-operations-database.sql`

The repository keeps one SQL script to avoid confusing the project with duplicate or environment-specific exports. The script defines 17 tables and includes sample records and `SELECT` statements for inspecting the data.

### Data domains

| Domain | Tables / concepts represented |
|---|---|
| Materials and products | `tbl_Primarysubstance`, `tbl_ManufacturedProduction` |
| External parties | `tbl_Supplyer`, `tbl_consumer`, `tbl_buyer`, `tbl_Contractor` |
| Workforce and organization | `tbl_employee`, `tbl_jobdep`, `tbl_Training`, `tbl_Course` |
| Inventory and material flow | `tbl_warehouse`, `tbl_Consumption` |
| Purchasing and finance | `tbl_Phurchse`, `tbl_accounting`, `tbl_factor`, `tbl_sales` |
| Production | `tbl_Production` |

The schema uses primary keys and foreign-key references to connect operational records across these areas.


