class Q2s3aController < ApplicationController

	def index
	
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
		
		if @response_4 == "1"
			@response_4 = "4a"
			@path4 = "/" + "#{@response_4}" + "/q2s4#4a"
		elsif @response_4 == "2"
			@response_4 = "4b"
			@path4 = "/" + "#{@response_4}" + "/q2s4#4b"
		end
		
		if @path4 == "/4a/q2s4#4a"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_index_path}#{@path4}" if @path4.present?
		elsif @path4 == "/4b/q2s4#4b"
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_index_path}#{@path4}" if @path4.present?
		else
			redirect_to "#{pathfinder_q2_q2s1_q2s2_q2s3_q2s3a_index_path}" if not @path4.present?
		end
	end
end
