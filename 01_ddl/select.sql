-- SELECT
-- first_name과 age만 뽑아서 조회
SELECT first_name, age FROM user;
-- last_name, phone, email만 뽑아서 조회
SELECT last_name, phone, email FROM user;
-- 전체 column 조회
SELECT * FROM user;


-- SELECT
-- first_name 알바벳 순으로 조회
SELECT * FROM user ORDER BY first_name;

-- age순으로 조회, 같으면 first_name 순으로 조회
SELECT age, first_name FROM user ORDER BY age, first_name;

-- age 역순으로 조회, 같으면 first_name 순으로 조회
SELECT age, first_name FROM user ORDER BY age DESC, first_name;

-- DISTINCT 해당 컬럼을 중복없이 조회
-- 나이들만 조회
SELECT age FROM user;

-- 중복 없이 나이를 조회
SELECT DISTINCT age FROM user;

-- 중복 없이 first_name 조회
SELECT DISTINCT first_name FROM user;

-- 중복없이 country 조회 후 country로 나열
SELECT DISTINCT country FROM user ORDER BY country;


-- 조건을 붙여서 조회
-- 나이가 30 미만인 사람들의 first_name 조회
SELECT first_name FROM user WHERE age < 30;

-- balance가 150인 사람들의 나이 조회
SELECT age FROM user WHERE balance = 150;


-- AND OR
-- balance가 150 이상이면서 나이가 30미만인 사람들을 나이순, 이름순으로조회
SELECT * FROM user WHERE balance >= 150 and age < 30 ORDER BY age, first_name;

-- first_name이 Zelda인 사람들만 조회
SELECT * FROM user WHERE first_name = 'Zelda';

-- Like
-- first_name이 A로 시작하는 사람들만 조회
-- % = 0개 이상의 문자와 동일한 문자
SELECT * FROM user WHERE first_name like 'A%';
-- first_name이 A로 시작하는 사람들 중 이름이 4글자로 이루어진 사람들만 조회
-- _ = 1개의 문자와 동일한 문자
SELECT * FROM user WHERE first_name like 'A___';