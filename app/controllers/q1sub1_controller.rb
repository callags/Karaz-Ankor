class Q1sub1Controller < ApplicationController
	def index
		
		params.merge(climb: rand(1..100)) if params[:climb].blank?
		@climb = params[:climb].to_i
		$climb = @climb
		
		params.merge(fall_outcome: rand(1..100)) if params[:fall_outcome].blank?
		@fall_outcome = params[:fall_outcome].to_i
		$fall_outcome = @fall_outcome
		
		@articles = Article.all
		
		url = request.path_info
		url_reset = pathfinder_quest1_index_path
		host = request.host	
	
	
		if url.include?('1a') 
			@user_input = "1a"
		elsif url.include?('1b')  
			@user_input = "1b"
		elsif url.include?('1c')  
			@user_input = "1c"
		else
			flash[:notice] = "Error, #{host}#{url} is not a valid URL"
			redirect_to url_reset
		end
		
	end
	
	def create
	  
	  params.merge!(bullet_hit: rand(1..100)) if params[:bullet_hit].blank?
	  @bullet_hit = params[:bullet_hit]
	  
	  params.merge!(bullet_success: rand(1..10)) if params[:bullet_success].blank?
	  @bullet_success = params[:bullet_success]
	  
	  params.merge!(recoil_success: rand(1..10)) if params[:recoil_success].blank?
	  @recoil_success = params[:recoil_success]
	  
	  params.merge!(axe_hit: rand(1..10)) if params[:axe_hit].blank?
	  @axe_hit = params[:axe_hit]
	  
	  params.merge!(axe_recoil: rand(1..10)) if params[:axe_recoil].blank?
	  @axe_recoil = params[:axe_recoil]
	  
	  @response_sub1 = params[:section_sub1_input]
	  
	  if @response_sub1 == "1"
		@response_sub1 = "1a1"
		@path1_sub1 = "/" + "#{@response_sub1}" + "/q1sub1a/?bullet_hit=#{@bullet_hit}"\
					  "&bullet_success=#{@bullet_success}" + "&recoil_success=#{@recoil_success}"\
					  "#input_sub1a"
	  elsif @response_sub1 == "2"
		@response_sub1 = "1a2"
		@path1_sub1 = "/" + "#{@response_sub1}" + "/q1sub1a/?axe_hit=#{@axe_hit}&axe_recoil="\
					  "#{@axe_recoil}#input_sub1a"
	  end
	  
	  
	  if @path1_sub1 == "/1a1/q1sub1a/?bullet_hit=#{@bullet_hit}&bullet_success=#{@bullet_success}"\
						"&recoil_success=#{@recoil_success}#input_sub1a"
		redirect_to "#{pathfinder_quest1_q1sub1_index_path}#{@path1_sub1}" if "#{@path1_sub1}".present?
	  elsif @path1_sub1 = "/1a2/q1sub1a/?axe_hit=#{@axe_hit}&axe_recoil=#{@axe_recoil}#input_sub1a"
		redirect_to "#{pathfinder_quest1_q1sub1_index_path}#{@path1_sub1}" if "#{@path1_sub1}".present?
	  end
	  
	end
	
	def show
		
	end
	
end
