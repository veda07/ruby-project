DROP DATABASE IF EXISTS women_of_tech;
CREATE DATABASE women_of_tech;


\c women_of_tech


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR (255),
    password_digest VARCHAR (255)
);

CREATE TABLE posts(
  id SERIAL PRIMARY KEY, 
  photo_url TEXT,
  f_name VARCHAR(255),
  l_name VARCHAR(255),
  period VARCHAR(255),
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  -- post belongs to user
  user_id INTEGER REFERENCES users(id)
);

