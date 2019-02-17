class Quest1Controller < ApplicationController
	def index
	  @articles = Article.all
	  
	end
	
	def create
	  
	  @response = params[:section_1_input]
	  
	  if @response == "1"
		@response = "1a"
	  elsif @response == "2"
		@response = "1b"
	  elsif @response == "3"
		@response = "1c"
	  end
	  
	  @path1 = "/" + "#{@response}" + "/q1sub1" 
	  
	  if @path1 == "/1a/q1sub1"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1b/q1sub1" 
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1c/q1sub1"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  else
		redirect_to "#{pathfinder_quest1_index_path}" if @path1.present?
	  end
	  
	end
	
	def show
		
	end 
end
