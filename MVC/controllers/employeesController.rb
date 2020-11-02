class EmployeesController < Sinatra::Base

    get '/' do
        erb :home
    end

    post '/:badge_id/paidweeks' do #for submitting w/e cards
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
        erb :paidweeks
    end

    patch '/:badge_id/timecard/reset' do #use to reset entire w/e form
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end

        erb :hours_log
    end

    get '/:badge_id/timecard' do
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
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

    get '/:badge_id' do #shows employee profile
        #add instance variables (@var)
        erb :profile
    end

    get '/registrations' do
        erb :signup
    end
end
