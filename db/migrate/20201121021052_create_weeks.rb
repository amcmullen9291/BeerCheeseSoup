class CreateWeeks < ActiveRecord::Migration[6.0]

  def change
    unless ActiveRecord::Base.connection.table_exists?('Weeks')
      create_table :Weeks do |t|
        t.integer :badge_id
        t.string :last_name
        t.datetime :week_ending
        t.integer :monday
        t.integer :tuesday
        t.integer :wednesday
        t.integer :thursday
        t.integer :friday
        t.integer :saturday
        t.integer :sunday
      end
    end
  end

end
