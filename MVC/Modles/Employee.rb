##Be casreful with edit/update functions##
class Employees < Activerecord::Base
    Belongs_to: Department
    attr_accessor :first_name, :last_name, :dept, :salary
    attr_reader :first_name, :last_name

Staff=()

    initialize (first_name, last_name, dept)
    name=[first_name, last_name, dept]
    Staff << name
    end

end
