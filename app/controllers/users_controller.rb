class UsersController < ApplicationController
	def user_params
		params.require(:user).permit(:email, :role)
	end
end
