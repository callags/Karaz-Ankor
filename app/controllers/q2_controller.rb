class Q2Controller < ApplicationController
	def index
		@articles = Article.all
	end
	
	def self.url_sub1(url)
		user_input = url[17..18]
		if user_input == '1a' 
			return "1a"
		elsif user_input == '1b'  
			return "1b"
		end
	end
	
	def self.url_sub2(url)
		user_input_sub1 = url[25..27]
		if user_input_sub1 == '1a1'  
			return "1a1"
		elsif user_input_sub1 == "1b1" 
			return "1b1"
		end
	end
	
	def self.url_sub3(url)
		user_input_sub2 = url[34..35]
		if user_input_sub2 == "3a"  
			return "3a"
		elsif user_input_sub2 == "3b" 
			return "3b"
		end
	end
	
	def self.url_sub3a(url)
		user_input_sub3a = url[42..44]
		if user_input_sub3a == "3a1"
			return "3a1"
		elsif user_input_sub3a == "3a2"
			return "3a2"
		end
	end
	
	def self.url_sub3b(url)
		user_input_sub3b = url[42..44]
		if user_input_sub3b == "3b1"
			return "3b1"
		elsif user_input_sub3b == "3b2"
			return "3b2"
		end
	end
	
	def self.url_sub4(url)
		user_input_sub3 = url[42..43]
		if user_input_sub3 == "4a"
			return "4a"
		elsif user_input_sub3 == "4b"
			return "4b"
		end
	end
	
	def self.url_sub4_1(url)
		user_input_sub3 = url[52..53]
		if user_input_sub3 == "4a"
			return "4a"
		elsif user_input_sub3 == "4b"
			return "4b"
		end
	end
	
	def self.url_sub5(url)
		user_input_sub4 = url[60..61]
		if user_input_sub4 == "5a"
			return "5a"
		elsif user_input_sub4 == "5b"
			return "5b"
		end
	end
	
	def self.url_sub5_1(url)
		user_input_sub4 = url[50..51]
		if user_input_sub4 == "5a"
			return "5a"
		elsif user_input_sub4 == "5b"
			return "5b"
		end
	end
	
	def create
	
		@response = params[:section_1_input]
		
		if @response == "1"
			@response = "1a"
			@path1 = "/" + "#{@response}" + "/q2s1#1a"
		elsif @response == "2"
			@response = "1b"
			@path1 = "/" + "#{@response}" + "/q2s1#1b"
		end
		
		if @path1 == "/1a/q2s1#1a"
			redirect_to "#{pathfinder_q2_index_path}#{@path1}" if @path1.present?
		elsif @path1 = "/1b/q2s1#1b"
			redirect_to "#{pathfinder_q2_index_path}#{@path1}" if @path1.present?
		else
			redirect_to "#{pathfinder_q2_index_path}" if not @path1.present?
		end
		
	end
end
