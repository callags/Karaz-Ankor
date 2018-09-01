class PathfinderController < ApplicationController

	def index
		if params[:q].present?
			@input = "#{params[:q]}" 
		end
	end
	def show
	
		@articles = Article.all
		url = request.path_info
		url_reset = pathfinder_index_path
		host = request.host
		
		if url.include?('articles')
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		
		elsif url == ('/pathfinder/quest1')
			render 'quest1/index'
		
		elsif url == ('/pathfinder/quest2')
			render 'quest2/index'
		
		elsif url == ('/pathfinder/quest3')
			render 'quest3/index'
		
		elsif url == ('/pathfinder/quest4')
			render 'quest4/index'
		
		elsif url == ('/pathfinder/quest5')
			render 'quest5/index'
		
		elsif url == ('/pathfinder/quest6')
			render 'quest6/index'
		
		elsif url == ('/pathfinder/quest7')
			render 'quest7/index'
		
		elsif url == ('/pathfinder/quest8')
			render 'quest8/index'
		
		elsif url == ('/pathfinder/quest9')
			render 'quest9/index'
		
		elsif url == ('/pathfinder/quest10')
			render 'quest10/index'
		
		elsif url == ('/pathfinder/quest11')
			render 'quest11/index'
		
		elsif url == ('/pathfinder/quest12')
			render 'quest12/index'
		
		elsif url == ('/pathfinder/quest13')
			render 'quest13/index'
		
		elsif url == ('/pathfinder/quest14')
			render 'quest14/index'
		
		elsif url == ('/pathfinder/quest15')
			render 'quest15/index'
		
		elsif url ==('/pathfinder/quest16')
			render 'quest16/index'
		
		elsif url ==('/pathfinder/quest17')
			render 'quest17/index'
		
		elsif url == ('/pathfinder/quest18')
			render 'quest18/index'
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
	end
end
