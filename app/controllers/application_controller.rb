class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user,:signin,:authenticate_user

  def current_user
  	if session[:id].present?
  		@user = User.find(session[:id])
  	end
  end
  
  def signin(user)
  	session[:id] = user.id
  	redirect_to articles_path
  end

  def authenticate_user
  	if !current_user.present?
  		redirect_to new_login_path
  	end
  end
end
