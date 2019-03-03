class Q1sub1aController < ApplicationController

	def index
	
		params.merge(bullet_hit: rand(1..100)) if params[:bullet_hit].blank?
		@bullet_hit = params[:bullet_hit].to_i
		$bullet_hit = @bullet_hit
		
		params.merge(bullet_success: rand(1..10)) if params[:bullet_success].blank?
		@bullet_success = params[:bullet_success].to_i
		$bullet_success = @bullet_success
		
		params.merge(recoil_success: rand(1..10)) if params[:recoil_success].blank?
		@recoil_success = params[:recoil_success].to_i
		$recoil_success = @recoil_success
		
		params.merge(axe_hit: rand(1..10)) if params[:axe_hit].blank?
		@axe_hit = params[:axe_hit].to_i
		$axe_hit = @axe_hit
		
		params.merge(axe_recoil: rand(1..10)) if params[:axe_recoil].blank?
		@axe_recoil = params[:axe_recoil].to_i
		$axe_recoil = @axe_recoil
		
		@articles = Article.all
		
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
	
		if url.include?('1a1') 
			@user_input_sub1 = "1a1"
			if url.include?('1a') 
				@user_input = "1a"
			elsif url.include?('1b')  
				@user_input = "1b"
			end
		elsif url.include?('1a2') 
			@user_input_sub1 = "1a2"
			if url.include?('1a') 
				@user_input = "1a"
			elsif url.include?('1b')  
				@user_input = "1b"
			end
		
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset

		end
	end

	def show
	
	end
	
	def create
	
	  @response_sub1a = params[:section_sub1a_input]
		
	  if @response_sub1a == "1"
		@response_sub1a = "1b1"
		@path1_sub1a = "/" + "#{@response_sub1a}" + "/q1sub1b#input_sub1b"
	  elsif @response_sub1a == "2"
	    @response_sub1a = "1b2"
		@path1_sub1a = "/" + "#{@response_sub1a}" + "/q1sub1b#input_sub1b"
	  end
	  
	  
	  
	  if @path1_sub1a == "/1b1/q1sub1b#input_sub1b"
		redirect_to "#{pathfinder_quest1_q1sub1_q1sub1a_index_path}#{@path1_sub1a}" if "#{@path1_sub1a}".present?
	  elsif @path1_sub1a == "/1b2/q1sub1b#input_sub1b"
		redirect_to "#{pathfinder_quest1_q1sub1_q1sub1a_index_path}#{@path1_sub1a}" if "#{@path1_sub1a}".present?
	  end
	end
	
end
