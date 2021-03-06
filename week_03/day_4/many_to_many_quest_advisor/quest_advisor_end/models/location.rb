require_relative('../db/sql_runner')

class Location
  attr_reader :id
  attr_accessor :name, :category

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @category = options['category']
  end

  def save
    sql = 'INSERT INTO locations (name, category)
          VALUES ($1, $2)
          RETURNING id'
    values = [@name, @category]
    location = SqlRunner.run(sql, values).first
    @id = location['id'].to_i
  end

  def users
    sql = 'SELECT users.*
          FROM users
          INNER JOIN visits
          ON visits.user_id = users.id
          WHERE location_id = $1'
    values = [@id]
    user_data = SqlRunner.run(sql, values)
    return User.map_items(user_data)
  end

  def self.all
    sql = 'SELECT * FROM locations'
    location_data = SqlRunner.run(sql)
    return Location.map_items(location_data)
  end

  def self.delete_all
   sql = 'DELETE FROM locations'
   SqlRunner.run(sql)
  end

  def self.map_items(location_data)
    return location_data.map { |location| Location.new(location) }
  end
end
