class PathfinderController < ApplicationController

	def index
		if params[:q].present?
			@input = "#{params[:q]}" 
		end
	end
end
