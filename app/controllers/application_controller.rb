class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # User Routes
  # Get User & In Progress
  get '/users/:username' do
    user = User.find_by(username: params[:username]).to_json
    in_progress = user.hunts.uniq
    [user, in_progress]
  end

  post '/users' do
    if (!User.all.find_by(username: params[:username]))
      user = User.create(username: params[:username], password: params[:password]).to_json
      in_progress = user.hunts.uniq
      [user, in_progress]
    else
      nil
    end
  end

  # Get Current Game
  get "/hunts/:user_id/:hunt_id/" do
    User.find(params[:user_id]).visits.where(hunt_id: params[:id])
  end
 
end
