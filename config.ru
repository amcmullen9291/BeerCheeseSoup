require 'sinatra'
require_relative Config
require_all Databases
require_all MVC
require_all Public

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/employees.sqlite3"
  )


Run EmployeeController
