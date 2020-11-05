class HrTable < ActiveRecord::migration
    def change
        create_table :HumanResources do |t|
            t.integer :badge_id
            t.datetime :start_date
            t.string :address
            t.string :first_name
            t.string :last_name
            t.string :email_address
            t.tel :telephone
            t.string :dept_id
        end
    end
end

#remember sign up has an address field also
