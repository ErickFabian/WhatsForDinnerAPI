class FoodStandsController < ApplicationController
  before_action :find_food_stand, only: [:show, :destroy]

  def index
    @food_stands = FoodStand.all
    render json: @food_stands
  end

  def show
    render json: @food_stand
  end

  def create
    puts params.inspect
    @food_stand = FoodStand.new(permitted_attributes(FoodStand))
    if @food_stand.save
      render json: @food_stand, status: 201, location: @food_stand
    else
      render json: @food_stand.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @food_stand.destroy
    render json: {}
  end

  private

  def find_food_stand
    @food_stand = FoodStand.find(params[:id])
  end
end