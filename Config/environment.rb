require 'bundler'
require 'require_all'
require_all 'mvc'
Bundler.require

configure do
  set :public_folder, 'public'
  set :views, 'mvc/views'
  enable :sessions
  set :session_secret, "overdraftprotection"
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/employees.sqlite"
)

