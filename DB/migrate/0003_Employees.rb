class EmployeesTable < Activerecord::migration[6.0]
    def change
        create_table :HumanResources do |t|
            t.string :first_name
            t.string :last_name
            t.integer :salary
            t.string :dept
        end

    #sql = <<-SQL
    #CREATE TABLE if not exists Employees(
        #PRIMARY KEY int
        #first_name text,
        #last_name text,
        #salary int,
        #dept text,
    #);
    #SQL
    #ActiveRecord::Base.connection.execute(sql)
    end
end
