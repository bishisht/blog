class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :roles, :join_table => :users_roles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing_profile.png"
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  # User::Roles
  # The available Roles
  # Roles = [:admin, :default]

  # def is?(requested_role)
  # 	self.role == requested_role.to_s
  # end

  # def admin?
  #   self.role.name == "Admin"
  # end

  # def default?
  #   self.role.name == "Default"
  # end
  # 
  # def has_role?(role_sym)
  #   roles.any? { |r| r.name.unserscore.to_sym == role_sym }
  # end

  # In the following code you can change the way rails admin declares field on the backend.
  # rails_admin do
  #   edit do
  #     field :email
  #     field :role

  #   end
  # end


end
