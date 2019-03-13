class Q1sub3aController < ApplicationController
	def index
		@articles = Article.all
		
		url = request.path
		
		@user_input = Quest1Controller.url_sub1(url)
		@user_input_sub1 = Quest1Controller.url_sub1a(url)
		@user_input_sub1a = Quest1Controller.url_sub1b(url)
		@user_input_sub1b = Quest1Controller.url_sub1c(url)
		@user_input_sub1c = Quest1Controller.url_sub1d(url)
		@user_input_sub1d = Quest1Controller.url_sub2(url)
		@user_input_sub2 = Quest1Controller.url_sub2a(url)
		@user_input_sub2a = Quest1Controller.url_sub3(url)
		@user_input_sub3 = Quest1Controller.url_sub3a(url)
		raise @user_input_sub3
	end
end
