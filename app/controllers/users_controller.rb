class UsersController < ApplicationController
  
  get "/login" do
    erb :"users/login"
  end
  
  post "/login" do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      redirect "/login"
    end
  end
  
  get "/users/:id" do
    "users show page"
  end

  
  
  
end