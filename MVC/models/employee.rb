##Be casreful with edit/update functions##
#take data from humanResources table
class Employee < ActiveRecord::Base
    belongs_to :department
    has_many :weeks
    has_secure_password

    @@Staff=[]

    def self.new (badge_id, first_name, last_name)
        employee = Employee.new
        @@Staff << employee
    end


end
