# Library Management Database System

**Lungelo Ntombela · Victor Daitz Big Data Analytics Program**

SQL Server · 16 Questions · Academic Project

---

## About

This project implements a Library Management Database using Microsoft SQL Server. It covers table creation, data population, queries, stored procedures, views, and subqueries across 16 structured tasks.

The database is named `Library_LungeloNtombela` and models a multi-branch library system with book inventory, customer records, and rental tracking.

---

## Prerequisites

Before running the script, ensure you have the following installed:

- Microsoft SQL Server 2016 or later
- SQL Server Management Studio (SSMS) — recommended, free download from Microsoft
- Alternatively: Azure Data Studio (lightweight cross-platform option)

---

## How to Run

| Step | Action | Details |
|------|--------|---------|
| 1 | Open SSMS | Launch SQL Server Management Studio and connect to your SQL Server instance using Windows or SQL Server Authentication. |
| 2 | Open the file | Go to File > Open > File and select `Library_SQL.sql` from your project folder. |
| 3 | Execute | Press F5 or click the Execute button. The script will automatically create the database, all tables, and insert all data. |
| 4 | Verify | In the Object Explorer panel, expand Databases > Library_LungeloNtombela to confirm all tables were created. |
| 5 | Run procedures | To test stored procedures individually, use the EXEC commands shown in the Usage section below. |

---

## Usage

### Switch to the database

```sql
USE Library_LungeloNtombela;
```

### View all tables

```sql
SELECT * FROM Branch;
SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM IssueStatus;
SELECT * FROM ReturnStatus;
```

### Run stored procedures

Branch employee count (branches with more than 3 staff):
```sql
EXEC BranchEmpCount;
```

Books issued with customer names:
```sql
EXEC TheBooksIssued;
```

Customers who returned books in June 2023:
```sql
EXEC Customers_June;
```

Update a book's status to available by ISBN:
```sql
EXEC UpdatedBookStatus '978-0-09-957807-9';
```

### Query the views

All books currently available for rental:
```sql
SELECT * FROM TheAvailableBooks;
```

Customers registered before 2022 who have not been issued any books:
```sql
SELECT * FROM Customers_no_Books;
```

---

## Database Schema

| Table | Primary Key | Description |
|-------|-------------|-------------|
| Branch | Branch_no | Library branch locations and their managers |
| Employee | Emp_id | Staff records linked to branches via foreign key |
| Customer | Customer_Id | Registered library members and registration dates |
| Books | ISBN | Book inventory with category, pricing, and availability status |
| IssueStatus | Issue_Id | Records of books issued to customers |
| ReturnStatus | Return_id | Records of books returned by customers |

---

## File Structure

```
library-management-db/
├── Library_SQL.sql                          -- Full SQL script
├── Library_Management_Database_System.pdf   -- Assignment brief
└── README.md                                -- This file
```

---

*Lungelo Ntombela · Victor Daitz Big Data Analytics Program*
