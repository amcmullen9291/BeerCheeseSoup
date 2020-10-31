require 'sinatra'
require_relative Config
require_all Databases
require_all MVC
require_all Public


ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/employees.db"
  )

  sql = <<- SQL
  sqlite3 employees.db
  SQL
  ActiveRecord::Base.connection.execute(sql)

  Run EmployeeController
