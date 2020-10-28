require 'sinatra'
require_relative Config
require_all Databases
require_all MVC
require_all Public

Run EmployeeController
