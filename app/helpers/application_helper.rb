module ApplicationHelper
	def login_helper
		if current_user.is_a?(GuestUser)
	      (link_to 'log in', new_user_session_path)+
	      "<br>".html_safe +
	      (link_to 'sign up', new_user_registration_path) 
	    else
	      (link_to 'logout', destroy_user_session_path, method: :delete)+
	      "<br>".html_safe +
	      (link_to 'edit profile',edit_user_registration_path)
	    end 

	end

	def source_helper(layout_name)
		if session[:source]
		greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      	content_tag( :div, greeting, class: "source-class")
    	end
	end

	def copyright_renderer
		GuiheneufViewTool::Renderer.copyright 'Jean Guiheneuf', 'All right reserved'
	end
end
