class UsersController < ApplicationController
  
  get "/login" do
    erb :"users/login"
  end
  
  post "/login" do
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      binding.pry
      
    else
      redirect "/login"
    end
  end
  
  
  
end