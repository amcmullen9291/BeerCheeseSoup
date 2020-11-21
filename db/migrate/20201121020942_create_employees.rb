class CreateEmployees < ActiveRecord::Migration[6.0]

  def change
    unless ActiveRecord::Base.connection.table_exists?('employees')
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

end
