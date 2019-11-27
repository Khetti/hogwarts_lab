require('pry')
require_relative('../models/student.rb')
require_relative('../models/house.rb')

Student.delete_all()
House.delete_all()

house1 = House.new({
  "name" => "Gryffindor",
  "url" => "private/gryffindor.jpg"
  })

house2 = House.new({
  "name" => "Slytherin",
  "url" => "private/slytherin.jpg"
  })

house1.save
house2.save

student1 = Student.new({
   "first_name" => "Harry",
   "last_name" => "Potter",
   "house_id" => house1.id,
   "age" => 13
  })

student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "house_id" => house2.id,
    "age" => 13
  })

student1.save
student2.save

binding.pry
nil
