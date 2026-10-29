
CREATE DATABASE IF NOT EXISTS StudentDatabase;
USE StudentDatabase;

CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    Mobile VARCHAR(20),
    City VARCHAR(80)
);

-- CREATE: Insert sample records
INSERT INTO Students
    (StudentName, Email, Mobile, City)
VALUES
    ('Aarav Patel', 'aarav.patel@example.com',
     '9876543210', 'Ahmedabad'),
    ('Diya Shah', 'diya.shah@example.com',
     '9876543211', 'Anand'),
    ('Rohan Mehta', 'rohan.mehta@example.com',
     '9876543212', 'Vadodara');

-- READ: Display all students
SELECT * FROM Students;

-- READ: Search by ID
SELECT * FROM Students
WHERE StudentID = 1;

-- UPDATE: Change a student's city
UPDATE Students
SET City = 'Surat'
WHERE StudentID = 2;

-- Verify the update
SELECT * FROM Students
WHERE StudentID = 2;

-- DELETE: Uncomment these lines to practise deletion
-- DELETE FROM Students WHERE StudentID = 3;
-- SELECT * FROM Students;
