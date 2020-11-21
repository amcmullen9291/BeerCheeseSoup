class Weeks < ActiveRecord::Migration[6.0]
    def change
        create_table :Weeks do |t|
            t.integer :badge_id
            t.string :last_name
            t.datetime :weekending
            t.integer :monday
            t.integer :tuesday
            t.integer :wednesday
            t.integer :thursday
            t.integer :friday
            t.integer :saturday
            t.integer :sunday
            t.string :employee_id
        end
    end
end


#could add w/e
