class Q1s2Controller < ApplicationController

	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		@user_input_sub1b = Q1Controller.url_sub1c(url)
		@user_input_sub1c = Q1Controller.url_sub1d(url)
		@user_input_sub1d = Q1Controller.url_sub2(url)
	end
	
	def create
		@response_sub2 = params[:section_sub2_input]
		
		if @response_sub2 == "1"
			@response_sub2 = "2a1"
			@path1_sub2 = "/" + "#{@response_sub2}" + "/q1s2a#2a"
		elsif @response_sub2 == "2"
			@response_sub2 = "2a2"
			@path1_sub2 = "/" + "#{@response_sub2}" + "/q1s2a#2a"
		end
		
		if @path1_sub2 == "/2a1/q1s2a#2a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_index_path}"\
			"#{@path1_sub2}" if "#{@path1_sub2}".present?
		elsif @path1_sub2 == "/2a2/q1s2a#2a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_index_path}"\
			"#{@path1_sub2}" if "#{@path1_sub2}".present?
		end
	end
end
