-- Statement 사용성의 위험성
DROP TABLE IF EXISTS user;

CREATE TABLE user(
                   id integer primary key autoincrement,
                   username text unique,
                   password text,
                   first_name text,
                   last_name text,
                   email text
);

INSERT INTO user(username, password, first_name, last_name, email)
VALUES
  ('alex', 'aaaa', 'Alexander', 'Rodriguez', 'a.rod@gmail.com'),
  ('brad', 'bbb', 'Bradley', 'Snyder', 'bradS@gmail.com'),
  ('chad', 'ccccc', 'Chadwick', 'Bradford', 'moneyball@gmail.com');

-- SQL을 작성할건데, 사용자가 username이랑 password를 제출하면
-- 해당 아이디를 가진 행의 데이터의 비밀번호가 제출한 비밀번호와 일치하는지를 비교
SELECT *
FROM user
WHERE
    username = '%s' AND password = '%s';

-- SQL Injection
-- username: alex
-- password: 1' OR '1' = '1
SELECT *
FROM user
WHERE
      username = 'alex' AND password = '1' OR '1' = '1';