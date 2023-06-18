class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[user email password password_confirmation name])
    devise_parameter_sanitizer.permit(:create, keys: %i[data image_url user_id])
  end
end
