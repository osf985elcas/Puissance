class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :layout_by_resource
  private
  def layout_by_resource
    if devise_controller? && !user_signed_in?
      "devise"
    else
      "application"
    end
  end
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombres, :apellidos, :direccion, :telefonoFijo, :telefonoMovil, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombres, :apellidos, :direccion, :telefonoFijo, :telefonoMovil, :email, :password, :current_password)}
  end
  include ApplicationHelper
end
