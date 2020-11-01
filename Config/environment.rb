require 'bundler'
Bundler.require

configure do
  set :public_folder, 'public'
  set :views, 'mvc/views'
  enable :sessions
  set :session_secret, "secrets"
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/employees.sqlite"
)

require_all 'mvc'
