class Q1s2aController < ApplicationController

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
	end
	
	def create
		@response_sub2a = params[:section_sub2a_input]
		
		if @response_sub2a == "1"
			@response_sub2a = "3a"
			@path1_sub2a = "/" + "#{@response_sub2a}" + "/q1s3#3"
		elsif @response_sub2a == "2"
			@response_sub2a = "3b"
			@path1_sub2a = "/" + "#{@response_sub2a}" + "/q1s3#3"
		end
		
		if @path1_sub2a == "/3a/q1s3#3"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_index_path}\
						#{@path1_sub2a}" if "#{@path1_sub2a}".present?
		elsif @path1_sub2a == "/3b/q1s3#3"
			redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_q1s2_q1s2a_index_path}\
						#{@path1_sub2a}" if "#{@path1_sub2a}".present?
		end
	end
end
