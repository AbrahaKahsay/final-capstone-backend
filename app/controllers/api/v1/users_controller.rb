class Api::V1::UsersController < ApplicationController

  # post api/v1/users => params should be on body
  def create 
    user = User.new(user_params)
    
    if user.save
      render json: user, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # get api/v1/users
  def index
    users = User.all
    render json: users
  end

  # get api/v1/login
  def login
    user = User.find_by(name: params[:name])
    unless user.nil?
      render json: user
    else
      render json: 'This user is not in database'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
