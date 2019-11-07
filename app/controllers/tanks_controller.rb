class TanksController < ApplicationController
  
get "/tanks" do
  @tanks = Tank.all 
  erb :"tanks/index"
end
  
  
  
  
  
  
end