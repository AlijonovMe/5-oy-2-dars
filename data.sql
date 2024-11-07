-- 1

-- CREATE TABLE IF NOT EXISTS departments(
-- 	id SERIAL PRIMARY KEY,
-- 	name TEXT,
-- 	location TEXT
-- );

-- CREATE TABLE IF NOT EXISTS employees(
-- 	id SERIAL PRIMARY KEY,
-- 	name TEXT,
-- 	position TEXT,
-- 	department_id INTEGER REFERENCES departments(id) 
-- );

-- CREATE TABLE IF NOT EXISTS projects(
-- 	id SERIAL PRIMARY KEY,
-- 	title TEXT,
-- 	department_id INTEGER REFERENCES departments(id)
-- );

-- CREATE TABLE IF NOT EXISTS tasks(
-- 	id SERIAL PRIMARY KEY,
-- 	description TEXT,
-- 	project_id INTEGER REFERENCES projects(id),
-- 	employee_id INTEGER REFERENCES employees(id)
-- );

-- INSERT INTO departments (name, location) VALUES 
-- ('Marketing', 'Toshkent'),
-- ('Kadrlar', 'Samarqand'),
-- ('IT', 'Buxoro'),
-- ('Moliyaviy nazorat', 'Toshkent');  

-- INSERT INTO employees (name, position, department_id) VALUES 
-- ('Toxir', 'Menejer', 1), 
-- ('Sobir', 'Kadrlar bo''yicha mutaxassis', 2),
-- ('Bakir', 'Dasturchi', 3),
-- ('Jalil', 'Moliyaviy nazorat mutaxassisi', 4); 

-- INSERT INTO projects (title, department_id) VALUES 
-- ('Brend kampaniyasi', 1), 
-- ('Xodimlar uchun tadbir', 2), 
-- ('Sayt yaratish', 3),
-- ('Buxgalteriya tizimi yaratish', 4);

-- INSERT INTO tasks (description, project_id, employee_id) VALUES 
-- ('Kampaniya strategiyasini tuzish', 1, 1), 
-- ('Xodimlar o''rtasida so''rov o''tkazish', 2, 2),
-- ('Landing sahifasini yaratish', 3, 3),
-- ('Moliyaviy tizimni joriy etish', 4, 4);  

-- SELECT 
-- 	employees.id,
-- 	employees.name, 
--     employees.position, 
--     departments.name, 
--     departments.location,
--     projects.title,
--     tasks.description
-- FROM 
--     departments
-- JOIN 
--     employees ON departments.id = employees.department_id
-- JOIN 
--     projects ON departments.id = projects.department_id
-- JOIN 
--     tasks ON projects.id = tasks.project_id AND employees.id = tasks.employee_id;

------------------------
-- 2

-- ALTER TABLE employees ADD COLUMN email TEXT DEFAULT 'example@gmail.com';
-- ALTER TABLE tasks ALTER COLUMN description TYPE VARCHAR(255);

-- SELECT * FROM employees;
-- SELECT * FROM tasks;

-------------------------
-- 3

-- UPDATE employees SET position = 'Senior Developer' WHERE id = 1;
-- UPDATE projects SET title = 'New Project Title' WHERE id = 2;

-- SELECT * FROM employees;
-- SELECT * FROM projects;

-------------------------
-- 4

-- DELETE FROM tasks WHERE id = 3;
-- DELETE FROM projects WHERE id = 3;

-- SELECT * FROM projects;
-- SELECT * FROM tasks;

-- UPDATE tasks SET employee_id = NULL WHERE employee_id = 4;
-- DELETE FROM employees WHERE id = 4;

-- SELECT * FROM employees;
-- SELECT * FROM tasks;



