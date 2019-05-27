DROP DATABASE IF EXISTS women_in_tech;
CREATE DATABASE women_in_tech;


\c women_in_tech


CREATE TABLE items(
  id SERIAL PRIMARY KEY, 
  content VARCHAR(255)
);