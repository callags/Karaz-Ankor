class Q1sub1bController < ApplicationController
	def index
		@articles = Article.all
		
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
		if url.include?('1b1')
			@user_input_sub1a = "1b1"
			if url.include?('1a1') 
				@user_input_sub1 = "1a1"
				if url.include?('1a') 
					@user_input = "1a"
				elsif url.include?('1b')  
					@user_input = "1b"
				end
			elsif url.include?('1a2') 
				@user_input_sub1 = "1a2"
				if url.include?('1a') 
					@user_input = "1a"
				elsif url.include?('1b')  
					@user_input = "1b"
				end
			end
			
		elsif url.include?('1b2')
			@user_input_sub1a = "1b2"
			if url.include?('1a1') 
				@user_input_sub1 = "1a1"
				if url.include?('1a') 
					@user_input = "1a"
				elsif url.include?('1b')  
					@user_input = "1b"
				end
			elsif url.include?('1a2') 
				@user_input_sub1 = "1a2"
				if url.include?('1a') 
					@user_input = "1a"
				elsif url.include?('1b')  
					@user_input = "1b"
				end
			end
			
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset

		end
	end
	
	def create
	
	end
end
