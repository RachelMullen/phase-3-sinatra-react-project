class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # User Routes
  # Get User & In Progress
  get '/users/:username/:password' do
    user = User.find_by(username: params[:username])
    if (user.password == params[:password])
      [user, user.lists, user.in_progress, user.stats].to_json
    else
      "No user with that username and password was found."
    end
  end

  post '/users' do
    if (!User.all.find_by(username: params[:username]))
      user = User.create(username: params[:username], password: params[:password])
      [user, user.lists, user.in_progress, user.stats].to_json
    else
      "A user with this username already exists."
    end
  end

  # Get A Game
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
    Comment.create(body: params[:body], place_id: params[:place_id], user_id: params[:user_id]).to_json
  end

  # Get public 
  get "/public" do
    Hunt.where(public: true).uniq.map{|h| {h.title => h}}.to_json
  end

  # Get user dashboard things!
  get "/:user_id/lists" do
    favorites = User.find(params[:user_id]).visits.where(favorite: true).to_json(include: :place)
    wishlist = User.find(params[:user_id]).visits.where(wishlist: true).to_json(include: :place)
    avoids = User.find(params[:user_id]).visits.where(avoid: true).to_json(include: :place)
    [favorites, wishlist, avoids]
  end

  #Start a Hunt
  get "/:user_id/:hunt_id/start" do
    User.find(params[:user_id]).start_hunt(Hunt.find(params[:hunt_id])).to_json
  end

  patch "/:visit_id" do
    Visit.find(params[:visit_id]).update(complete: params[:complete]).to_json
  end

  delete "/:user_id/destroy" do
    User.find(params[:user_id]).destroy.to_json
  end

  patch "/:user_id/bioupdate" do
    User.find(params[:user_id]).update(bio: params[:bio]).to_json
  end

  delete "/deletewebsite" do
    [User.destroy_all.to_json,
    Visit.destroy_all.to_json,
    Place.destroy_all.to_json,
    Hunt.destroy_all.to_json,
    Comment.destroy_all.to_json]
  end
 
end
