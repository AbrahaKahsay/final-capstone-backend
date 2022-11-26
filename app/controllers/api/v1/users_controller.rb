class Api::V1::UsersController < ApplicationController

  def create 
    user = User.new(user_params)
    
    if user.save
      render json: user, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def index
    user = User.find_by(name: params[:name])
    render json: user
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
