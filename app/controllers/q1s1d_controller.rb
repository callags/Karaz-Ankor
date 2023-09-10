class Q1s1dController < ApplicationController

	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		@user_input_sub1b = Q1Controller.url_sub1c(url)
		@user_input_sub1c = Q1Controller.url_sub1d(url)
	
		params.merge(survival: rand(1..100)) if params[:survival].blank?
		@survival = params[:survival].to_i
		session[:survival] = @survival
	end

	def create
		@response_sub1d = params[:section_sub1d_input]
		
		if @response_sub1d == "1"
			@response_sub1d = "2a"
			@path1_sub1d = "/" + "#{@response_sub1d}" + "/q1s2#2"
		elsif @response_sub1d == "2"
			@response_sub1d = "2b"
			@path1_sub1d = "/" + "#{@response_sub1d}" + "/q1s2#2"
		end
		
		if @path1_sub1d == "/2a/q1s2#2"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_index_path}"\
					  "#{@path1_sub1d}" if "#{@path1_sub1d}".present?
		elsif @path1_sub1d == "/2b/q1s2#2"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_q1s1c_q1s1d_index_path}"\
					  "#{@path1_sub1d}" if "#{@path1_sub1d}".present?
		end 
	end 
end
