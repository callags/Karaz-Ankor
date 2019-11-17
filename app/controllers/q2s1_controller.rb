class Q2s1Controller < ApplicationController

	def index
		
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q2Controller.url_sub1(url)
		#raise @user_input.inspect
	end
	
	def create
	
		@response_2 = params[:section_2_input]
		
		if @response_2 == "1"
			@response_2 = "1a1"
			@path2 = "/" + "#{@response_2}" + "/q2s2#1a1"
		elsif @response_2 == "2"
			@response_2 = "1b1"
			@path2 = "/" + "#{@response_2}" + "/q2s2#1b1"
		end
		
		if @path2 == "/1a1/q2s2#1a1"
			redirect_to "#{pathfinder_q2_q2s1_index_path}#{@path2}" if @path2.present?
		elsif @path2 == "/1b1/q2s2#1b1"
			redirect_to "#{pathfinder_q2_q2s1_index_path}#{@path2}" if @path2.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_index_path}" if not @path2.present?
		end
	end
end
