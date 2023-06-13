class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  include ActionController::Flash
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      register_success(resource)
    else
      register_failed(resource)
    end
  end

  def register_success(resource)
    render json: {
      message: 'Signed up successfully.',
      user: resource
    }, status: :ok
  end

  def register_failed(_resource)
    render json: { message: 'Sorry, something went wrong.' }, status: :unprocessable_entity
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
