class UsersController < ApplicationController
  skip_before_action :require_login!, only: :create

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created # 201
    else
      render json: {errors: @user.errors}, status: :unprocessable_entity
    end
  end

  # GET /profile
  def show
    render json: current_user
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
