class Api::V1::BikesController < ApplicationController
  # GET /api/v1/bikes
  def index
    @bikes = Bike.all
    render json: @bikes
  end
end
