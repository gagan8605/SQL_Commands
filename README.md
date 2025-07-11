
# 📘 SQL Practice Commands – Basic to Intermediate

This repository contains general SQL commands categorized into **DDL**, **DML**, **DQL**, **DCL**, and **TCL** for hands-on practice and learning.

---

## 🗂️ Database & Table Creation (DDL)

```sql
-- Create and use a database
CREATE DATABASE ddl;
USE ddl;

-- Create a table
CREATE TABLE student (
  name VARCHAR(100),
  roll_no INT,
  address VARCHAR(100),
  email VARCHAR(100)
);

-- View table structure
DESC student;

-- View all records
SELECT * FROM student;
```

---

## 📥 Insert Data (DML)

```sql
-- Insert single row
INSERT INTO student VALUES ("Gagan", 12, "Pune", "gagan@gmail.com");

-- Insert multiple rows
INSERT INTO student (name, roll_no, address, email)
VALUES 
  ("Ram", 13, "Mumbai", "ram@gmail.com"),
  ("Laxman", 14, "Thane", "laxman@gmail.com");
```

---

## 📊 SELECT, GROUP BY, ORDER BY (DQL)

```sql
-- Group and order
SELECT name, roll_no, COUNT(*)
FROM student
WHERE roll_no >= 13
GROUP BY name, roll_no
ORDER BY name ASC;
```

---

## ❌ DELETE Data (DML)

```sql
-- Delete specific student
DELETE FROM student WHERE roll_no = 15;
```

---

## 🛠️ ALTER, DROP, TRUNCATE (DDL - DRCAT)

```sql
-- Create table to demo DROP
CREATE TABLE Teachers (
  teacher_name VARCHAR(100),
  Dept VARCHAR(100),
  address VARCHAR(100)
);

-- Rename table
ALTER TABLE student RENAME TO student_info;

-- Rename column
ALTER TABLE student_info RENAME COLUMN name TO stud_name;

-- Add new column
ALTER TABLE student_info ADD marks FLOAT;

-- Modify column data type
ALTER TABLE student_info MODIFY COLUMN marks INT;

-- Drop table
DROP TABLE Teachers;

-- Truncate table (removes all rows)
TRUNCATE TABLE student_info;

-- Check structure and data
DESC student_info;
SELECT * FROM student_info;
```

---

## 📝 More INSERT/UPDATE/DELETE (DML - SUDI)

```sql
-- Insert with all columns
INSERT INTO student_info (stud_name, roll_no, address, email, marks)
VALUES 
  ("Ram", 13, "Mumbai", "ram@gmail.com", 86),
  ("Laxman", 14, "Thane", "laxman@gmail.com", 96);

-- Update specific fields
UPDATE student_info SET marks = 99 WHERE roll_no = 13;

-- Update multiple fields
UPDATE student_info SET marks = 100, email = "lucky@gmail.com" WHERE roll_no = 14;

-- Insert another row
INSERT INTO student_info VALUES ("Hanuman Dada", 5, "India", "sri@gmail.com", 89);

-- Delete specific record
DELETE FROM student_info WHERE roll_no = 14 AND stud_name = "Laxman";
```

---

## 🔍 Data Query Language (DQL)

```sql
-- Count total rows
SELECT COUNT(*) FROM student_info;

-- Count and average grouped by marks
SELECT COUNT(*), AVG(marks) AS avg_marks
FROM student_info
GROUP BY marks;
```

---

## 🔐 Data Control Language (DCL)

```sql
-- Grant permissions (example, may not work in all environments)
-- GRANT SELECT, UPDATE ON student_info TO 'root';

-- Note: May throw error like:
-- Error Code: 1410. You are not allowed to create a user with GRANT
```

---

## 🔁 Transaction Control Language (TCL)

```sql
-- Begin transaction
BEGIN;

-- Update within transaction
UPDATE student_info SET marks = 86 WHERE stud_name = "Ram";

-- Create a savepoint
SAVEPOINT before_update;

-- Rollback to savepoint
ROLLBACK TO before_update;

-- Commit changes
COMMIT;
```

---

## 📌 Notes

* `DDL` → Data Definition Language (CREATE, ALTER, DROP, TRUNCATE)
* `DML` → Data Manipulation Language (INSERT, UPDATE, DELETE)
* `DQL` → Data Query Language (SELECT)
* `DCL` → Data Control Language (GRANT, REVOKE)
* `TCL` → Transaction Control Language (COMMIT, ROLLBACK, SAVEPOINT)
