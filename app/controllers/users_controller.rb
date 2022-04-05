class UsersController < ApplicationController

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created # 201
    else
      render json: {errors: @user.errors}, status: :unprocessable_entity
    end
  end


  private

  def user_params
    params.permit(:email, :password)
  end
end
