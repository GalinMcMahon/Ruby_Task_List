require('sinatra')
require('sinatra/reloader')
require('./lib/todo')
also_reload('lib/**/*.rb')

get('/') do
  @tasks = Task.all()
  erb(:index)
end

# get('/result') do
#   @description = params.fetch('input').to_s
#   erb(:result)
# end

post("/tasks") do
  description = params.fetch("description")
  task = Task.new(description)
  task.save()
  print task
  @task_display = task
  erb(:success)
end

get('/detailspage') do
  @details = Details.all()
  erb(:detailspage)
end

post("/details") do
  details = params.fetch("details")
  deets = Details.new("details")
  deets.save()
  erb(:full_task)
end
