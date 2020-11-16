class employeesHoursController < employeesController


    post '/' do
    end

    get '/BCS/:badge_id' do #employee id
        sessions.clear
        @email = Employee.Staff.select do |employee|
            employee.email == params[:email]
        arams[:first_name] + " " + params[:last_name]).join
        @phone= params[:telephone]
        @dept = params[:dept_id]
        job = Department.Staff.find_by(:id == @dept)
        department.name = params[:badge_id]

        erb :profile
    end

    post '/BCS/:badge_id/paidweeks' do #for submitting w/e cards
        @badge_id = Staff.select |employee|
            employee.badge_id == params[:badge_id]
        erb :paidweeks
    end

    patch '/BCS/:badge_id/timecard/reset' do
        @badge_id = Staff.select |employee|
            employee.badge_id == params[:badge_id]
        erb :hours_log
    end

    get '/BCS/:badge_id/timecard' do #employee timecard
        @badge_id = Staff.select |employee|
            employee.badge_id == params[:badge_id]
        @hours1=(@out1-@in1)
        @hours2=(@out2-@in2)
        @hours3=(@out3-@in3)
        @hours4=(@out4-@in4)
        @hours5=(@out5-@in5)
        @hours6=(@out6-@in6)
        @hours7=(@out7-@in7)
        @weekly = (@hours1+@hours2+@hours3+@hours4+@hours5+@hours6+@hours7)
        erb :hours_log
    end

    delete '/BCS/:badge_id/timecard/delete' do #modify... to deleting a single weeks records. change addy
        @Staff.map |badge_id|
        @record = Employee.Staff.find_by :badge_id
        @record.destroy
        flash[:notice] = "Record destroyed."
    end

    patch '/hr/:badge_id/timecard/modify' do  #to channge salary and department info. add 'edit' button
    end

end
