DROP DATABASE IF EXISTS piedpiper_db;

CREATE DATABASE piedpiper_db;

USE piedpiper_db;

-- create department table --
CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) -- to hold dept name --
);

-- create role table --
CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL, -- to hold role title --
  salary DECIMAL(10,2) NOT NULL, -- to hold role salary --
  department_id INT NOT NULL, -- to hold reference to department role belongs to --
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

-- create employee table --
CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL, -- to hold employee first name --
  last_name VARCHAR(30) NOT NULL, -- to hold employee last name --
  role_id INT NOT NULL, -- to hold reference to employee role --
  manager_id INT -- to hold reference to another employee that is manager of the current employee. This field might be null if the employee has no manager. --
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);