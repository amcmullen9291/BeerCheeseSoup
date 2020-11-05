class HumanResourcesController < employeesController


    get '/hr' do #hr's employee profiles
        session.clear
        flash[:notice] = "H.R. Portal"
        Employees.Staff.find_by last_name: params[:last_name]
        params[:first_name] = @first_name
        params[:badge_id] = @badge_id
        params[:start_date] = @start_date
        params[:last_name] = @last_name
        area = params[:dept_id]
        @dept = Department.Staff.find_by(:id == @dept)
        @name = department.name
        erb :hr_profile
    end

    delete '/:badge_id/timecard/delete' do
        @Staff.map |badge_id| do
        record = Employee.Staff.find_by :badge_id
        record.destroy
        end
        flash[:notice] = "Record destroyed."
    end

    post '/hr/new' do #to show new profile
    end


end
