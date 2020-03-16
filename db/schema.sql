/*

To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console.

3. Run "source schema.sql"

*/

-- Drops the task_saver_db if it already exists --
DROP DATABASE IF EXISTS employee_tracker_db

-- Create the employee-tracker_db and specified it for use.
CREATE DATABASE employee_tracker_db;
USE employee_trackerdb;

-- Create the 3 tables department,role and employee:
--Table Department--

CREATE TABLE department_db (
  id INT NOT NULL AUTO INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMART KEY (department),
);

--Table Role--

CREATE TABLE role_db (
    id INT AUTO INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL, 
    department_id INT 
);

--Table Employee--
CREATE TABLE employee_db (
    id INT PRIMARY KEY
    first_name VARCHAR(30)
    last_name VARCHAR(30)
    role_id INT 
    manager_id INT 
);

   

-- Insert a set of data for department table:
INSERT INTO department (id,name) VALUES ('1' ,'David Foster');
INSERT INTO department (id,name) VALUES ('2' ,'John Doe');
INSERT INTO department (id,name) VALUES ('3' ,'Mike Chan');
INSERT INTO department (id,name) VALUES ('4' ,'Ashley Rodriguez');
INSERT INTO department (id,name) VALUES ('5' ,'Kevin Tupik');
INSERT INTO department (id,name) VALUES ('6' ,'Malia Brown');
INSERT INTO department (id,name) VALUES ('7' ,'Sarah Lourd');
INSERT INTO department (id,name) VALUES ('8' ,'Tom Allen');


-- Insert a set of data for role table:
INSERT INTO role (id,title,salary,department_id) VALUES ('1', 'Lead Engineer' ,'80,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('2' ,'Sales' , '90,000' ,'3');
INSERT INTO role (id,title,salary,department_id) VALUES ('3' ,'Sales Lead' , '1,00,000' , '3');
INSERT INTO role (id,title,salary,department_id) VALUES ('4' ,'Salesperson' , '50,000' , '3');
INSERT INTO role (id,title,salary,department_id) VALUES ('5' ,'Software Engineer' , '50,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('6' , 'Lead Engineer' , '80,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('7' , 'Accountant' , '70,000' , '2');
INSERT INTO role (id,title,salary,department_id) VALUES ('8' ,'Legal Team Lead' , '80,000' , '1');

--Insert a set of data for employee table:
INSERT INTO role (id,title,salary,department_id) VALUES ('1' , 'Lead Engineer' ,'80,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('2' ,'Sales' , '90,000' ,'3');
INSERT INTO role (id,title,salary,department_id) VALUES ('3' ,'Sales Lead' , '1,00,000' , '3');
INSERT INTO role (id,title,salary,department_id) VALUES ('4' ,'Salesperson' , '50,000' , '3');
INSERT INTO role (id,title,salary,department_id) VALUES ('5' ,'Software Engineer' , '50,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('6' , 'Lead Engineer' , '80,000' , '4');
INSERT INTO role (id,title,salary,department_id) VALUES ('7' , 'Accountant' , '70,000' , '2');
INSERT INTO role (id,title,salary,department_id) VALUES ('8' ,'Legal Team Lead' , '80,000' , '1');