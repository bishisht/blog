class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	# rescue_from CanCan::AccessDenied do |exception|
	# 	redirect_to main_app.root_path, :alert => exception.message
	# end

 #  def current_user
	# 	if user_signed_in?
	# 		return @user.email
	# 	else
	# 		return "Guest"
	# 	end
	# end

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
	end

end
