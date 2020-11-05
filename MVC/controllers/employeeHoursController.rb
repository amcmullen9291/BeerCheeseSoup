class employeesHoursController < employeesController

    get '/:badge_id' do #employee id
        sessions.clear
        @email = Employee.Staff.select do |employee|
            employee.email == params[:email]
        @badge_id= params[:badge_id]
        @named= (params[:first_name] + " " + params[:last_name]).join
        @phone= params[:telephone]
        @dept = params[:dept_id]
        @emp = Department.Staff.find_by(:id == @dept)

        erb :profile
    end

    post '' do
    end

    put '' do
    end

    patch '' do  #to add hours to timecard
    end

    delete '' do
    end

    post '/hr/:badge_id' do #to show employee profiles
    end

    post '/hr/:badge_id/change ' do #to show amended profiles
    end

    patch '/hr/:badge_id/timecard/modify' do  #to channge salary and department info. add 'edit' button
    end

end
