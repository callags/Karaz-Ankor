class Q1s1aController < ApplicationController
	
	
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
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		
	end
	
	def create
	
	  @response_sub1a = params[:section_sub1a_input]
		
	  if @response_sub1a == "1"
		@response_sub1a = "1b1"
		@path1_sub1a = "/" + "#{@response_sub1a}" + "/q1s1b#1b"
	  elsif @response_sub1a == "2"
	    @response_sub1a = "1b2"
		@path1_sub1a = "/" + "#{@response_sub1a}" + "/q1s1b#1b"
	  end
	  
	  
	  
	  if @path1_sub1a == "/1b1/q1s1b#1b"
		redirect_to "#{pathfinder_q1_q1s1_q1s1a_index_path}#{@path1_sub1a}" if "#{@path1_sub1a}".present?
	  elsif @path1_sub1a == "/1b2/q1s1b#1b"
		redirect_to "#{pathfinder_q1_q1s1_q1s1a_index_path}#{@path1_sub1a}" if "#{@path1_sub1a}".present?
	  end
	end
	
end
