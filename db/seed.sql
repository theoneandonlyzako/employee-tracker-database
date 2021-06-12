USE datacorp_db; -- tells mysql which db to use for this app

-- Creates the departments
INSERT INTO department (name)
VALUES ("Management"), ("Development"), ("Engineer"), ("Design"), ("Directors"), ("Competition");

-- Creates employee role
INSERT INTO role (title, salary, department_id)
VALUES ("CEO", 269375.97, 1), -- 1
("Business Development", 269375.97, 2), -- 2
("Systems Architect", 63976.23, 3), -- 3
("Senior Programmer", 30001.01, 3), -- 4
("CFO", 96969.69, 1), -- 5
("Investor", 0, 5), -- 6
("Platform Engineer", 46347.63, 3); -- 7
("Lead Designer", 30001.01, 4); -- 8
("Board Of Directors", 0, 5); -- 9
("The Competition", 0, ); -- 10

-- Creates employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Erlich", "Bachman", 6),
("Richard", "Hendricks", 1),
("Bertram", "Gilfoyle", 3, 4),
("Dinesh", "Chugtai", 4, 1),
("Nelson", "Bighetti", 6),
("Jared", "Dunn", 5, 1),
("Carla", "Walton", 7, 1),
("Monica", "Hall", 5, 1),
("Dang", "", 8, 1),
("Jian-Yang", "", 10),