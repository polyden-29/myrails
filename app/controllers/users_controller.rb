class UsersController < ApplicationController
	def new
		@user=User.new
	end
	
	def create
		# @user = User.new(user_params)
		# u = params[:user]
		# if u[:password] == u[:comfirm_password]
			
		# 	if @user.save
		# 		redirect_to new_login_path
		# 	else
		# 		render :new	
		# 	end
		# end
		#byebug
		@user = User.new(user_params)
		if @user.save	
			redirect_to new_login_path
		else
			render :new	
 		end
	end
	
	def edit
		#@user = User.find(params[:id])

	end
	
	def show
		@user=User.find(params[:id])
	end
	
	private
		def user_params
			params.require(:user).permit(:name,:username,:password,:password_confirmation,:email,:avatar)
		end
end