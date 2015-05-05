class Ability
  include CanCan::Ability

  def initialize(user)
   # Handle the case where we dont have a current user. i,e the user is a guest
   user ||= User.new

   # Define a few sample abilities
   can :manage, Article
   cannot :manage, Comment
   can :read, Tag, released: true 
  end
end
