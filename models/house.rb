require_relative('../db/sql_runner.rb')

class House

attr_reader :id, :name, :url

def initialize(details)
  @id = details['id'].to_i
  @name = details['name']
  @url = details['url']
end

end
