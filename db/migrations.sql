DROP DATABASE IF EXISTS women_of_tech;
CREATE DATABASE women_of_tech;


\c women_of_tech


CREATE TABLE posts(
  id SERIAL PRIMARY KEY, 
  content VARCHAR(255)
);