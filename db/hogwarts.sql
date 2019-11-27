DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  url VARCHAR
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  house_id INT REFERENCES houses(id),
  age INT
);
