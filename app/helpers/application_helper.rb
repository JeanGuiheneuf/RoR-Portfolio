module ApplicationHelper
	def login_helper style
		if current_user.is_a?(GuestUser)
	      (link_to 'log in', new_user_session_path, class: style)+
	      " ".html_safe + 
	      (link_to 'sign up', new_user_registration_path, class: style) 
	    else
	      (link_to 'logout', destroy_user_session_path, method: :delete, class: style)+
	      " ".html_safe + 
	      (link_to 'edit profile',edit_user_registration_path, class: style)
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
