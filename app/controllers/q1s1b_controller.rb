class Q1s1bController < ApplicationController
	
	
	def index
	
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		
	end
	
	def create
	
		@response_sub1b = params[:section_sub1b_input]
		
		if @response_sub1b == "1"
		  @response_sub1b = "1c1"
		  @path1_sub1b = "/" + "#{@response_sub1b}" + "/q1s1c#1c"
		elsif @response_sub1b == "2"
		  @response_sub1b = "1c2"
		  @path1_sub1b = "/" + "#{@response_sub1b}" + "/q1s1c#1c"
		end
		
		if @path1_sub1b == "/1c1/q1s1c#1c"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_index_path}#{@path1_sub1b}" if "#{@path1_sub1b}".present?
		elsif @path1_sub1b == "/1c2/q1s1c#1c"
		  redirect_to "#{pathfinder_q1_q1s1_q1s1a_q1s1b_index_path}#{@path1_sub1b}" if "#{@path1_sub1b}".present?
		end
	end
end
