require("minitest/autorun")
require("minitest/rg")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../student.rb")
require_relative("../house.rb")

class TestStudent < MiniTest::Test

  def setup
    details = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter",
    "house_id" => "Gryffindor", "age" => 13}

    @student = Student.new(details)
  end

  def test_new
    result = @student.age()
    assert_equal(13, result)
  end

  # def test_house_id
  #   result = @student.house()
  #   assert_equal("Gryffindor", result)
  # end

end
