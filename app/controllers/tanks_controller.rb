class TanksController < ApplicationController
  
  get "/tanks" do
    @tanks = Tank.all 
    erb :"tanks/index"
  end
  
  get '/tanks/:id' do
    @tank = Tank.find(params[:id])
    erb :"/tanks/show"
  end
  
  
  
  
end