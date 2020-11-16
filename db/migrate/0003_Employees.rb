#if it works, only use the HR table. remove this!
class Employees < ActiveRecord::migration
    def change
        create_table :Employees do |t|
            t.integer :badge_id
            t.string :first_name
            t.string :last_name
            t.string :email_address
            t.tel :telephone
            t.string :dept_id
        end
    end
end
