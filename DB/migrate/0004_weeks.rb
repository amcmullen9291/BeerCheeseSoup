class Weeks < ActiveRecord::migration
    def change
        create_table :Weeks do |t|
            t.string :last_name
            t.integer :hours
            t.string :employee_id
        end
    end
end


#could add w/e
