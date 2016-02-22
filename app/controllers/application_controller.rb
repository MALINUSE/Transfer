class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :set_redirect_path, unless: :user_signed_in?

  def set_redirect_path
    @redirect_path = request.path
  end

  def after_sign_in_path_for(resource)
    if params[:redirect_to].present?
      store_location_for(resource, params[:redirect_to])
    elsif request.referer == new_user_session_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  def configure_devise_permitted_parameters
    registration_params = [:nom, :prenom, :username, :email, :password, :password_confirmation, :role, account_attributes: [:subdomain]]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(registration_params << :current_password) }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(registration_params) }
    end
  end
end
