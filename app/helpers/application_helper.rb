module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png"
	end

	def is_active?(link_path)
		current_page?(link_path) ? "active" : ""
	end
	
end
