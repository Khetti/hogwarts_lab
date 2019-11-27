require("minitest/autorun")
require("minitest/rg")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def setup
    details = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter",
    "house" => "Gryffindor", "age" => 13}

    @student = Student.new(details)
  end

  def test_new
    result = @student.age()
    assert_equal(13, result)
  end

end
