class HumanResourcesController < employeesController

    get '/' do
    end

    post '/hr/:badge_id' do #to show employee profiles
    end

    post '/hr/:badge_id/change ' do #to show amended profiles
    end

    patch '/hr/:badge_id/modify' do  #to channge salary and department info##
    end

    delete '/hr/:badge_id' do
    end

    post '/hr/:badge_id/none2h67' do #to show deleted profiles MESSAGE -- could use flash?
    end

    post '/hr/:badge_id/new' do #to show new profile
    end


end
