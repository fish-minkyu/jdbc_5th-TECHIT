SELECT * FROM lecture;
SELECT * FROM instructor;

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