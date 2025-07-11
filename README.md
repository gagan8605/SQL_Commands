
# 📘 Structured Query Language (SQL) – Full Reference with Syntax

This guide covers the essential SQL commands used in database development and management. SQL commands are broadly categorized into:

* 🧱 DDL – Data Definition Language
* ✍️ DML – Data Manipulation Language
* 🔍 DQL – Data Query Language
* 🔐 DCL – Data Control Language
* 🔁 TCL – Transaction Control Language

---

## 🧱 1. DDL (Data Definition Language)

DDL commands are used to define or modify the structure of database objects such as tables, schemas, indexes, etc.

| Command    | Description                                               |
| ---------- | --------------------------------------------------------- |
| `CREATE`   | Creates a new database/table/view/etc.                    |
| `ALTER`    | Modifies an existing object structure                     |
| `DROP`     | Deletes an object permanently                             |
| `TRUNCATE` | Removes all records from a table, but keeps the structure |
| `RENAME`   | Renames a table or column (in some databases)             |

### 🔹 Syntax & Examples

```sql
-- Create a new database
CREATE DATABASE db_name;

-- Use a database
USE db_name;

-- Create a new table
CREATE TABLE student (
  name VARCHAR(100),
  roll_no INT,
  address VARCHAR(100),
  email VARCHAR(100)
);

-- Alter table: Add column
ALTER TABLE student ADD marks INT;

-- Alter table: Modify column
ALTER TABLE student MODIFY COLUMN marks FLOAT;

-- Alter table: Rename table
ALTER TABLE student RENAME TO student_info;

-- Alter table: Rename column (MySQL 8+)
ALTER TABLE student_info RENAME COLUMN name TO stud_name;

-- Drop table permanently
DROP TABLE student_info;

-- Truncate table: delete all rows but keep structure
TRUNCATE TABLE student_info;
```

---

## ✍️ 2. DML (Data Manipulation Language)

DML commands are used to manage data within schema objects.

| Command  | Description               |
| -------- | ------------------------- |
| `INSERT` | Adds new records          |
| `UPDATE` | Modifies existing records |
| `DELETE` | Removes records           |

### 🔹 Syntax & Examples

```sql
-- Insert single row
INSERT INTO student (name, roll_no, address, email)
VALUES ("Gagan", 12, "Pune", "gagan@gmail.com");

-- Insert multiple rows
INSERT INTO student (name, roll_no, address, email)
VALUES 
  ("Ram", 13, "Mumbai", "ram@gmail.com"),
  ("Laxman", 14, "Thane", "laxman@gmail.com");

-- Update specific row
UPDATE student SET roll_no = 16 WHERE name = "Ram";

-- Update multiple fields
UPDATE student SET email = "lucky@gmail.com", marks = 100 WHERE roll_no = 14;

-- Delete specific record
DELETE FROM student WHERE roll_no = 15;
```

---

## 🔍 3. DQL (Data Query Language)

DQL is used to retrieve data from the database using the `SELECT` statement.

| Command  | Description                                |
| -------- | ------------------------------------------ |
| `SELECT` | Retrieves data based on specified criteria |

### 🔹 Syntax & Examples

```sql
-- Select all data
SELECT * FROM student;

-- Select specific columns
SELECT name, email FROM student;

-- Conditional retrieval
SELECT * FROM student WHERE roll_no >= 13;

-- Grouping and aggregation
SELECT name, COUNT(*) FROM student
GROUP BY name;

-- Ordering
SELECT * FROM student ORDER BY roll_no DESC;

-- Aggregate functions
SELECT COUNT(*), AVG(marks) FROM student;
```

---

## 🔐 4. DCL (Data Control Language)

DCL commands manage permissions and access control.

| Command  | Description                    |
| -------- | ------------------------------ |
| `GRANT`  | Gives user access privileges   |
| `REVOKE` | Removes user access privileges |

### 🔹 Syntax & Examples

```sql
-- Grant access (depends on DBMS configuration)
GRANT SELECT, INSERT ON student TO 'user_name';

-- Revoke access
REVOKE INSERT ON student FROM 'user_name';
```

⚠️ Note: You must have admin privileges to use GRANT/REVOKE commands. Some setups (like XAMPP/MAMP) might restrict this.

---

## 🔁 5. TCL (Transaction Control Language)

TCL commands manage transactions in the database to ensure data integrity.

| Command                       | Description                                       |
| ----------------------------- | ------------------------------------------------- |
| `COMMIT`                      | Saves all changes made in the current transaction |
| `ROLLBACK`                    | Reverts changes made in the current transaction   |
| `SAVEPOINT`                   | Sets a point to which you can roll back later     |
| `BEGIN` / `START TRANSACTION` | Marks the start of a transaction                  |

### 🔹 Syntax & Examples

```sql
-- Begin transaction
START TRANSACTION;

-- Update inside transaction
UPDATE student SET marks = 90 WHERE roll_no = 12;

-- Set a savepoint
SAVEPOINT before_update;

-- Rollback to savepoint
ROLLBACK TO before_update;

-- Finalize transaction
COMMIT;
```

---

## 🧾 Summary Table

| Category | Commands                              |
| -------- | ------------------------------------- |
| **DDL**  | CREATE, ALTER, DROP, TRUNCATE, RENAME |
| **DML**  | INSERT, UPDATE, DELETE                |
| **DQL**  | SELECT                                |
| **DCL**  | GRANT, REVOKE                         |
| **TCL**  | COMMIT, ROLLBACK, SAVEPOINT, BEGIN    |

---

## 🧠 Tips

* Always use `WHERE` clause with `UPDATE` and `DELETE` to avoid affecting all records.
* Use `DESC table_name;` to check schema.
* Use `LIMIT` clause for faster test queries.
* Use aliases (`AS`) to make result sets more readable.
* Wrap important operations inside transactions when dealing with financial or sensitive data.
