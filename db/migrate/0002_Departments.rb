class DepartmentTable < ActiveRecord::Migration
    def change
        create_table :Departments do |t|
            t.string :name
        end
    end
end
