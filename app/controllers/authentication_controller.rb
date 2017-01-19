# app/controllers/authentication_controller.rb

class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])
    user = User.find_by(email: params[:email])

    if command.success?
      render json: { auth_token: command.result, name: user.name, avatar: user.avatar }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
