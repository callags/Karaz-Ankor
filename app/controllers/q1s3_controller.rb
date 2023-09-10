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
		
		@response_sub3b = params[:section_sub3b_input]
		
		if @response_sub3b == "1"
			@response_sub3b = "3b1"
			@path1_sub3b = "/" + "#{@response_sub3b}" + "/q1s3b#3b"
		elsif @response_sub3b == "2"
			@response_sub3b = "3b2"
			@path1_sub3b = "/" + "#{@response_sub3b}" + "/q1s3b#3b"
		end
		
		if @path1_sub3b == "/3b1/q1s3b#3b"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub3b}" if "#{@path1_sub3b}".present?
		elsif @path1_sub3b == "/3b2/q1s3b#3b"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub3b}" if "#{@path1_sub3b}".present?
		end
		
		@response_sub3a = params[:section_sub3a_input]
		
		if @response_sub3a == "1"
			@response_sub3a = "3a1"
			@path1_sub3a = "/" + "#{@response_sub3a}" + "/q1s3a#3a"
		elsif @response_sub3a == "2"
			@response_sub3a = "3a2"
			@path1_sub3a = "/" + "#{@response_sub3a}" + "/q1s3a#3a"
		end
		
		if @path1_sub3a == "/3a1/q1s3a#3a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub3a}" if "#{@path1_sub3a}".present?
		elsif @path1_sub3a == "/3a2/q1s3a#3a"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_q1s3_index_path}\
						#{@path1_sub3a}" if "#{@path1_sub3a}".present?
		end
	end
end