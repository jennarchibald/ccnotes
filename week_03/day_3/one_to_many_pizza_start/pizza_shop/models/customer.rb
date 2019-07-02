require('pg')

class Customer

  attr_reader(:id)
  attr_accessor(:name)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "INSERT INTO customers
    (
    name
    )
    VALUES
    (
    $1
    )
    RETURNING *"
    values = [@name]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    db.close()
  end

  def update()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "UPDATE customers
    SET
    (
      name
    ) =
    (
      $1
    )
    WHERE id = $2"
    values = [@name, @id]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close()
  end

  def delete()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "DELETE FROM customers
    WHERE id = $1"
    values = [@id]
    db.prepare("delete", sql)
    db.exec_prepared("delete", values)
    db.close()
  end

  def self.find(id)
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [id]
    db.prepare("find", sql)
    results = db.exec_prepared("find", values)
    db.close()
    customer_hash = results.first
    customer = Customer.new(customer_hash)
    return customer
  end

  def self.all()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "SELECT * FROM customers"
    db.prepare("all", sql)
    customers = db.exec_prepared("all")
    db.close()
    return customers.map { |customer| Customer.new(customer) }
  end

  def self.delete_all()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "DELETE FROM customers"
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all")
    db.close()
  end


end
