class Api::V1::Users::SessionsController < Devise::SessionsController
  include ActionController::Flash
  respond_to :json

  def create
    email = params[:user][:email]
    user = User.find_by(email: email)

    if user&.valid_password?(params[:user][:password])
    render json: {
    message: 'You are logged in.',
    user: user
    }, status: :ok
    else
    render json: {
    message: 'Invalid email or password.',
    error: 'User not found or incorrect password.'
    }, status: :unauthorized
    end
    end

  private

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end

end
