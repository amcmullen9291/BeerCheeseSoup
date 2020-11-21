##solely for rolecall and profile
require_relative '../../config/environment'

class Department < Employee
    has_many :employees

@Staff=()

    def self.new(name)
        department = Department.new
        @@Staff << department
    end

end
