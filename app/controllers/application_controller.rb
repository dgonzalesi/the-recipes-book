class ApplicationController < ActionController::Base
	protect_from_forgery prepend: true

	before_action :update_allowed_parameters, if: :devise_controller?

	protected

	def update_allowed_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end

class RegistrationsController < Devise::RegistrationsController
	before_action :authenticate_user!
end
