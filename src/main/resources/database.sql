-- db PostgresSQL

CREATE SCHEMA com_autoloss_one

-- Table: users
CREATE TABLE com_autoloss_one.users (
  id       BIGSERIAL          NOT NULL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);


-- Table: roles
CREATE TABLE com_autoloss_one.roles (
  id   BIGSERIAL          NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL

);

-- Table for mapping user and roles: user_roles
CREATE TABLE com_autoloss_one.user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES com_autoloss_one.users (id),
  FOREIGN KEY (role_id) REFERENCES com_autoloss_one.roles (id),

  UNIQUE (user_id, role_id)
);

-- Insert data
-- psw "admin"
INSERT INTO com_autoloss_one.users VALUES (1, 'admin', '$2a$10$zG0YrJ0ndV/5/5huTOsY.ufep/pz1TwQZi6gZBZJYzKZeZKrUGELG');

INSERT INTO com_autoloss_one.roles VALUES (1, 'ROLE_USER');
INSERT INTO com_autoloss_one.roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO com_autoloss_one.user_roles VALUES (1, 2);