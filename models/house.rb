require_relative('../db/sql_runner.rb')

class House

attr_reader :id, :name, :url

def initialize(details)
  @id = details['id'].to_i
  @name = details['name']
  @url = details['url']
end

def save()
  sql = "INSERT INTO houses
  (
    name,
    url
  )
  VALUES
  (
    $1, $2
  )
  RETURNING *"
  values = [@name, @url]
  house_data = SqlRunner.run(sql, values)
  @id = house_data.first()['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM houses;"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM houses"
  houses = SqlRunner.run(sql)
  result = houses.map{|house| House.new(house)}
  return result
end

def self.find(id)
  sql = "SELECT * FROM houses
  WHERE id = $1"
  values = [id]
  house = SqlRunner.run(sql, values)
  result = House.new(house.first)
  return result
end

end
