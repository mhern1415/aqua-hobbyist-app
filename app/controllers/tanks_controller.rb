class TanksController < ApplicationController
  
  get "/tanks" do
    @tanks = Tank.all 
    erb :"tanks/index"
  end
  
  get "/tanks/new" do
    erb :"tanks/new"
  end 
  
  post "/tanks" do
    #Each Tank input is validated within their models. 
    @tank = Tank.new(title: params[:title], image_url: params[:image_url], size: params[:size], flora: params[:flora], user_id: current_user.id)
    if @tank.save
      redirect "/tanks/#{@tank.id}"
    else
      flash[:error] = "Post creation failed: #{@tank.errors.full_messages.to_sentence}!"
      redirect "/tanks/new"
    end
  end
  
  get '/tanks/:id' do
    @tank = Tank.find(params[:id])
    erb :"/tanks/show"
  end
  
  get "/tanks/:id/edit" do
    @tank = Tank.find(params[:id])
    erb :"tanks/edit"
  end
  
  patch "/tanks/:id" do 
    @tank = Tank.find(params[:id])
    @tank.update(title: params[:title], image_url: params[:image_url], size: params[:size], flora: params[:flora])
    redirect "/tanks/#{@tank.id}"
  end
    
    
  delete '/tanks/:id' do
    @tank = Tank.find(params[:id])
    @tank.destroy
    redirect '/tanks'
  end
  
  
end