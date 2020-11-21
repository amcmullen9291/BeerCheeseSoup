class CreateDepartments < ActiveRecord::Migration[6.0]

  def change
    unless ActiveRecord::Base.connection.table_exists?('Departments')
      create_table :Departments do |t|
        t.string :name
      end
    end
  end

end
