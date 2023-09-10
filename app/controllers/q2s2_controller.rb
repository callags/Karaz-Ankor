class Q2s2Controller < ApplicationController
	def index
	
		@articles = Article.all
		
		url = request.path

		@user_input = Q2Controller.url_sub1(url)
		@user_input_sub1 = Q2Controller.url_sub2(url)

	end
	
	def create
	
		params.merge!(bullet_hit: rand(1..100)) if params[:bullet_hit].blank?
		@bullet_hit = params[:bullet_hit]
		
		params.merge!(sound: rand(1..100)) if params[:sound].blank?
		@sound = params[:sound]
		
		@response_3 = params[:section_3_input]
		
		if @response_3 == "1"
			@response_3 = "3a"
			@path3 = "/" + "#{@response_3}" + "/q2s3/?bullet_hit=#{@bullet_hit}&sound=#{@sound}#3a"
		elsif @response_3 == "2"
			@response_3 = "3b"
			@path3 = "/" + "#{@response_3}" + "/q2s3#3b"
		end
		
		if @path3 == "/3a/q2s3/?bullet_hit=#{@bullet_hit}&sound=#{@sound}#3a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_index_path}#{@path3}" if @path3.present?
		elsif @path3 == "/3b/q2s3#3b" 
			redirect_to "#{pathfinder_q2_q2s1_q2s2_index_path}#{@path3}" if @path3.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_index_path}" if not @path3.present?
		end
	end
end