class HrTable < Activerecord::migration[6.0]
    def change
    sql = <<- SQL
        CREATE TABLE if not exists HumanResources(
        first_name text,
        last_name text,
        dept text,
    );
    SQL
    ActiveRecord::Base.connection.execute(sql)
    end
end
