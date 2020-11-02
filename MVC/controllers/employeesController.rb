class EmployeesController < Sinatra::Base

    get '/' do
        erb :login
    end

    post '/:badge_id/paidweeks' do #for submitting w/e cards
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
        erb :paidweeks
    end

    put '/:badge_id/' do  #use to reset entire w/e form
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
    end

    patch '/:badge_id/save' do #but only to change current        week hours##
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
    end

    get '/:badge_id/timecard' do
        @badge_id = Staff.select do |employee|
            employee.badge_id == params[:badge_id]
        end
        <%
        @hours1 =
        erb :hours_log
    end
end
