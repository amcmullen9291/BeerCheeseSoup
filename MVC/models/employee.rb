#take data from humanResources table
require_relative '../../config/environment'
# require 'securerandom'

class Employee < ActiveRecord::Base
    has_secure_password
    has_many :weeks
    belongs_to :department

    @Staff=()

    def badgenumber (email)
        @Staff.clear
        digits= (rand(alphanumeric)).sample(8)
        firsts= (params[:firsts]).first.uppercase
        lasts= (params[:last]).last.uppercase
        badge_id = ("#{'firsts'}" + "."  + "#{'lasts'}" + "." "#{'digits'}").join
        @Staff << badge_id
    end

end
