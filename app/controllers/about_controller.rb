class AboutController < ApplicationController
	
	def index
		@articles = Article.all
	end

	def show
		url_reset = about_index_path
		url = request.path_info
		host = request.host
	
		flash[:notice] = "Error, #{host}#{url} is not a valid URL"
		redirect_to url_reset
	end
	
end
