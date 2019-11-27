DROP TABLE houses;
DROP TABLE students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  house VARCHAR,
  age INT
);

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  url VARCHAR
);
