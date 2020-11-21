require 'bundler'
require 'require_all'

require_all '../beercheesesoup'

# ENV[‘RACK_ENV’] ||= “development”
ENV[‘SINATRA_ENV’] ||= “development”
require ‘bundler/setup’
Bundler.require(:default, ENV[‘SINATRA_ENV’])
ActiveRecord::Base.establish_connection(
:adapter => “sqlite3”,
:database => “db/#{ENV[‘SINATRA_ENV’]}.sqlite”

require_all {'mvc'}
)
require_all {'db'}
require_all{'config'}
require_all {'css'}
require_all {'mvc/controllers'}
require_all {'mvc/models'}
require_all {'mvc/views'}
require_all {'public'}



