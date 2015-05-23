class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles	
  # belongs_to :resource, :polymorphic => true
  # belongs_to :users, :polymorphic => true

  def name?
  	current_user.role.name
  end
end
