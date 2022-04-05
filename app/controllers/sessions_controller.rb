class SessionsController < ApplicationController
  
  # POST /login
  def create
    user = User.authenticate(params[:email], params[:password])

    if user
      render json: user, status: :ok
    else
      render json: {errors: "Invalid credentials"}, status: :unauthorized
    end
  end
end

