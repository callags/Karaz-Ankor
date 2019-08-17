class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  
  protected
  
  def authenticate_user!
	if (redirect_to :root if current_user.nil? || !current_user.admin?)
		url = request.path_info
		host = request.host
		flash[:notice] = "Error, #{host}#{url} is not a valid URL"
	end 
  end
  
end
