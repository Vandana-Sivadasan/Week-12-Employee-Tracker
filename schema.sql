/*

To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console.

3. Run "source schema.sql"

*/

-- Drops the task_saver_db if it already exists --
DROP DATABASE IF EXISTS employee_trackerdb

-- Create the database task_saver_db and specified it for use.
CREATE DATABASE employee_trackerdb;
USE employee_trackerdb;

-- Create the table department:

CREATE TABLE department_db (
  id INT NOT NULL AUTO INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMART KEY (department),
);



CREATE TABLE role_db (
    id int AUTO INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL, 
    department_id INT to hold reference to department role belongs to
);

    --id int NOT NULL AUTO_INCREMENT,
  --task varchar(255) NOT NULL,
  --PRIMARY KEY (id)
--);

-- Insert a set of records.
INSERT INTO tasks (task) VALUES ('Pick up milk.');
INSERT INTO tasks (task) VALUES ('Mow the lawn.');
INSERT INTO tasks (task) VALUES ('Call Shannon back.');
