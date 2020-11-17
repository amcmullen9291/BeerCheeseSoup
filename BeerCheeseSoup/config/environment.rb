require 'bundler'
require 'require_all'

ENV['SINATRA_ENV'] ||="development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure do
  set :database
  set :adapter
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/beerCheeseSoup.sqlite"
)

configure do
  set environment: 'development'
  enable :sessions
  set :session_secret, "overdraftprotection"
end

require_all './mvc'

