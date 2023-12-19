-- 집계하기
-- 대한민국('South Korea')국적을 가진 사람들을 조회하는 SQL을 작성한다.
SELECT * FROM user WHERE country = 'South Korea';
-- 대한민국('South Korea')국적을 가진 사람들이 몇명인지를 조회
-- 대한민국('South Korea')국적을 가진 사람들의 잔고의 평균 조회
-- 대한민국('South Korea')국적을 가진 사람들의 나이의 최대 최소 조회
-- Aggregate Functions
-- 여러 행을 반환받고 그 해동의 데이터를 바탕으로 결과를 계산
-- COUNT(), AVG(), MAX(), MIN(), SUM()
SELECT count(*) FROM user;

SELECT AVG(balance) FROM user;

-- 대한민국('South Korea') 국적을 가진 사람들의 잔고의 평균 조회
SELECT AVG(balance) FROM user WHERE country = 'South Korea';

-- 나이가 30 이상인 사람들의 잔고의 평균 조회
SELECT AVG(balance), max(balance), min(balance) FROM user WHERE age >= 30;

-- GROUP BY
SELECT country, avg(balance) FROM user GROUP BY country ORDER BY avg(balance);

-- 동명이인 찾기(first_name이 동일한 사람들)
SELECT first_name, count(*) FROM user GROUP BY first_name ORDER BY count(*) DESC;

-- 나라별 나이의 평균을 나이의 평균의 역순으로 정렬해서 출력
SELECT country, avg(age) FROM user GROUP BY country ORDER BY avg(age) DESC;

-- 10 단위로 나이를 나누어서
-- 각각 세대의 잔고의 평균을 구하는 SQL
SELECT
  country,
  (age / 10) * 10 as 연령대별,
  avg(balance)
FROM
  user
GROUP BY
  country, age / 10;

-- WHERE는 집계 전에 데이터를 걸러내는 역할
SELECT country, avg(balance)
FROM user
WHERE country IN ('Canada', 'United States', 'Australia')
GROUP BY country;

-- HAVING
-- 국가 단위로 잔고 평균을 구한 뒤,
-- 잔고 평균이 149을 넘는 자료만 넘기는 SQL
-- (집계 후 사용하는 조건절)
SELECT country, avg(balance)
FROM user
GROUP BY country
HAVING avg(balance) > 149;