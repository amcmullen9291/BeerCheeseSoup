class DepartmentTable < ActiveRecord::migration
    def change
        create_table :Departments do |t|
            t.string :dept
        end
    end
end
