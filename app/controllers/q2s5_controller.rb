class Q2s5Controller < ApplicationController

	def index
	
		@articles = Article.all
		
		url = request.path

		@user_input = Q2Controller.url_sub1(url)
		@user_input_sub1 = Q2Controller.url_sub2(url)
		@user_input_sub2 = Q2Controller.url_sub3(url)
		if @user_input_sub2 == "3a"
			@user_input_sub3a = Q2Controller.url_sub3a(url)
			@user_input_sub3b = Q2Controller.url_sub3b(url)
		end
		@user_input_sub3 = Q2Controller.url_sub4(url)
		@user_input_sub4 = Q2Controller.url_sub5(url)
	end
end
