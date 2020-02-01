class PathfinderController < ApplicationController

	def index
		@articles = Article.all
	end
	
	def show
	
		@articles = Article.all
		url = request.path_info
		url_reset = pathfinder_index_path
		host = request.host
		
		if url == ('/pathfinder/articles')
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
	end
end
