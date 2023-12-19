// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

// 학생 데이터를 담는 테이블
table student {
id int pk
first_name varchar
last_name varchar
instructor_id int [ref: > instructor.id]
}

// 교수님 정보를 담는 테이블
table instructor {
id int pk
first_name varchar
last_name varchar
}

// 강의 정보를 담는 테이블
/*
강좌명(name)
요알(day)
시작시간(start_time) (0 ~ 24)
종료시간(end_time) (0 ~ 24) s
강사(instructor_id)
*/

table lecture {
id int pk
name varchar
day varchar
start_time int
end_time int
instructor_id int [ref: > instructor.id]
}

// 강의와 학생 정보를 M:N으로 연결하는 Join Table
table enrolling_lectures {
student_id int [ref: > student.id]
lecture_id int [ref: > lecture.id]
}