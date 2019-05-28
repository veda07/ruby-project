DROP DATABASE IF EXISTS women_of_tech;
CREATE DATABASE women_of_tech;


\c women_of_tech


CREATE TABLE users(
  id SERIAL PRIMARY KEY, 
  username VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE posts(
  id SERIAL PRIMARY KEY, 
  photo_url TEXT,
  name VARCHAR(255),
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT now()
);

