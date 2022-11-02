INSERT INTO department (name)
VALUES ("Village Hidden in the Leaf"),
       ("Village Hidden in the Sand"),
       ("Akatsuki");

INSERT INTO role (title, salary, department_id)
VALUES ("Hokage", 100000, 1),
       ("Kekkei Genkai", 99000, 1),
       ("Kazekage", 91000, 2),
       ("Advisors", 90000, 2),
       ("Akatsuki", 81000, 3),
       ("Members", 80000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Naruto", "Uzumaki", 1, null),
       ("Sasuke", "Uchiha", 1, 1),
       ("Hinata", "Hyuga", 2, null),
       ("Neji", "Hyuga", 2, 3),
       ("Gaara", "ofthe Sand", 3, null),
       ("Temari", "of th Sand", 4, 5),
       ("Pain", "Nagato", 5, null),
       ("Itachi", "Uchiha", 6, null),
       ("Hidan", "Kakuzu", 6, 8);