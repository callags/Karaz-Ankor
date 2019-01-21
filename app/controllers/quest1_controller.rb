class Quest1Controller < ApplicationController
	def index

	end
	
	def show
	
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host
	
		if url.include?('articles')
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
	end 
end
