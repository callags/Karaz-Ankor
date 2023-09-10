class RegistrationsController < Devise::RegistrationsController
	
	def create
		@response = params[:"g-recaptcha-response"]
		if @response == nil
			flash[:notice] = "Please click on captcha form!"
			redirect_back(fallback_location: new_user_registration_path)
		else
			flash[:notice] = "You signed up successfully!"
			redirect_to root_path
		end
	end
	def index

	end
end 