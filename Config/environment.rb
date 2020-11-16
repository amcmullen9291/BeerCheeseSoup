require 'bundler'
require 'require_all'

ENV['SINATRA_ENV'] ||="development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/BeerCheeseSoup.db'
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

configure do
  set :environment, :production
  enable :sessions
  set :session_secret, "overdraftprotection"
end

require_all './mvc'

