#take data from humanResources table
require_relative '../../config/environment'
require 'securerandom'

class Employee
    belongs_to :department
    has_many :weeks
    has_secure_password

    @Staff=()

    # def self.new (first_name, last_name)
    #     employee = Employee.new
    #     employee.first_name = params[:first_name]
    #     employee.last_name = params[:last_name]
    #     employee.telephone = params[:telephone]
    #     employee.email_address = params[:email_address]
    #     employee.badge_id = employee.badgenumber
    #     employee= [employee.first_name, employee.last_name, employee.telephone,employee.email_address, employee.badge_id  ]
    #     @@Staff << employee
    # end

    def badgenumber (email)
        @Staff.clear
        digits= (rand(alphanumeric)).sample(8)
        firsts= (params[:firsts]).first.uppercase
        lasts= (params[:last]).last.uppercase
        badge_id = ("#{'firsts'}" + "."  + "#{'lasts'}" + "." "#{'digits'}").join
        @Staff << badge_id
    end


end
