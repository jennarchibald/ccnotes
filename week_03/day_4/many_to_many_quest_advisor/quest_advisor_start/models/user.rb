require_relative('../db/sql_runner')

class User
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save
    sql = 'INSERT INTO users (name)
          VALUES ($1)
          RETURNING id'
    values = [@name]
    user = SqlRunner.run(sql, values).first
    @id = user['id'].to_i
  end

  def self.all
    sql = 'SELECT * FROM users'
    users = SqlRunner.run(sql)
    return users.map { |user| User.new(user) }
  end

  def self.delete_all
    sql = 'DELETE FROM users'
    SqlRunner.run(sql)
  end
end
