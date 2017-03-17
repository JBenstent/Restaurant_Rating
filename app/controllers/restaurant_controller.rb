class RestaurantController < ApplicationController
  def create
  end

  def submit
    Restaurant.create(name: params[:name], user_id: session[:user_id])
    redirect_to '/'
  end

  def display_all
    @restaurant = Restaurant.all
  end
end
