class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permitting the additional attributes for sign up and account update
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :last_name, :photo, :address, :country, :telephone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :last_name, :photo, :address, :country, :telephone])
  end
end
