class Q1sub1Controller < ApplicationController
	def index
		
		@articles = Article.all
		
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
	
		if url.include?('1a') 
			@user_input = "1a"
		elsif url.include?('1b')  
			@user_input = "1b"
		elsif url.include?('1c')  
			@user_input = "1c"
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset

		end
		
	end
	
	def create
	  
	  @response_sub1 = params[:section_sub1_input]
	  
	  if @response_sub1 == "1"
		@response_sub1 = "1a1"
	  elsif @response_sub1 == "2"
		@response_sub1 = "1a2"
	  end
	  
	  @path1_sub1 = "/" + "#{@response_sub1}" + "/q1sub1a"
	  
	  if @path1_sub1 == "/1a1/q1sub1a"
		redirect_to "#{pathfinder_quest1_q1sub1_index_path}#{@path1_sub1}" if "#{@path1_sub1}".present?
	  elsif @path1_sub1 == "/1a2/q1sub1a"
		redirect_to "#{pathfinder_quest1_q1sub1_index_path}#{@path1_sub1}" if "#{@path1_sub1}".present?
	  end
	  
	end
	
	def show
		
	end
	
end
