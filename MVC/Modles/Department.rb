##solely for rolecall##
class Departments < Activerecord::Base
    attr_accessor :first_name, :last_name, :dept
    attr_reader :first_name, :last_name

Staff=()

    initialize (first_name, last_name, dept)
    name=[first_name, last_name, dept]
    Staff << name
    end

end
