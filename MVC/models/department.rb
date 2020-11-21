##solely for rolecall and profile
require_relative '../../config/environment'

class Deparrment < ActiveRecord::Base
    has_many :employees

    @Staff=()

end
