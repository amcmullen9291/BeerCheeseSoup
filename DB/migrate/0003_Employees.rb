class Employees < ActiveRecord::migration
    def change
        create_table :HumanResources do |t|
            t.string :first_name
            t.string :last_name
            t.integer :salary
            t.string :dept_id
        end
    end
end
