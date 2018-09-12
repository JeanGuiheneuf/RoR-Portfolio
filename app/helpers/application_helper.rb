module ApplicationHelper
	def login_helper
		if current_user.is_a?(User)
	      (link_to 'logout', destroy_user_session_path, method: :delete)+
	      "<br>".html_safe +
	      (link_to 'edit profile',edit_user_registration_path)
	    else
	      (link_to 'log in', new_user_session_path)+
	      "<br>".html_safe +
	      (link_to 'sign up', new_user_registration_path) 
	    end 

	end
end
