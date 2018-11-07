class ScriptController < ApplicationController
	def call_script
		system('/home/ncs/./slowloris.sh')
		render 'script/index'
	end 

	def call_script2
		remote_ip = request.ip
		#system("scp /home/ncs/Thorgrim.sh root@#{remote_ip}:/root/") 
		system("ssh -t root@#{remote_ip} DISPLAY=:0 ./Thorgrim.sh")
		render 'script/index' 
	end

	def index
	end
	
end