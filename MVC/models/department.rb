##solely for rolecall and profile
class Department < ActiveRecord::Base
    has_many :employees

@@Staff=()

    def self.new(name)
        department = Department.new
        @@Staff << department
    end

end
