# T-SQL Comprehensive Tutorial

Transact-SQL (T-SQL) is Microsoft's proprietary extension to SQL (Structured Query Language) used to interact with relational databases. This tutorial covers the basics to advanced topics with examples to provide a complete understanding of T-SQL.

---

## 1. **Introduction to T-SQL**
T-SQL extends SQL by adding procedural programming constructs, local variables, error handling, and more.

### Example
```sql
SELECT 'Hello, T-SQL!';
```
---

## 2. **T-SQL Basics**

### 2.1 SELECT Statements
Used to retrieve data from a database.
```sql
SELECT * FROM Employees;
SELECT Name, Age FROM Employees WHERE Age > 30;
```

### 2.2 INSERT Statements
Used to insert data into a table.
```sql
INSERT INTO Employees (Name, Age, Department)
VALUES ('John Doe', 29, 'HR');
```

### 2.3 UPDATE Statements
Modify existing records in a table.
```sql
UPDATE Employees
SET Age = 30
WHERE Name = 'John Doe';
```

### 2.4 DELETE Statements
Remove records from a table.
```sql
DELETE FROM Employees
WHERE Name = 'John Doe';
```
---

## 3. **Data Types in T-SQL**
### Common Data Types
- `INT`: Integer
- `VARCHAR(n)`: Variable-length string
- `DATE`: Date
- `DECIMAL(p, s)`: Fixed-point number
- `BIT`: Boolean

### Example
```sql
CREATE TABLE SampleTable (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2),
    IsActive BIT
);
```
---

## 4. **Advanced T-SQL Features**

### 4.1 Stored Procedures
Reusable SQL code encapsulated as a stored procedure.
```sql
CREATE PROCEDURE GetEmployeesByAge
    @Age INT
AS
BEGIN
    SELECT * FROM Employees WHERE Age > @Age;
END;

EXEC GetEmployeesByAge 30;
```

### 4.2 Functions
Custom functions that return values.
```sql
CREATE FUNCTION CalculateBonus(@Salary DECIMAL)
RETURNS DECIMAL
AS
BEGIN
    RETURN @Salary * 0.10;
END;

SELECT dbo.CalculateBonus(5000);
```

### 4.3 Transactions
Ensure data integrity by grouping SQL commands.
```sql
BEGIN TRANSACTION;
UPDATE Employees SET Salary = Salary + 1000 WHERE Department = 'IT';
COMMIT;
```

### 4.4 Error Handling
Using `TRY...CATCH` for error handling.
```sql
BEGIN TRY
    INSERT INTO Employees (Name, Age) VALUES ('Jane', NULL);
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH;
```
---

## 5. **Working with Joins**

### 5.1 Inner Join
```sql
SELECT e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.ID;
```

### 5.2 Left Join
```sql
SELECT e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.ID;
```

### 5.3 Cross Join
```sql
SELECT *
FROM Employees
CROSS JOIN Departments;
```
---

## 6. **Common Table Expressions (CTEs)**
Simplify complex queries by creating temporary result sets.
```sql
WITH CTE_Employees AS (
    SELECT Name, Salary FROM Employees WHERE Salary > 50000
)
SELECT * FROM CTE_Employees;
```
---

## 7. **Window Functions**
Perform calculations across a set of table rows.
```sql
SELECT Name, Salary, RANK() OVER (ORDER BY Salary DESC) AS Rank
FROM Employees;
```
---

## 8. **Indexes**

### 8.1 Creating Indexes
```sql
CREATE INDEX idx_DepartmentID ON Employees(DepartmentID);
```

### 8.2 Dropping Indexes
```sql
DROP INDEX idx_DepartmentID ON Employees;
```
---

## 9. **Triggers**
Automatically execute SQL code in response to certain events.
```sql
CREATE TRIGGER trg_AfterInsert ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'A new employee has been added.';
END;
```
---

## 10. **Dynamic SQL**
Execute SQL dynamically.
```sql
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT * FROM Employees WHERE Age > ' + CAST(30 AS NVARCHAR);
EXEC sp_executesql @sql;
```
---

## 11. **Performance Optimization**

### 11.1 Query Execution Plan
Analyze performance using query plans.
```sql
SET STATISTICS IO ON;
SELECT * FROM Employees;
SET STATISTICS IO OFF;
```

### 11.2 Using Indexes
Optimize read operations by creating appropriate indexes.

---

## Conclusion
T-SQL is a powerful extension of SQL, and this tutorial provides a foundation for working with databases efficiently. By mastering the basics and advanced features, you can harness the full potential of Microsoft SQL Server.

