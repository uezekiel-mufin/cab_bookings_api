class Api::V1::Users::SessionsController < Devise::SessionsController
  include ActionController::Flash
  respond_to :json

  before_action :set_flash_messages

  private

  def respond_with(resource, _opts = {})
    render json: {
      status: {
        code: 200,
        message: 'User signed in successfully',
        user: resource
      }
    }, status: :ok
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers['Authorization'].split[1],
                             Rails.application.credentials.fetch(:secret_key_base)).first
    current_user = User.find(jwt_payload['sub'])
    if current_user
      render json: {
        status: 200,
        message: 'Signed out successfully'
      }, status: :ok
    else
      render json: { message: 'Hmm, nothing happened.', errors: resource.errors.full_messages }, status: :unauthorized
    end
  end

  def set_flash_messages
    flash[:notice] = find_flash_message(:notice, :signed_in) if is_navigational_format?
    flash[:alert] = find_flash_message(:alert, :logout_failure) if is_navigational_format?
  end

  def find_flash_message(_key, kind, options = {})
    message = find_message(kind, options)
    message if message.present?
  end
end
