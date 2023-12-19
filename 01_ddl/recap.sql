-- 테이블을 만든다.
-- 학생이름, 입학연도, 전공
CREATE TABLE student (
  id int PRIMARY KEY AUTOINCREMENT,
  name varchar(32) UNIQUE ,
  year int,
  major varchar(32) NOT NULL
);

-- 데이터 자체에 할 수 있는 4가지 작업
-- CREATE READ UPDATE DELETE
-- INSERT SELECT UPDATE DELETE
INSERT INTO student(name, year, major)
VALUES ('Alex', 2014, 'CSE');

SELECT * FROM student;
SELECT name FROM student WHERE major = 'CSE';

UPDATE student
SET major = 'International Commercial'
WHERE major = 'CSE';

DELETE FROM student WHERE name = 'Alex';
