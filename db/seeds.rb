require('pry')
require_relative('../models/student.rb')

Student.delete_all()
House.delete_all()

student1 = Student.new({
   "first_name" => "Harry",
   "last_name" => "Potter",
   "house" => "Gryffindor",
   "age" => 13
  })

student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "house" => "Slytherin",
    "age" => 13
  })

student1.save
student2.save

house1 = House.new({
  "name" => "Gryffindor",
  "url" => "private/gryffindor.jpg"
  })

house2 = House.new({
  "name" => "Hufflepuff",
  "url" => "private/hufflepuff.jpg"
  })

house1.save
house2.save

binding.pry
nil
