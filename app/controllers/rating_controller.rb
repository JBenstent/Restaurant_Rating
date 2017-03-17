class RatingController < ApplicationController

  def showratingform
  end

  def create_rating
    @rating = Rating.create(rating: params[:rating], user_id: session[:user_id], restaurant_id: params[:restaurant_id])

    @restaurant = Restaurant.find(params[:restaurant_id])

    ratings = @restaurant.ratings
    avg = ratings.average(:rating)

    @restaurant.avgrating = avg
    @restaurant.save
    redirect_to "/"

  end
end
