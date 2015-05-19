class Ability
  include CanCan::Ability

  def initialize(user)
    guest = User.new
    guest.role = Role.new
    guest.role.name = "Default"
    user ||= guest # Guest user
    if user.admin?
        can :manage :all
    elsif user.default?
        can :read :all            
    end        
  end
end
