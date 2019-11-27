require("minitest/autorun")
require("minitest/rg")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../house.rb")

class TestHouse < MiniTest::Test

  def setup
    details = {"id" => 1, "name" => "Gryffindor",
    "url" => "/private/gryffindor.jpg"}
    @house = House.new(details)
  end

  def test_new
    result = @house.url()
    assert_equal("/private/gryffindor.jpg", result)
  end

end
