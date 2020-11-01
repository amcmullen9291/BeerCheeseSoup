class HrTable < ActiveRecord::migration
    def change
        create_table :HumanResources do |t|
            t.string :first_name
            t.string :last_name
            t.string :dept
        end
    #sql = <<- SQL
        #CREATE TABLE if not exists HumanResources(
        #first_name text,
        #last_name text,
       # dept text,
    #);
    #SQL
    #ActiveRecord::Base.connection.execute(sql)
    end
end
