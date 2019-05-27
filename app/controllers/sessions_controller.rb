class SessionsController < Devise::SessionsController
	before_action :geolocation_auth
end
