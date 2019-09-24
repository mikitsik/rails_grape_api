# Given tables:

#### - projects (id, name)
#### - tasks (id, name, status, project_id)

CREATE TABLE projects (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20));

CREATE TABLE tasks (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), status VARCHAR(20), project_id INT, FOREIGN KEY (project_id) REFERENCES projects(id));

# Write the queries for:
#### - get all statuses, not repeating, alphabetically ordered

SELECT DISTINCT status FROM tasks ORDER BY status;

#### - get the count of all tasks in each project, order by tasks count descending

SELECT COUNT(project_id) FROM tasks GROUP BY project_id DESC;

#### - get the count of all tasks in each project, order by projects names

SELECT COUNT(project_id) FROM tasks GROUP BY project_id ORDER BY (SELECT name FROM projects WHERE id = project_id);

#### - get the tasks for all projects having the name beginning with “N” letter

SELECT * FROM tasks WHERE (name LIKE 'N%');

#### - get the list of tasks with duplicate names. Order alphabetically

SELECT name FROM tasks GROUP BY name HAVING COUNT(\*)>1

#### - get the list of project names having more than 10 tasks in status ‘completed’. Order by project_id

SELECT name FROM projects WHERE id IN (SELECT project_id from task WHERE status = 'completed' GROUP BY project_id HAVING COUNT(project_id)>10 ORDER BY project_id);
