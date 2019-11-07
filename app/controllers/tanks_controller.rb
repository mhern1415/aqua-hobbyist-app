class TanksController < ApplicationController
  
  get "/tanks" do
    @tanks = Tank.all 
    erb :"tanks/index"
  end
  
  get "/tanks/new" do
    erb :"tanks/new"
  end 
  
  post "/posts" do
    
  end
  
  get '/tanks/:id' do
    @tank = Tank.find(params[:id])
    erb :"/tanks/show"
  end
  

  
  
end