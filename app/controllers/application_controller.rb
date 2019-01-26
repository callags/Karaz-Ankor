class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  
  protected
  
  def authenticate_admin!
	authenticate_user!
	redirect_to :root, status: :unauthorized unless current_user.admin?
  end
	
end
