require_relative '../../config/environment'

class HumanResourcesController < EmployeeController


    get '/hr' do #employee profiles
        # session.clear
        # Employees.Staff.find_by last_name: params[:email_address]
        # params[:first_name] = @first_name
        # params[:badge_id] = @badge_id
        # params[:start_date] = @start_date
        # params[:last_name] = @last_name
        # area = params[:dept_id]  #create 4 rows in dept table matching the four radio btns in the signup
        # @name = Department.Staff.find_by(:id == @dept)
        # @dept = department.name
        erb :hr_profile
    end

    delete '/:badge_id/timecard/delete' do #modify... to deleting a single weeks records. change addy
        # @Staff.map |badge_id| do
        # record = Employee.Staff.find_by :badge_id
        # record.destroy
        # end
        flash[:notice] = "Record destroyed."
    end

    post '/hr/new' do #to show new profile

    end


end
