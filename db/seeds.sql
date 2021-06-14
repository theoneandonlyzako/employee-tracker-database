USE piedpiper_db; -- tells mysql which db to use for this app

-- Creates the departments
INSERT INTO department (name)
VALUES ("Management"), ("Development"), ("Engineer"), ("Design"), ("Directors");

-- Creates employee role
INSERT INTO role (title, salary, department_id)
VALUES ("CEO", 269375, 1),
("Business Development", 269375, 2),
("Systems Architect", 63976, 2),
("Senior Programmer", 30001, 3),
("CFO", 96969, 1),
("Investor", 0, 5),
("Platform Engineer", 46347, 3),
("Lead Designer", 30001, 4),
("Board Of Directors", 0, 5);

-- Creates employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Erlich", "Bachman", 6, null),
("Richard", "Hendricks", 1, null),
("Bertram", "Gilfoyle", 3, null),
("Dinesh", "Chugtai", 4, 2),
("Jared", "Dunn", 5, 2),
("Carla", "Walton", 7, 1),
("Monica", "Hall", 5, 2),
("Dang", "D", 8, 1),
("Jian-Yang", "T", 10, 3);