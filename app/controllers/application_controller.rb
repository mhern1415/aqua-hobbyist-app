require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_session" 
    register Sinatra::Flash
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end
  end
  
  helpers do
    
    def current_user
      User.find_by(id: session[:user_id])
    end
    
    def logged_in?
      !!current_user
    end
    
    def authorized_to_edit?(tank)
      tank.user == current_user
    end
    
  end

end
