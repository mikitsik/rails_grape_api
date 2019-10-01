# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create email: 'apitest1@email.com', password: 'password', password_confirmation: 'password'
user_2 = User.create email: 'apitest2@email.com', password: 'password', password_confirmation: 'password'
user_3 = User.create email: 'apitest3@email.com', password: 'password', password_confirmation: 'password'

project_1 = Project.create name: 'Make Api', user_id: 1, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
project_2 = Project.create name: 'Take a rest', user_id: 1, created_at: '2019-09-26 11:23:15', updated_at: '2019-09-26 11:23:15'
project_3 = Project.create name: 'Improve yourself', user_id: 1, created_at: '2019-08-25 08:46:48', updated_at: '2019-08-25 08:46:48'
project_4 = Project.create name: 'Write book', user_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
project_5 = Project.create name: 'Take gym', user_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
project_6 = Project.create name: 'Find job', user_id: 3, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'

task_1 = Task.create name: 'Reed docs', status: 0, deadline: '2019-11-12 12:46:41', project_id: 1, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_2 = Task.create name: 'Find examples', status: 1, deadline: '2019-11-12 12:46:41', project_id: 1, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_3 = Task.create name: 'Store data', status: 1, deadline: '2019-11-12 12:46:41', project_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_5 = Task.create name: 'Lift weight', status: 0, deadline: '2019-11-12 12:46:41', project_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_6 = Task.create name: 'Run fast', status: 0, deadline: '2019-11-12 12:46:41', project_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_7 = Task.create name: 'Take a shower', status: 0, deadline: '2019-11-12 12:46:41', project_id: 3, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_8 = Task.create name: 'Sleep hard', status: 1, deadline: '2019-11-12 12:46:41', project_id: 3, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_9 = Task.create name: 'Reed book', status: 0, deadline: '2019-11-12 12:46:41', project_id: 3, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_10 = Task.create name: 'Go outside', status: 0, deadline: '2019-11-12 12:46:41', project_id: 6, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_11 = Task.create name: 'Make eat', status: 1, deadline: '2019-11-12 12:46:41', project_id: 2, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_12 = Task.create name: 'Show skills', status: 0, deadline: '2019-11-12 12:46:41', project_id: 4, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_13 = Task.create name: 'Listen English', status: 0, deadline: '2019-11-12 12:46:41', project_id: 4, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_14 = Task.create name: 'Browse vacancies', status: 1, deadline: '2019-11-12 12:46:41', project_id: 5, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_15 = Task.create name: 'Write quickly', status: 0, deadline: '2019-11-12 12:46:41', project_id: 5, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
task_16 = Task.create name: 'Watch news', status: 1, deadline: '2019-11-12 12:46:41', project_id: 6, created_at: '2019-09-25 10:46:41', updated_at: '2019-09-25 10:46:41'
