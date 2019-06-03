
# InspirAda

### SEI Project 4
 
 InspirAda blog app is a fullstack MVC app with CRUD functionalities builted using Ruby  Siantra and SQL 



### Objectives 

Create a space for women in the tech industry to share and find female role models in hopes to motivate more women and girls to pursue a carrer in tech. 

### The name

InspirAda is a word play between the spanish word "inspirada" that means inspired women in Spanish and "Ada" for Ada Lovelace who is consider one of the first computer programmers. 

# PLANING

### User Stories
1. Users will register and login to access the app.
2. Users will get to the homepage after sign-up/ login and see the index of all users' posts.
4. Users will be able to access their profile, homepage and create post by using the nav bar.
5. Users will be able to see their posts' index in their profile page.
6. Users will create post with photo url, title or name of female role-model and a derscription of their role-model's accomplishments.
7. Users will be able to access individual posts by clicking on them. 
8. Users will be able to log out at any moment by clicking logout at the bottom. 


### MVP

1. Welcome page with links to register and login.
2. User profile, home, create posts, edit posts and show post pages. 
3. Homepage with all users posts' index.
4. User profile with the users' posts index. 


### Streches

1. Comments under posts.


### Development

SQL Create Routes

```
CREATE DATABASE women_in_tech;


\c women_in_tech


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
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  -- posts belongs to user
  user_id INTEGER REFERENCES users(id)
);

```


Copy Right © VA & TIMP 2019











