##Be casreful with edit/update functions##
class Employees < Activerecord::Base
    Belongs_to: Department
    has_many: weeks

Staff=()

    initialize (first_name, last_name, dept)
    name=[first_name, last_name, dept]
    Staff << name
    end

end
