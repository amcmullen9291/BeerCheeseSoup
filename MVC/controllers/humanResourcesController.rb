class HumanResourcesController < employeesController

    get '/hr' do  #sign for "HR Portal"

    end

    get '/hr' do
        session.clear
        flash[:notice] = "H.R. Portal"
        Employees.Staff.find_by last_name: params[:last_name]
        sessions[:first_name] = @first_name
        sessions[:badge_id] = @badge_id
        sessions[:start_date] = @start_date
        sessions[:last_name] = @last_name
        @dept = sessions[:dept_id]
        @emp = Department.find_by(:id == @dept)
        @name = @emp.name
        erb :hr_profile
    end

    post '/hr/:badge_id' do #to show employee profiles
    end

    post '/hr/:badge_id/change ' do #to show amended profiles
    end

    patch '/hr/:badge_id/timecard/modify' do  #to channge salary and department info. add 'edit' button
    end

    delete '/:badge_id/timecard/delete' do
        @Staff.map |badge_id| do
        record = Employee.Staff.find_by :badge_id
        record.destroy
        end
        flash[:notice] = "Record destroyed."
    end

    post '/hr/:badge_id/none2h67' do #to show deleted profiles MESSAGE -- could use flash?
    end

    post '/hr/new' do #to show new profile
    end


end