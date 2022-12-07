class Api::V1::ReservationsController < ApplicationController
  # get /api/v1/users/1/reservations
  def index
    p params[:user_id]
    reservations = Reservation.where(user_id: params[:user_id])
    render json: reservations, status: :ok
  end

  # post /api/v1/users/1/reservations
  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: reservation, status: :ok
    else
      render json: reservation.errors, status: :unprocessable_entity
    end
  end

  # get /api/v1/users/1/reservations/1
  def show
    reservation = Reservation.where(id: params[:id], user_id: params[:user_id])
    render json: reservation, status: :ok
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:bike_id, :start_date, :end_date, :location, :user_id)
  end
end
