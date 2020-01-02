class Q2s4Controller < ApplicationController

	def index
	
		@articles = Article.all
		
		url = request.path

		@user_input = Q2Controller.url_sub1(url)
		@user_input_sub1 = Q2Controller.url_sub2(url)
		@user_input_sub2 = Q2Controller.url_sub3(url)
		
		if @user_input_sub2 == "3a"
			@user_input_sub3a = Q2Controller.url_sub3a(url)
			@user_input_sub3b = Q2Controller.url_sub3b(url)
			@user_input_sub3 = Q2Controller.url_sub4_1(url)
		elsif @user_input_sub2 == "3b"
			@user_input_sub3 = Q2Controller.url_sub4(url)
		end
		
	end
	
	def create
	
		url = request.path
		
		@user_input_sub2 = Q2Controller.url_sub3(url)
		if @user_input_sub2 == "3a"
			@user_input_sub3a = Q2Controller.url_sub3a(url)
			@user_input_sub3b = Q2Controller.url_sub3b(url)
			@user_input_sub3 = Q2Controller.url_sub4_1(url)
		elsif @user_input_sub2 == "3b"
			@user_input_sub3 = Q2Controller.url_sub4(url)
		end
		
		@response_5 = params[:section_5_input]
		if @user_input_sub3b == "3b2"
			create_q2s3b(@response_5)
		elsif @user_input_sub3a == "3a1"
			create_q2s3a(@response_5)
		elsif (@user_input_sub2 == "3b")
			create_q2s3(@response_5)
		end
		
	end
	
	def create_q2s3(response_5)
		
		@response_5 = response_5
		
		if @response_5 == "1"
			@response_5 = "5a"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5a"
		elsif @response_5 == "2"
			@response_5 = "5b"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5b"
		end
			
		if @path5 == "/5a/q2s5#5a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s4_index_path}#{@path5}" if @path5.present?
		elsif @path5 == "/5b/q2s5#5b"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s4_index_path}#{@path5}" if @path5.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s4_index_path}" if not @path5.present?
		end
		
	end
	
	def create_q2s3a(response_5)
		
		@response_5 = response_5
		
		if @response_5 == "1"
			@response_5 = "5a"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5a"
		elsif @response_5 == "2"
			@response_5 = "5b"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5b"
		end
			
		if @path5 == "/5a/q2s5#5a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_q2s4_index_path}#{@path5}" if @path5.present?
		elsif @path5 == "/5b/q2s5#5b"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_q2s4_index_path}#{@path5}" if @path5.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_q2s4_index_path}" if not @path5.present?
		end
	end
	
	def create_q2s3b(response_5)
	
		@response_5 =  response_5
		
		if @response_5 == "1"
			@response_5 = "5a"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5a"
		elsif @response_5 == "2"
			@response_5 = "5b"
			@path5 = "/" + "#{@response_5}" + "/q2s5#5b"
		end
			
		if @path5 == "/5a/q2s5#5a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3b_q2s4_index_path}#{@path5}" if @path5.present?
		elsif @path5 == "/5b/q2s5#5b"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3b_q2s4_index_path}#{@path5}" if @path5.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3b_q2s4_index_path}" if not @path5.present?
		end
	end
	
end
