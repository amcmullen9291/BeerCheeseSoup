class DepartmentTable < ActiveRecord::migration
    def change
        create_table :HumanResources do |t|
            t.string :dept
        end

    #sql = <<- SQL
    #CREATE TABLE if not exists Departments(
        #PRIMARY KEY int,
        #department text,
    #);
    #SQL
    #ActiveRecord::Base.connection.execute(sql)
    end
end