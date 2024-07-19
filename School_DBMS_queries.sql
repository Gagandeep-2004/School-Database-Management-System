CREATE TABLE Subjects(
    sub_id VARCHAR(30) NOT NULL PRIMARY KEY,
    sub_name VARCHAR(30) NOT NULL,
    teacher_id BIGINT NOT NULL
);
CREATE TABLE Students_subject(
    student_id BIGINT NOT NULL,
    sub_id1 VARCHAR(30) NOT NULL,
    sub_id2 VARCHAR(30) NOT NULL,
    sub_id3 VARCHAR(30) NOT NULL,
    PRIMARY KEY(student_id)
);
CREATE TABLE Coaching(
    coaching_id VARCHAR(30) NOT NULL  PRIMARY KEY,
    coaching_name VARCHAR(30) NOT NULL,
    stream VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    phone BIGINT NOT NULL
);
CREATE TABLE Students(
    std_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    CGPA decimal(2,1) NOT NULL,
    std_class VARCHAR(30) NOT NULL
);
CREATE TABLE Teachers(
    teacher_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone BIGINT NOT NULL,
    office_no BIGINT NOT NULL
);
CREATE TABLE Student_info(
    std_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    father_name VARCHAR(30) NOT NULL,
    mother_name VARCHAR(30) NOT NULL,
    dob DATE NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone BIGINT NOT NULL,
    coaching_id VARCHAR(30) NOT NULL
);

select *
from Students;
select *
from Student_info;
select *
from Students_subject;
select *
from Teachers;

drop table Students_subject;

INSERT INTO Subjects values('MTH', 'maths', 220101);
INSERT INTO Subjects values('PHY', 'physics', 220102);
INSERT INTO Subjects values('CHM', 'chemistry', 220103);
INSERT INTO Subjects values('ENG', 'english', 220104);
INSERT INTO Subjects values('BIO', 'biology', 220105);
INSERT INTO Subjects values('HIN', 'hindi', 220106);
INSERT INTO Subjects values('ART', 'art', 220107);
INSERT INTO Subjects values('PHI', 'sports', 220108);
INSERT INTO Subjects values('HIS', 'history', 220108);
INSERT INTO Subjects values('CVC', 'civcs', 220108);
INSERT INTO Subjects values('GEO', 'geography', 220108);