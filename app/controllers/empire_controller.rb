class EmpireController < ApplicationController
	
	def index
	end
	
	def show
	
		@articles = Article.all
		url = request.path_info
		url_reset = empire_index_path
		host = request.host
			
		if url == ('/empire/peaks')
			render 'peaks/index'
		
		elsif url == ('/empire/hirn')
			render 'hirn/index'
		
		elsif url == ('/empire/drak')
			render 'drak/index'
		
		elsif url == ('/empire/drazh')
			render 'drazh/index'
		
		elsif url == ('/empire/izor')
			render 'izor/index'
		
		elsif url == ('/empire/zhufbar')
			render 'zhufbar/index'
		
		elsif url == ('/empire/azul')
			render 'azul/index'
		
		elsif url == ('/empire/azgal')
			render 'azgul/index'
		
		elsif url == ('/empire/agilwutraz')
			render 'agilwutraz/index'
		
		elsif url == ('/empire/gunbad')
			render 'gunbad/index'
		
		elsif url == ('/empire/norn')
			render 'norn/index'
		
		elsif url == ('/empire/ungor')
			render 'ungor/index'
		
		elsif url == ('/empire/ekrund')
			render 'ekrund/index'
		
		elsif url == ('/empire/varn')
			render 'varn/index'
		
		elsif url == ('/empire/vlag')
			render 'vlag/index'
		
		elsif url ==('/empire/varr')
			render 'varr/index'
		
		elsif url ==('/empire/capital')
			render 'capital/index'
		
		elsif url == ('/empire/kadrin')
			render 'kadrin/index'
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
	end
end
