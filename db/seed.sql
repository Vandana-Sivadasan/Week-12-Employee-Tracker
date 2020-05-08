DROP DATABASE IF EXISTS employees_db;
CREATE database employees_db;

USE employees_db;

CREATE TABLE employee_list (
  id INT NOT NULL,
  first_name VARCHAR(50) NULL,
  last_name VARCHAR(50) NULL,
  role_id INT NULL,
  manager_id VARCHAR(50) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
id INT NOT NULL,
  title VARCHAR(50) NULL,
  salary DECIMAL,
  department_id INT,
  PRIMARY KEY (id)
  );
  
  CREATE TABLE department (
  department_id INT NOT NULL,
  dept_name VARCHAR(50) NULL,
  PRIMARY KEY (department_id)
  );

--Insert a set of data for department table:
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