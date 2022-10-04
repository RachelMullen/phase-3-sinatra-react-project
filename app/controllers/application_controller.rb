class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # User Routes
  # Get User & In Progress
  get '/users/:username/:password' do
    user = User.find_by(username: params[:username])
    in_progress = user.hunts.uniq
    [user, in_progress].to_json
    if (user.password == params[:password])
      [user, in_progress].to_json
    else
      "No user with that username and password was found."
    end
  end

  post '/users' do
    if (!User.all.find_by(username: params[:username]))
      User.create(username: params[:username], password: params[:password]).to_json
    else
      "A user with this username already exists."
    end
  end

  # Get Current Game
  get "/games/:user_id/:hunt_id" do
    User.find(params[:user_id]).visits.where(hunt_id: params[:hunt_id]).to_json
  end

  # Update visit completed status
  patch "/visits/:visit_id" do
    visit = Visit.find(params[:visit_id])
    visit.update(complete: params[:complete])
    visit.to_json
  end

  # Add a comment
  post "/:place_id/comments" do
    Comment.create(body: params[:body], place_id: params[:place_id], user_id: params[:user_id])
  end
 
end
