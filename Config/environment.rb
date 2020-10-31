
require 'bundler/setup'
Bundler.require
require 'sinatra'
require_relative config
require_all db
require_all mvc
require_all public

set :database, 'sqlite3:db/employees.db'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/employees.db"
  )

  Run EmployeeController
