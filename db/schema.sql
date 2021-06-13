DROP DATABASE IF EXISTS datacorp_db;

CREATE DATABASE datacorp_db;

USE datacorp_db;

-- create department table --
CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) -- to hold dept name --
);

-- create role table --
CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30), -- to hold role title --
  salary DECIMAL(10,2), -- to hold role salary --
  department_id INT -- to hold reference to department role belongs to --
);

-- create employee table --
CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30), -- to hold employee first name --
  last_name VARCHAR(30), -- to hold employee last name --
  role_id INT, -- to hold reference to employee role --
  manager_id INT -- to hold reference to another employee that is manager of the current employee. This field might be null if the employee has no manager. --
);