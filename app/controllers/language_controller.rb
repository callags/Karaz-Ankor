class LanguageController < ApplicationController

	def index
	@articles = Articles.all
	end
end
