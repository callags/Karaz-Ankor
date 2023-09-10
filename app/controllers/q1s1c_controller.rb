class Q1s1cController < ApplicationController
	

	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		@user_input_sub1b = Q1Controller.url_sub1c(url)
		
	end
	
	def create
		params.merge!(survival: rand(1..100)) if params[:survival].blank?
		@survival = params[:survival]
		
		@response_sub1c = params[:section_sub1c_input]
		
		if @response_sub1c == "1"
			@response_sub1c = "1d1"
			@path1_sub1c = "/" + "#{@response_sub1c}" + "/q1s1d#1d"
		elsif @response_sub1c == "2"
			@response_sub1c = "1d2"
			@path1_sub1c = "/" + "#{@response_sub1c}" + "/q1s1d/?survival=#{@survival}#1d"
		end
		
		if @path1_sub1c == "/1d1/q1s1d#1d"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_index_path}#{@path1_sub1c}" if "#{@path1_sub1c}".present?
		elsif @path1_sub1c == "/1d2/q1s1d/?survival=#{@survival}#1d"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_index_path}#{@path1_sub1c}" if "#{@path1_sub1c}".present?
		end  
	end

end
