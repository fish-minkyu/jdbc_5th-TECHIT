-- ALTER TABLE RENAME
-- 테이블 이름 바꾸기
ALTER TABLE student RENAME TO student_backup;
ALTER TABLE student_backup RENAME TO student;

-- 컬럼의 이름 바꾸기
ALTER TABLE student RENAME COLUMN id TO studentId;
-- last name을 sur_name으로 바꾸기
ALTER TABLE student RENAME COLUMN last_name TO sur_name;

-- 컬럼 추가하기
ALTER TABLE student ADD COLUMN address VARCHAR(256);
-- 제약사항 넣어서 추가히기
ALTER TABLE student ADD COLUMN phone VARCHAR(128) NOT NULL DEFAULT '';

-- 컬럼 제거하기
ALTER TABLE student DROP COLUMN phone;

-- DROP TABLE
-- 데이터를 복구할 수가 없다.
-- 실제론 쓰면 안된다.
DROP TABLE student;
DROP TABLE IF EXISTS student;