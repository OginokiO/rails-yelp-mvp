class ReviewsController < ApplicationController
  # POST /restaurants/:restaurant_id/reviews — Crear un nuevo review asociado al restaurante
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to @restaurant, notice: "Review was successfully created."
    else
      @restaurant = Restaurant.find(params[:restaurant_id])
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
