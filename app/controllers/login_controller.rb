class LoginController < ApplicationController
	def new
		flash[:danger]= ""
	end

	def create
		user= User.find_by(username: params[:username]) 
		
		if user && user.authenticate(params[:password])
			signin(user)
		else
			flash[:danger] ="wrong password"
			render :new
		end	
	
	end

	def destroy
		session[:id] = nil
		redirect_to new_login_path	
	end

end