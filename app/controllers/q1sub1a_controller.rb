class Q1sub1aController < ApplicationController

	def index
		@articles = Article.all
		
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
	
		if url.include?('1a1') 
			@user_input_sub1 = "1a1"
			if url.include?('1a') 
				@user_input = "1a"
			elsif url.include?('1b')  
				@user_input = "1b"
			elsif url.include?('1c')  
				@user_input = "1c"
			end
		elsif url.include?('1a2') 
			@user_input_sub1 = "1a2"
			if url.include?('1a') 
				@user_input = "1a"
			elsif url.include?('1b')  
				@user_input = "1b"
			elsif url.include?('1c')  
				@user_input = "1c"
			end
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset

		end
	end

end
