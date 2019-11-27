require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student.rb')
also_reload('./models/*')

#INDEX
get '/students' do
  @students = Student.all()
  erb(:index)
end
