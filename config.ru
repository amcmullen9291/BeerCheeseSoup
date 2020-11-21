require 'rubygems'
require 'bundler'
require_relative './config/environment'

Bundler.require

require 'mvc/controllers/employeeController.rb'
use Rack::MethodOverride
use employeeHoursController
use humanResourcesController
run employeeController

