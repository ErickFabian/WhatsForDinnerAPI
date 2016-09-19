class ReviewsController < ApplicationController

  def index
    @reviews = Review.
      ransack(JSON.parse(params[:q])).
      result(distinct: true)

    render json: @reviews
  end

  def create
    @review = Review.new(permitted_attributes(Review))

    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end
end