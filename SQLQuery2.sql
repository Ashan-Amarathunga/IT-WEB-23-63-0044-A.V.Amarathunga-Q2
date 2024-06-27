--  Course Table
CREATE TABLE course (
    CourseID varchar(100),
    Name varchar(200),
    LecturerName varchar(200),
    CONSTRAINT Course_PK1 PRIMARY KEY (CourseID)
);

--  Student Table
CREATE TABLE student (
    StudentID varchar(100),
    StudentName varchar(200),
    city varchar(100),
    CourseID varchar(100),
    CONSTRAINT student_PK1 PRIMARY KEY (StudentID),
    CONSTRAINT Course_FK1 FOREIGN KEY (CourseID) REFERENCES Course (CourseID)
);

INSERT INTO course VALUES ( '1', 'web devolopment', 'M.M. Herath')
INSERT INTO course VALUES ( '2', 'Graphic design', 'J.S.V. priyasena')
INSERT INTO course VALUES ( '3', 'Mobile App devolpment', 'K.K.K. Dias')
INSERT INTO course VALUES ( '4', 'Java', 'U.H.S. Perera')


INSERT INTO student VALUES ( '1', 'Kasun Gamage', 'Kandy','2')
INSERT INTO student VALUES ( '2', 'Daniel Sam', 'jaffna','3')
INSERT INTO student VALUES ( '3', 'Hansi silva', 'colombo','1')
INSERT INTO student VALUES ( '4', 'Ranidu herath', 'matara','3')
INSERT INTO student VALUES ( '5', 'praneth wijesinghe', 'kandy','4')
INSERT INTO student VALUES ( '6', 'nuwani herath', 'ratnapura','1')

