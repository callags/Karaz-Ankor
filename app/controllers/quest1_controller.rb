class Quest1Controller < ApplicationController
	def index
	
	  @articles = Article.all
	
	end
	
	def create
	  
	  params.merge!(climb: rand(1..100)) if params[:climb].blank?
	  @climb = params[:climb]
	  
	  params.merge!(fall_outcome: rand(1..100)) if params[:fall_outcome].blank?
	  @fall_outcome = params[:fall_outcome]
	  
	  @response = params[:section_1_input]
	  
	  if @response == "1"
		@response = "1a"
		@path1 = "/" + "#{@response}" + "/q1sub1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
	  elsif @response == "2"
		@response = "1b"
		@path1 = "/" + "#{@response}" + "/q1sub1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
	  elsif @response == "3"
		@response = "1c"
		@path1 = "/" + "#{@response}" + "/q1sub1"
	  end

	  
	  if @path1 == "/1a/q1sub1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1b/q1sub1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1c/q1sub1"
		redirect_to "#{pathfinder_quest1_index_path}#{@path1}" if @path1.present?
	  else
		redirect_to "#{pathfinder_quest1_index_path}" if @path1.present?
	  end  
	  
	end
	
end
