#if it works, only use the HR table. remove this!
class Employees < ActiveRecord::migration
    def change
        create_table :Employees do |t|
            t.integer :badge_id
            t.datetime :start_date
            t.string :first_name
            t.string :last_name
            t.integer :salary
            t.string :dept_id
        end
    end
end
