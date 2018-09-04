module DeviseWhitelist
	extend ActiveSupport::Concern

	included do
		before_action :configure_permitted_attributes, if: :devise_controller?
	end


	def configure_permitted_attributes
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end