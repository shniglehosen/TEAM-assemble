USE employees;

INSERT INTO department 
       (name)
VALUES 
       ("Leadership/Manager"),
       ("Sr. Engineer"),
       ("Jr. Engineer"),
       ("Intern");

INSERT INTO role 
       (title, salary, department_id)
VALUES 
        ("Project Manager", 300000, 1),
        ("Project Supervisor", 200000, 1),
        ("Lead engineer", 160000, 2),
        ("Senior Engineer", 130000, 2),
        ("Junior Engineer", 80000, 3),
        ("Junior Engineer", 80000, 3),
        ("Intern", 0, 4),
        ("Intern", 0, 4);

INSERT INTO employee 
       (first_name, last_name, role_id, manager_id)
VALUES 
        ("John", "Doe", 1, NULL),
        ("Alexis", "Rhodes", 2, 1),
        ("Chazz", "Princeton", 3, NULL),
        ("Cyrus", "Truesdale", 4, 3),
        ("Jaden", "Yuki", 5, NULL),
        ("Joey", "Wheeler", 6, 5),
        ("Sarah", "Hassleberry", 7, NULL),
        ("Shawn", "Allen", 8, 7);