class Q1s3bController < ApplicationController

	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Q1Controller.url_sub1(url)
		@user_input_sub1 = Q1Controller.url_sub1a(url)
		@user_input_sub1a = Q1Controller.url_sub1b(url)
		@user_input_sub1b = Q1Controller.url_sub1c(url)
		@user_input_sub1c = Q1Controller.url_sub1d(url)
		@user_input_sub1d = Q1Controller.url_sub2(url)
		@user_input_sub2 = Q1Controller.url_sub2a(url)
		@user_input_sub2a = Q1Controller.url_sub3(url)
		@user_input_sub3 = Q1Controller.url_sub3b(url)
	end
end
