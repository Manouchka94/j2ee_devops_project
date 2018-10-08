-- Create Linux user java
sudo adduser java

createuser --createdb --createrole --superuser java

-- Quit psql
\q

-- Open psql in user_db database
psql

-- Check current database and user_db
\conninfo

-- Change java database owner
ALTER DATABASE java OWNER TO java;

CREATE TABLE usersdevops (
    user_id serial PRIMARY KEY,
    firstname varchar (50) NOT NULL,
    lastname varchar (50) NOT NULL,
    email varchar (60) NOT NULL,
    password varchar (32) NOT NULL,
    signup_date date
);

-- Insert data to table
INSERT INTO usersdevops (firstname, lastname, email, password, signup_date) VALUES ('emmanuel', 'drecq', 'emmanuel.drecq@gmail.com', 'Password', '2018/09/20');
INSERT INTO usersdevops (firstname, lastname, email, password, signup_date) VALUES ('toto', 'titi', 'toto.titi@gmail.com', 'P@s$w0rd', '2018/09/20');

-- Check data insertion
SELECT * FROM usersdevops;