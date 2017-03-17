class RatingController < ApplicationController

  def showratingform
  end

  def create_rating
    @rating = Rating.create(rating: params[:rating], user_id: session[:user_id], restaurant_id: params[:restaurant_id])

    @rest_rating= Rating.find_by(restaurant_id: params[:restaurant_id])

    puts '$' * 50
    puts "#{@rest_rating.rating}"

    #
    # @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_to "/"
  end
end
