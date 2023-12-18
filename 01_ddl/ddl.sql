 /*
Data Definition Language
: 데이터를 정의하기 위한 SQL
테이블을 만들고 수정하고 삭제하고..
*/

-- CREATE TABLE - 테이블 만들기
-- : 어떠한 형태로 데이터를 저장한다란 뜻을 가지고 있다.

 CREATE TABLE student_sample (
     id INTEGER
 );

-- 학생 정보에 필요한 것은?
-- first_name
-- last_name
-- email
-- 입학연도
-- 졸업 여부
CREATE TABLE student (
    id INTEGER,
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    email VARCHAR(64),
    admitted INTEGER,
    graduated BOOLEAN
);

-- DROP TABLE - 테이블을 제거할 때
DROP TABLE student;
DROP TABLE student2;

-- 강의 정보를 담기 위한 테이블을 만든다.
-- 강의명 (name)
-- 전공 (major)
-- 교수 이름 (professor)
-- 수강인원 제한 (max_students)

CREATE TABLE lecture (
    id INTEGER,
    name VARCHAR(64),
    major VARCHAR(64),
    professor VARCHAR(64),
    max_students INTEGER
);

-- 강사님 테이블
-- 성함 (name)
-- 전공 (major)
-- 직급 (grade)
-- 논문수 (articles)
CREATE TABLE lecturer (
    id INTEGER,
    name VARCHAR(64),
    major VARCHAR(64),
    grade VARCHAR(64),
    articles INTEGER
)