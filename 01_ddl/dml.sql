-- INSERT SELECT UPDATE DELETE
-- 연습용 테이블

-- INSERT할 때 Constraint를 잘 지킬 것
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id integer primary key autoincrement ,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  age mediumint NOT NULL,
  balance mediumint default NULL,
  phone varchar(100) default NULL,
  email varchar(255) default NULL,
  country varchar(100) default NULL
);

-- INSERT할 때 순서를 잘 지켜줄 것
INSERT INTO user(first_name, last_name, age)
VALUES ('minkyu', 'eo', '29');

INSERT INTO user(first_name, last_name, age, balance)
VALUES ('Alex', 'Go', 50, 1000000);

INSERT INTO user(first_name, last_name, age, balance, phone, email, country)
VALUES ('Chad', 'Brad', 49, 100000, '01012345678', 'db@gmail.com', 'USA');


-- SELECT
-- 모든 것을 조회하기
SELECT * FROM user;

-- 특정 컬럼의 데이터만 조회하기
SELECT first_name, last_name FROM user;

-- 특정 컬럼의 데이터를 기준으로 정렬해서 조회하기
SELECT first_name FROM user ORDER BY age;
SELECT first_name FROM user ORDER BY age DESC;


-- UPDATE
-- 잔고가 없는 데이터의 잔고를 전부 0으로
-- 갱신할 테이블
UPDATE user
-- 갱신할 컬럼에 넣을 데이터
SET balance = 0
-- 어떤 열들을 대상으로 하는지
WHERE balance is NULL;

-- Alex를 이름으로 가진 열의 나이를 60으로, balance를 0으로
UPDATE user
SET age = 60, balance = 0
WHERE first_name = 'Alex';

-- country가 NULL의 열들의 국적을 Korea로
UPDATE user
SET country = 'KOR'
WHERE country is NULL;

-- WHERE절이 없어 전체 컬럼이 수정된다.
UPDATE user
SET balance = 0;

-- DELETE
-- first_name이 minkyu인 열을 지운다.
-- WHERE절이 없다면 전체 컬럼이 삭제된다.
DELETE FROM user
WHERE first_name = 'minkyu';