class ReviewsController < ApplicationController
  def index 
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@reviews = @restaurant.reviews
  end

  def show

  end

  def new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
  	@review.save!
  	redirect_to restaurant_reviews_path(@review.restaurant)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
