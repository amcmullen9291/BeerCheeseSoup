class Create_Departments_Table < ActiveRecord::migration
    def change
        create_table :Departments do |t|
            t.string :name
        end
    end
end
