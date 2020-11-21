
class DepartmentTable < ActiveRecord::Migration[6.0]
    def change
        create_table :Departments do |t|
            t.string :name
        end
    end
end
