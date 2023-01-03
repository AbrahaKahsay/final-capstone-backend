class Api::V1::BikesController < ApplicationController
  # GET /api/v1/bikes
  def index
    @bikes = Bike.all
    render json: @bikes
  end

  def show
    @bike = Bike.find(params[:id])
    render json: @bike
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      render json: @bike
    else
      render json: @bike.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :model, :photo, :power, :weight, :price, :description, :user_id)
  end
end
