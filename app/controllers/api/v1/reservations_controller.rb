class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.where(params[:user_id])
    render json: reservations, status: :ok
  end
  def create
    reservation = Reservation.new(params)

    if reservation.save
      render json: reservation, status: :ok
    else
      render json: reservation.errors, status: :unprocessable_entity
    end
  end
  def show

  end
end
