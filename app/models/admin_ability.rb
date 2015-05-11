class AdminAbility < ActiveRecord::Base
	include CanCan::Ability
	def initialize(user)
		# if user && user.admin?
		can :access, :rails_admin
		can :manage, :all
		# end
	end
end
