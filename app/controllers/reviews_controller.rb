class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
    # We need to permit the paramater for a review
    # We need to create a review
    # Then we link the restaurant(?) to the review
    # We try to save the review
    # If succesfull we redirect to restaurant show page
    # else we render new
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
