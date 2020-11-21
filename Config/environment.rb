require 'bundler'
require 'require_all'

# ENV[‘RACK_ENV’] ||= “development”
# ENV[‘SINATRA_ENV’] ||= “development”
Bundler.require(:default)
ActiveRecord::Base.establish_connection(
:adapter => "sqlite3",
:database => "db/development.sqlite3"
)

require_all '../beercheesesoup'



