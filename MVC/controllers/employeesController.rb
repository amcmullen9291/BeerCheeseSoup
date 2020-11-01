class EmployeesController < Sinatra::Base

    get '/' do
        "first try"
    end

    post '/' do #for submitting w/e cards
    end

    put '/:badge_id/' do  #use to reset entire w/e form
    end

    patch '/:badge_id/' do #but only to change current week hours##
    end

end
