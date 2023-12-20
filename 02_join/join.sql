SELECT * FROM lecture;
SELECT * FROM instructor;
SELECT * FROM enrolling_lectures;

-- 이런게 존재한다만 보고 가기
-- CROSS JOIN
-- : 연관관계를 주지 않고 각 테이블의 row들을 합치는 것
-- lecture rows: 10
-- instructor rows: 10
-- 10 * 10 = 100
SELECT *
FROM lecture, instructor;

SELECT *
FROM lecture, instructor
-- lecture가 가진 instructor_id
-- instructor의 id가 일치한다.
WHERE lecture.instructor_id = instructor.id;


-- INNER JOIN
-- : Inner Join은 연관짓고 싶은 컬럼이 존재해야 한다.
-- ON을 통해 어떤 컬럼이 일치해야 하는지, 어떤 컬럼을 기준으로 JOIN을 하는지를 전달
SELECT *
FROM lecture
JOIN instructor ON lecture.instructor_id = instructor.id;

-- 특정 열만 가져올 수 있다.
SELECT
  lecture.name, instructor.first_name, instructor.last_name
FROM
  lecture
JOIN
  instructor ON lecture.instructor_id = instructor.id;


-- OUTER JOIN
-- 각 교수별 강의
SELECT *
FROM instructor LEFT JOIN lecture
  ON instructor.id = lecture.instructor_id;

-- 학생별 지도교수, 지도교수가 학생을 맡지 않을 수 있음
SELECT *
FROM student RIGHT JOIN instructor
  ON student.advisor_id = instructor.id;

-- 학생과 지도교수를 전부 출력한다.
-- 한명의 학생도, 교수님도 빠지지 않는다.
SELECT *
FROM student FULL JOIN instructor
  ON student.advisor_id = instructor.id;


-- Many To Many
-- 각 학생이 듣고 있는 강의들을 출력한다.
-- 1. student와  enrolling_lectures을 inner join한다.
SELECT
  student.first_name, student.last_name, lecture.name
FROM
  -- 요만큼이 하나의 테이블이다.
  student JOIN enrolling_lectures ON student.id = enrolling_lectures.student_id
  -- 새로운 테이블과 lecture을 join한다.
  JOIN lecture ON enrolling_lectures.lecture_id = lecture.id;

-- 쿼리문 단위로 DB에 전달이 된다.
-- 따라서 Join을 몇번하든 Join이 포함된 SQL 쿼리가 하나 전달되었으므로 입력 1번 출력 1번이다.
-- (단, join 작업이 부담이 되므로 따로 따로 조회하는게 더 효율적인지 고려해봐야 한다.)
-- SELECT * FROM student JOIN instructor ON student.advisor_id = instructor.id;
-- 이렇게 하는 것보다
-- SELECT * FROM student
-- SELECT * FROM instructor
-- 이렇게 DB에 2번 접속하는 것이 더 효율적일 수 있다.
