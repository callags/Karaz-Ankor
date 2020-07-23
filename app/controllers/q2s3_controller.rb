class Q2s3Controller < ApplicationController

	def index
	
		params.merge(bullet_hit: rand(1..100)) if params[:bullet_hit].blank?
		@bullet_hit = params[:bullet_hit].to_i
		session[:bullet_hit] = @bullet_hit
		
		params.merge(sound: rand(1..100)) if params[:sound].blank?
		@sound = params[:sound].to_i
		session[:sound] = @sound
		
		@articles = Article.all
		
		url = request.path
		@user_input = Q2Controller.url_sub1(url)
		@user_input_sub1 = Q2Controller.url_sub2(url)
		@user_input_sub2 = Q2Controller.url_sub3(url)		
		if @user_input_sub2 == "3a"
			@user_input_sub3a = Q2Controller.url_sub3a(url)
		end
	end
	
	def create
		
		@response_4 = params[:section_4_input]
		if @response_4.present?
			create_4(@response_4)
		end
		
		@response_3a = params[:section_3a_input]
		if @response_3a.present?
			create_3a(@response_3a)
		end
		
		@response_3b = params[:section_3b_input]
		if @response_3b.present?
			create_3b(@response_3b)
		end
		
	end

	def create_3a(response_3a)
		
		@response_3a = response_3a
		if @response_3a == "1"
			@response_3a = "3a1"
			@path3a = "/" + "#{@response_3a}" + "/q2s3a#3a1"
		elsif @response_3a == "2"
			@response_3a = "3a2"
			@path3a = "/" + "#{@response_3a}" + "/q2s3a#3a2"
		end

		if @path3a == "/3a1/q2s3a#3a1"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path3a}" if @path3a.present?
		elsif @path3a == "/3a2/q2s3a#3a2"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path3a}" if @path3a.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}" if not @path3a.present?
		end
	end

	def create_3b(response_3b)
		
		@response_3b = response_3b
		
		if @response_3b == "1"
			@response_3b = "3b1"
			@path3b = "/" + "#{@response_3b}" + "/q2s3b#3b1"
		elsif @response_3b == "2"
			@response_3b = "3b2"
			@path3b = "/" + "#{@response_3b}" + "/q2s3b#3b2"
		end
		
		if @path3b == "/3b1/q2s3b#3b1"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path3b}" if @path3b.present?
		elsif @path3b == "/3b2/q2s3b#3b2"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path3b}" if @path3b.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}" if not @path3b.present?
		end
		
	end
	
	def create_4(response_4)
	
		@response_4 = response_4
		
		if @response_4 == "1"
			@response_4 = "4a"
			@path4 = "/" + "#{@response_4}" + "/q2s4#4a"
		elsif @response_4 == "2"
			@response_4 = "4b"
			@path4 = "/" + "#{@response_4}" + "/q2s4#4b"
		end
		
		if @path4 == "/4a/q2s4#4a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path4}" if @path4.present?
		elsif @path4 == "/4b/q2s4#4b"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}#{@path4}" if @path4.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_index_path}" if not @path4.present?
		end
		
	end
end
