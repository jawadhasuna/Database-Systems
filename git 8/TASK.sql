CREATE DATABASE UNI;
USE UNI;
CREATE TABLE Student (
 RollNo INT PRIMARY KEY,
 Name VARCHAR(255),
 Address VARCHAR(255),
 Phone VARCHAR(15),
 Age INT
 );
 CREATE TABLE StudentCourse(
 CourseID INT PRIMARY KEY,
 RollNo INT,
 FOREIGN KEY(RollNo) REFERENCES Student(RollNo) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE
 );
INSERT INTO Student (RollNo, Name, Address, Phone, Age) VALUES
 (1, 'John Doe', '123 Main St', '123-456-7890', 20),
 (2, 'Jane Smith', '456 Oak St', '987-654-3210', 22),
 (3, 'Alice Johnson', '789 Pine St', '555-123-4567', 21),
 (4, 'Bob Anderson', '567 Elm St', '222-333-4444', 23),
 (5, 'Emily White', '890 Maple St', '777-888-9999', 19),
 (6, 'David Lee', '234 Birch St', '444-555-6666', 20),
 (7, 'Sophia Turner', '678 Cedar St', '111-222-3333', 22),
 (8, 'Michael Brown', '901 Walnut St', '999-888-7777', 21),
 (9, 'Olivia Davis', '345 Redwood St', '666-777-8888', 23),
 (10, 'Daniel Smith', '432 Spruce St', '333-444-5555', 20);
 
INSERT INTO StudentCourse (CourseID, RollNo) VALUES
 (101, 1),
 (102, 2),
 (103, 3),
 (104, 4),
 (105, 5),
 (106, 6),
 (109, 9),
 (110, 10);
 #inner/equi
 SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 FROM Student
 INNER JOIN
 StudentCourse
 ON Student.RollNo=StudentCourse.RollNo;
 #natural
 SELECT *
 FROM Student
 NATURAL JOIN
 StudentCourse;
  #left outer
 SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 FROM Student
 LEFT JOIN
 StudentCourse
 ON Student.RollNo=StudentCourse.RollNo;
 
#RIGHT outer
 SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 FROM Student
 RIGHT JOIN
 StudentCourse
 ON Student.RollNo=StudentCourse.RollNo;
 
 #FULL OUTER NOT SUPPORTED IN MY SQL
 #SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 #FROM Student
 #FULL OUTER JOIN
 #StudentCourse
 #ON Student.RollNo=StudentCourse.RollNo;
 
 #FULL OUTER
 SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 FROM Student
 LEFT JOIN
 StudentCourse
 ON Student.RollNo=StudentCourse.RollNo
 UNION
 SELECT Student.RollNo,Student.Name,Student.Age ,StudentCourse.CourseID
 FROM Student
 RIGHT JOIN
 StudentCourse
 ON Student.RollNo=StudentCourse.RollNo;
 
 #CROSS JOIN
 SELECT Student.Name,Student.Age,StudentCourse.CourseID
 FROM Student
 CROSS JOIN
 StudentCourse;
 
 #self join
 SELECT S1.Name AS STUDENT1 ,S2.Name AS STUDENT2,S1.Age
 FROM Student S1
 JOIN Student S2 
 ON S1.Age=S2.Age AND S1.RollNo<>S2.RollNo;
 
  #self join
 SELECT A.Name AS STUDENT1 ,B.Name AS STUDENT2,A.Age,A.Phone AS NUMB
 FROM Student A
 JOIN Student B 
 ON A.Phone=B.Phone AND A.RollNo<>B.RollNo;
 