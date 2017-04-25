require('sinatra')
require('sinatra/reloader')
require('./lib/todo')
also_reload('lib/**/*.rb')

get('/') do
  @tasks = Task.all()
  erb(:index)
end

post('/tasks') do
  description = params.fetch("description")
  details = params.fetch("details")
  task = Task.new(description, details)
  task.save()
  print task
  @task_display = task
  erb(:success)
end

get('/detailspage') do
  @details = Task.all()
  erb(:success)
end

post('/details') do
  description = params.fetch("description")
  details = params.fetch("details")
  deets = Task.new("details")
  deets.save()
  erb(:full_task)
end

get("/full_task") do
  erb(:/)
end

get('/todo/:id') do
  @task = Task.find(params.fetch("id"))
  erb(:full_task)
end
