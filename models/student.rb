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

  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @last_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

end
