CREATE TABLE TEACHERS(
id INT IDENTITY PRIMARY KEY,
NAME VARCHAR(50),
SUBJECT VARCHAR(50)
)

CREATE TABLE STUDENTS(
id INT IDENTITY PRIMARY KEY,
NAME VARCHAR(50),
AGE INT,
COURSE VARCHAR(50),
GRADE VARCHAR(50),
CLASS_TEACHER INT
)

CREATE TABLE MARKS(
id INT IDENTITY PRIMARY KEY,
STUDENT_ID INT,
TAMIL INT,
ENGLISH INT,
MATHS INT,
SCIENCE INT,
SOCIAL_SCIENCE INT
)

ALTER TABLE STUDENTS
ADD CONSTRAINT FK_ClassTeacher
FOREIGN KEY (CLASS_TEACHER) REFERENCES TEACHERS(id)

ALTER TABLE MARKS
ADD CONSTRAINT FK_StudentId
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(id)