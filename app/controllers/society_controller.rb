class SocietyController < ApplicationController
	def index
	end
	
	def show
		@articles = Article.all
		url = request.path_info
		url_reset = society_index_path
		host = request.host
		
		if url == ('/society/articles')
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset

		elsif url == ('/society/social')
			render 'social/index'
			
		elsif url == ('/society/language')
			render 'language/index'

		elsif url == ('/society/military')
			render 'military/index'

		elsif url == ('/society/magic')
			render 'magic/index'
		
		elsif url == ('/society/religion')
			render 'religion/index'
		
		elsif url == ('/society/guilds')
			render 'guilds/index'
		
		elsif url == ('/society/government')
			render 'government/index'
		
		elsif url == ('/society/economy')
			render 'economy/index'
		
		elsif url == ('/society/prominent')
			render 'prominent/index'
		
		elsif url == ('/society/diplomacy')
			render 'diplomacy/index'
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
	end
end
