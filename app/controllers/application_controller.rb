class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:ap_pat, :ap_mat, :no_control,:colonia,:calle,:email, :password, :titulo, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:ap_pat, :ap_mat, :no_control,:colonia,:calle,:email, :password, :titulo, :image])
  end
end
