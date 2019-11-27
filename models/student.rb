require_relative('../db/sql_runner')

class Student

  attr_reader :first_name, :last_name, :house, :age, :id

  def initialize(details)
    @id = details['id'].to_i
    @first_name = details['first_name']
    @last_name = details['last_name']
    @house = details['house']
    @age = details['age'].to_i
  end

  # def save()
  #
  # end

end
