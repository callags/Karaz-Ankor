class Q1s3Controller < ApplicationController

	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		@user_input_sub1b = Q1Controller.url_sub1c(url)
		@user_input_sub1c = Q1Controller.url_sub1d(url)
		@user_input_sub1d = Q1Controller.url_sub2(url)
		@user_input_sub2 = Q1Controller.url_sub2a(url)
		@user_input_sub2a = Q1Controller.url_sub3(url)
	end
	
	def create
		@response_sub3 = params[:section_sub3_input]
		
		if @response_sub3 == "1"
			@response_sub3 = "3a1"
			@path1_sub3 = "/" + "#{@response_sub3}" + "/q1s3a#3a"
		elsif @response_sub3 == "2"
			@response_sub3 = "3a2"
			@path1_sub3 = "/" + "#{@response_sub3}" + "/q1s3a#3a"
		end
		
		if @path1_sub3 == "/3a1/q1s3a#3a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub2a}" if "#{@path1_sub3}".present?
		elsif @path1_sub3 == "3a2/q1s3a#3a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub2a}" if "#{@path1_sub3}".present?
		end
	end
end
