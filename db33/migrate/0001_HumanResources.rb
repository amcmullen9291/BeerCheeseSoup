class HrTable < ActiveRecord::migration
    def change
        create_table :HumanResources do |t|
            t.integer :badge_id
            t.datetime :start_date
            t.string :first_name
            t.string :last_name
            t.integer :salary
            t.string :dept_id
        end
    end
end
