class ScriptController < ApplicationController
	def call_script
		system('/home/ncs/./slowloris.sh')
		render 'script/index'
	end 

	def index
	end
	
end