class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: {minimum: 5}
	validates :text, presence: true	

	# include Bootsy::Container
end
