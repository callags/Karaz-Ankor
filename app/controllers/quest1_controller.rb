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
	  
	  @path1 = "/selection_" + "#{@response}"
	  
	  if @path1 == "/selection_1a"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/selection_1b"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/selection_1c"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  else
		redirect_to "#{pathfinder_quest1_index_path}" if @path1.present?
	  end
	end
	
	def show
		@articles = Article.all
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
		if url.include?('articles')
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
	
		elsif url == ('/pathfinder/a/quest1/selection_1a')
			@user_input = "1a"
			render 'quest1/index'
			
		elsif url == ('/pathfinder/a/quest1/selection_1b')
			@user_input = "1b"
			render 'quest1/index'

		elsif url == ('/pathfinder/a/quest1/selection_1c')
			@user_input = "1c"
			render 'quest1/index'

		end
	end 
end
