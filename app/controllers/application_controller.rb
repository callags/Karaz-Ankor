class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  
  protected
  
  def authenticate_user!
	redirect_to :root unless current_user.admin?
  end
  
end
