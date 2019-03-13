class Q1Controller < ApplicationController
	def index
	
	  @articles = Article.all
	
	end
  
	def self.url_sub1(url)
		user_input = url[17..18]
		if user_input == '1c'  
			return "1c"
		elsif user_input == "1a" 
			return "1a"
		elsif user_input == '1b'  
			return "1b"
		end
	end
	
	def self.url_sub1a(url)
		user_input_sub1 = url[25..27]
		if user_input_sub1 == '1a1'  
			return "1a1"
		elsif user_input_sub1 == "1a2" 
			return "1a2"
		end
	end
	
	def self.url_sub1b(url)
		user_input_sub1a = url[35..37]
		if user_input_sub1a == "1b1"  
			return "1b1"
		elsif user_input_sub1a == "1b2" 
			return "1b2"
		end
	end
	def self.url_sub1c(url)
		user_input_sub1b = url[45..47]
		if user_input_sub1b == "1c1"  
			return "1c1"
		elsif user_input_sub1b == "1c2" 
			return "1c2"
		end
	end
	def self.url_sub1d(url)
		user_input_sub1c = url[55..57]
		if user_input_sub1c == "1d1"  
			return "1d1"
		elsif user_input_sub1c == "1d2" 
			return "1d2"
		end
	end
	def self.url_sub2(url)
		user_input_sub1d = url[65..66]
		if user_input_sub1d == "2a"  
			return "2a"
		elsif user_input_sub1d == "2b" 
			return "2b"
		end
	end
	def self.url_sub2a(url)
		user_input_sub2 = url[73..75]
		if user_input_sub2 == "2a1"  
			return "2a1"
		elsif user_input_sub2 == "2a2" 
			return "2a2"
		end
	end
	def self.url_sub3(url)
		user_input_sub2a = url[83..84]
		if user_input_sub2a == "3a"  
			return "3a"
		elsif user_input_sub2a == "3b" 
			return "3b"
		end
	end
	def self.url_sub3a(url)
		user_input_sub3 = url[110..112]
		raise user_input_sub3
		if user_input_sub3 == "3a1"  
			return "3a1"
		elsif user_input_sub3 == "3a2" 
			return "3a2"
		end
	end
  
	def create
	  
	  params.merge!(climb: rand(1..100)) if params[:climb].blank?
	  @climb = params[:climb]
	  
	  params.merge!(fall_outcome: rand(1..100)) if params[:fall_outcome].blank?
	  @fall_outcome = params[:fall_outcome]
	  
	  @response = params[:section_1_input]
	  
	  if @response == "1"
		@response = "1a"
		@path1 = "/" + "#{@response}" + "/q1s1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
	  elsif @response == "2"
		@response = "1b"
		@path1 = "/" + "#{@response}" + "/q1s1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
	  elsif @response == "3"
		@response = "1c"
		@path1 = "/" + "#{@response}" + "/q1s1"
	  end

	  
	  if @path1 == "/1a/q1s1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
		redirect_to "#{pathfinder_q1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1b/q1s1/?climb=#{@climb}&fall_outcome=#{@fall_outcome}"
		redirect_to "#{pathfinder_q1_index_path}#{@path1}" if @path1.present?
	  elsif @path1 == "/1c/q1s1"
		redirect_to "#{pathfinder_q1_index_path}#{@path1}" if @path1.present?
	  else
		redirect_to "#{pathfinder_q1_index_path}" if not @path1.present?
	  end  
	  
	end
	
end
