require_relative '/config/environment'

use Rack::MethodOverride
use employeesHoursController
use humanResourcesController
run employeesController

