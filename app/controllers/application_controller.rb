class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	include ApplicationHelper
	before_action :configure_permitted_parameters, if: :devise_controller? 

 	protect_from_forgery with: :exception

end

	private

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
		devise_parameter_sanitizer.permit(:account_updatet, keys: [:username])
	end
