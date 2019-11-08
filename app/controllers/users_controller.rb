class UsersController < ApplicationController
  
  get "/login" do
    erb :"users/login"
  end
  
  post "/login" do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:message] = "Welcome back, #{user.name}!"
      redirect "/users/#{user.id}"
    else
      flash[:error] = "Whoops! Username or password incorrect"
      redirect "/login"
    end
  end
  
  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    erb :'/users/show'
  end

  get '/signup' do
    #render my sign form
    erb :'/users/signup'
  end

  # post sign up route that recieve input data from user, create the user, and logs user in
  post '/users' do
    # will eventually need to add validations to confirm all inputs are filled out before creating user
    @user = User.create(params)
    # post sign up route to create user using params and add key/value pair to sessions hash
    session[:user_id] = @user.id
    # redirect to user profile
    redirect "/users/#{@user.id}"
  end

  # LOG OUT
  # get logout that clears the session hash
  get '/logout' do
    #binding.pry
    session.clear
    #binding.pry
    # redirect to home/landing page
    redirect '/'
  end
  
  
end