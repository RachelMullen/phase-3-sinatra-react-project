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
  get "/:user_id/:hunt_id/" do
    User.find(params[:user_id]).visits.where(hunt_id: params[:id]).to_json(include: :place)
  end

  # Visit a place
  patch "/:visit_id" do
    Visit.find(params[:visit_id]).update(complete: params[:complete])
  end

  # Add a comment
  post "/:place_id/comments" do
    Comment.create(body: params[:body], place_id: params[:place_id], user_id: params[:user_id])
  end
 
end
