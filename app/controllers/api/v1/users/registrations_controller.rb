class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  include Devise::Controllers::Helpers
  include ActionController::Flash
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      message: 'Signed up successfully.',
      user: resource
    }, status: :ok
  end

  def register_failed
    render json: { message: 'Sorry, something went wrong.', errors: resource.errors.full_messages },
           status: :unprocessable_entity
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
