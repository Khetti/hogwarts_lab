require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')


post '/students/age' do
  age = params['age']
  @students = Student.filter_by_age(age)
  erb(:"students/index")
end

#INDEX
get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

get '/students/new' do
  @houses = House.all()
  erb(:"students/new")
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  redirect '/students'
  erb(:"students/create")
end
