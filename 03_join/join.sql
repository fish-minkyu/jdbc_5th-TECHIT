SELECT
  student.id,
  count(lecture.id)
FROM
    student
LEFT JOIN
      enrolling_lectures ON student.id = enrolling_lectures.student_id
LEFT JOIN
      lecture ON enrolling_lectures.lecture_id = lecture.id
GROUP BY
  student.id;

-- ALIAS (앨리어스)
-- 학생과 지도교수의 이름들
SELECT
  *
FROM
  student s
JOIN
  instructor i ON s.id = i.id;


-- SubQuery
-- 어떤 특정 강의(2번 강의)를 듣는 학생들의 id를 가져오고 싶다.
SELECT student_id
FROM enrolling_lectures
WHERE lecture_id = 2;

-- 2번 강의를 듣는 학생들의 이름을 가져오고 싶다.
SELECT first_name
FROM student
WHERE id IN (
  SELECT student_id
  FROM enrolling_lectures
  WHERE lecture_id = 2
  );
-- 서브쿼리가 join보단 무거워서 지양하고 있었다.
-- 하지만 기술 발전으로 서브쿼리도 사용하고 있다.